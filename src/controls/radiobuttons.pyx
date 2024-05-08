
cdef class RadioButtons(Control):
    def __init__(self):
        self.control = <uiControl *>uiNewRadioButtons()

    def append(self, text: str):
        uiRadioButtonsAppend(<uiRadioButtons *>self.control, text.encode('utf-8'))

    @property
    def selected(self) -> int:
        return uiRadioButtonsSelected(<uiRadioButtons *>self.control)

    @selected.setter
    def selected(self, index: int):
        uiRadioButtonsSetSelected(<uiRadioButtons *>self.control, index)

    def on_selected(self, f):
        uiRadioButtonsOnSelected(<uiRadioButtons *>self.control, RadioButtons.callback, <void *>f)

    @staticmethod
    cdef RadioButtons from_ptr(uiRadioButtons *radiobuttons):
        cdef RadioButtons wrapper = RadioButtons.__new__(RadioButtons)
        wrapper.control = <uiControl *>radiobuttons
        return wrapper

    @staticmethod
    cdef void callback(uiRadioButtons *radiobuttons, void *f):
        (<object>f)(RadioButtons.from_ptr(radiobuttons))
