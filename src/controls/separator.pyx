
cdef class HorizontalSeparator(Control):
    def __init__(self):
        self.control = <uiControl *>uiNewHorizontalSeparator()

cdef class VerticalSeparator(Control):
    def __init__(self):
        self.control = <uiControl *>uiNewVerticalSeparator()
