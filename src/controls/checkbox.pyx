
cdef class Checkbox(Control):

    def __init__(self, text: str):
        self.control = <uiControl *>uiNewCheckbox(text.encode('utf-8'))

    @property
    def text(self) -> str:
        return uiCheckboxText(<uiCheckbox *>self.control).decode('utf-8')

    @text.setter
    def text(self, text: str):
        uiCheckboxSetText(<uiCheckbox *>self.control, text.encode('utf-8'))

    def on_toggle(self, f):
        uiCheckboxOnToggled(<uiCheckbox *>self.control, Checkbox.callback, <void *>f)

    @property
    def checked(self) -> bool:
        return bool(uiCheckboxChecked(<uiCheckbox *>self.control))

    @checked.setter
    def checked(self, check: bool) -> bool:
        uiCheckboxSetChecked(<uiCheckbox *>self.control, int(check))

    @staticmethod
    cdef Checkbox from_ptr(uiCheckbox *checkbox):
        cdef Checkbox wrapper = Checkbox.__new__(Checkbox)
        wrapper.control = <uiControl *>checkbox
        return wrapper

    @staticmethod
    cdef void callback(uiCheckbox *checkbox, void *f):
        (<object>f)(Checkbox.from_ptr(checkbox))
