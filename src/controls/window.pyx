
cdef class Window(Control):
    child: bool

    def __init__(self, title: str, width: int, height: int, hasMenubar = False):
        self.control = <uiControl *>uiNewWindow(title.encode('utf-8'), width, height, int(hasMenubar))
        self.child = False
        if hasMenubar:
            uiOnShouldQuit(Window.callback_menu, <void*>self.control)

    @property
    def title(self) -> str:
        return uiWindowTitle(<uiWindow *>self.control).decode('utf-8')

    @title.setter
    def title(self, title: str):
        uiWindowSetTitle(<uiWindow *>self.control, title.encode('utf-8'))

    def get_margined(self) -> bool:
        return bool(uiWindowMargined(<uiWindow *>self.control))

    def set_margined(self, margined: bool):
        uiWindowSetMargined(<uiWindow *>self.control, int(margined))

    @property
    def borderless(self) -> bool:
        return bool(uiWindowBorderless(<uiWindow *>self.control))

    @property
    def fullscreen(self) -> bool:
        return bool(uiWindowFullscreen(<uiWindow *>self.control))

    @fullscreen.setter
    def fullscreen(self, fullscreen: bool):
        uiWindowSetFullscreen(<uiWindow *>self.control, int(fullscreen))

    @borderless.setter
    def borderless(self, borderless: bool):
        uiWindowSetBorderless(<uiWindow *>self.control, int(borderless))

    def on_position_changed(self, f):
        uiWindowOnPositionChanged(<uiWindow *>self.control, Window.callback_void, <void *>f)

    def on_contentsize_changed(self, f):
        uiWindowOnContentSizeChanged(<uiWindow *>self.control, Window.callback_void, <void *>f)

    def set_child(self, value: Control):
        if not self.child:
            uiWindowSetChild(<uiWindow *>self.control, value.control)
            self.child = True
        else:
            raise Exception("window can only have one child widget at a time.")

    def on_close(self, f):
        uiWindowOnClosing(<uiWindow *>self.control, Window.callback_onclosed, <void*>f)

    @property
    def focused(self) -> bool:
        return bool(uiWindowFocused(<uiWindow *>self.control))

    def on_focus_changed(self, f):
        uiWindowOnFocusChanged(<uiWindow *>self.control, Window.callback_void, <void*>f)

    @property
    def resizable(self) -> bool:
        return bool(uiWindowResizeable(<uiWindow *>self.control))

    @resizable.setter
    def resizable(self, resizable: bool):
        uiWindowSetResizeable(<uiWindow *>self.control, int(resizable))

    @staticmethod
    cdef Window from_ptr(uiWindow *window):
        cdef Window wrapper = Window.__new__(Window)
        wrapper.control = <uiControl *>window
        return wrapper

    @staticmethod
    cdef int callback_onclosed(uiWindow *window, void *f) noexcept:
        cdef Window obj = Window.from_ptr(window)
        obj.destroy()
        return (<object>f)(obj)

    @staticmethod
    cdef void callback_void(uiWindow *window, void *f) noexcept:
        (<object>f)(Window.from_ptr(window))

    @staticmethod
    cdef int callback_menu(void *window) noexcept:
        Window.from_ptr(<uiWindow *>window).destroy()
        uiQuit()
        return 0
