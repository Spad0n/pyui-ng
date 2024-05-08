
cdef class Tab(Control):
    def __init__(self):
        self.control = <uiControl *>uiNewTab()

    def append(self, name: str, c: Control):
        uiTabAppend(<uiTab *>self.control, name.encode('utf-8'), c.control)

    def insert_at(self, name: str, index: int, c: Control):
        uiTabInsertAt(<uiTab *>self.control, name.encode('utf-8'), index, c.control)

    def delete(self, index: int):
        uiTabDelete(<uiTab *>self.control, index)

    def __len__(self) -> int:
        return uiTabNumPages(<uiTab *>self.control)

    def get_margined(self, index: int) -> bool:
        return bool(uiTabMargined(<uiTab *>self.control, index))

    def set_margined(self, index: int, margined: bool):
        uiTabSetMargined(<uiTab *>self.control, index, int(margined))
