
cdef class Label(Control):
    def __init__(self, text: str):
        self.control = <uiControl *>uiNewLabel(text.encode('utf-8'))

    @property
    def text(self) -> str:
        return uiLabelText(<uiLabel *>self.control).decode('utf-8')

    @text.setter
    def text(self, text: str):
        uiLabelSetText(<uiLabel *>self.control, text.encode('utf-8'))

