
cdef class Box(Control):
    def append(self, child: Control, stretchy = False):
        uiBoxAppend(<uiBox *>self.control, child.control, int(stretchy))

    def __len__(self) -> int:
        return uiBoxNumChildren(<uiBox *>self.control)

    @property
    def padded(self) -> bool:
        return bool(uiBoxPadded(<uiBox *>self.control))

    @padded.setter
    def padded(self, padded: bool):
        uiBoxSetPadded(<uiBox *>self.control, int(padded))

    def delete(self, index: int):
        uiBoxDelete(<uiBox *>self.control, index)

cdef class VerticalBox(Box):
    def __init__(self):
        self.control = <uiControl *>uiNewVerticalBox()

cdef class HorizontalBox(Box):
    def __init__(self):
        self.control = <uiControl *>uiNewHorizontalBox()
