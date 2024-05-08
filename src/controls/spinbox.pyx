
cdef class Spinbox(Control):

    def __init__(self, minimum: int, maximum: int):
        self.control = <uiControl *>uiNewSpinbox(minimum, maximum)

    @property
    def value(self) -> int:
        return uiSpinboxValue(<uiSpinbox *>self.control)

    @value.setter
    def value(self, value: int):
        uiSpinboxSetValue(<uiSpinbox *>self.control, value)

    def on_changed(self, f):
        uiSpinboxOnChanged(<uiSpinbox *>self.control, Spinbox.callback, <void *>f)

    @staticmethod
    cdef Spinbox from_ptr(uiSpinbox *spinbox):
        cdef Spinbox wrapper = Spinbox.__new__(Spinbox)
        wrapper.control = <uiControl *>spinbox
        return wrapper
    
    @staticmethod
    cdef void callback(uiSpinbox *spinbox, void *f):
        (<object>f)(Spinbox.from_ptr(spinbox))
