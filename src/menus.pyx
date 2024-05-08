
cdef class MenuItem:
    cdef uiMenuItem* item

    def __cinit__(self):
        self.item = NULL

    def enable(self):
        uiMenuItemEnable(self.item)

    def disable(self):
        uiMenuItemDisable(self.item)

    def on_click(self, f):
        uiMenuItemOnClicked(self.item, MenuItem.callback, <void*>f)

    def item_checked(self) -> int:
        return uiMenuItemChecked(self.item)

    def set_checked(self, check: bool):
        uiMenuItemSetChecked(self.item, int(check))

    @staticmethod
    cdef MenuItem from_ptr(uiMenuItem *item):
        cdef MenuItem wrapper = MenuItem()
        wrapper.item = item
        return wrapper

    @staticmethod
    cdef void callback(uiMenuItem *sender, uiWindow *window, void *f):
        (<object>f)(MenuItem.from_ptr(sender), Window.from_ptr(window))

cdef class Menu:
    cdef uiMenu* menu

    def __cinit__(self, name: str):
        self.menu = uiNewMenu(name.encode('utf-8'))

    def append_item(self, item_name: str):
        return MenuItem.from_ptr(uiMenuAppendItem(self.menu, item_name.encode('utf-8')))

    def append_check_item(self, item_name: str):
        return MenuItem.from_ptr(uiMenuAppendCheckItem(self.menu, item_name.encode('utf-8')))

    def append_quit_item(self):
        return MenuItem.from_ptr(uiMenuAppendQuitItem(self.menu))

    def append_preferences(self):
        return MenuItem.from_ptr(uiMenuAppendPreferencesItem(self.menu))

    def append_about_item(self):
        return MenuItem.from_ptr(uiMenuAppendAboutItem(self.menu))

    def append_separator(self):
        uiMenuAppendSeparator(self.menu)
