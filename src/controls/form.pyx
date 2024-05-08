
cdef class Form(Control):

    def __init__(self):
        self.control = <uiControl *>uiNewForm()

    def append(self, label: str, c: Control, stretchy = False):
        uiFormAppend(<uiForm *>self.control, label.encode('utf-8'), c.control, int(stretchy))

    #@property
    def __len__(self) -> int:
        return uiFormNumChildren(<uiForm*>self.control)

    def delete(self, index: int):
        uiFormDelete(<uiForm *>self.control, index)

    @property
    def padded(self) -> bool:
        return bool(uiFormPadded(<uiForm *>self.control))

    @padded.setter
    def padded(self, toggle: bool):
        uiFormSetPadded(<uiForm *>self.control, int(toggle))
