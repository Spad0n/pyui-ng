cpdef enum Align:
    Fill = 0
    Start = 1
    Center = 2
    End = 3

cpdef enum At:
    Leading = 0
    Top = 1
    Trailing = 2
    Bottom = 3

cdef class Grid(Control):

    def __init__(self):
        self.control = <uiControl *>uiNewGrid()

    def append(self, c: Control, left: int, top: int, xspan: int, yspan: int, hexpand: int, halign: Align, vexpand: int, valign: Align):
        uiGridAppend(<uiGrid *>self.control, c.control, left, top, xspan, yspan, hexpand, halign, vexpand, valign)

    def insert_at(self, c: Control, existing: Control, at: At, xspan: int, yspan: int, hexpand: int, halign: Align, vexpand: int, valign: Align):
        uiGridInsertAt(<uiGrid *>self.control, c.control, existing.control, at, xspan, yspan, hexpand, halign, vexpand, valign)

    @property
    def padded(self) -> bool:
        return bool(uiGridPadded(<uiGrid *>self.control))

    @padded.setter
    def padded(self, padded: bool):
        uiGridSetPadded(<uiGrid *>self.control, int(padded))
