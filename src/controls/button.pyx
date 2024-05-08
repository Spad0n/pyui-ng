
cdef class Button(Control):
    def __init__(self, text: str):
        self.control = <uiControl *>uiNewButton(text.encode('utf-8'))

    @property
    def text(self) -> str:
        return uiButtonText(<uiButton *>self.control).decode('utf-8')

    @text.setter
    def text(self, text: str):
        uiButtonSetText(<uiButton *>self.control, text.encode('utf-8'))

    def on_click(self, f):
        uiButtonOnClicked(<uiButton *>self.control, Button.callback, <void*>f)

    @staticmethod
    cdef Button from_ptr(uiButton *button):
        cdef Button wrapper = Button.__new__(Button)
        wrapper.control = <uiControl *>button
        return wrapper

    @staticmethod
    cdef void callback(uiButton *button, void *f):
        (<object>f)(Button.from_ptr(button))

