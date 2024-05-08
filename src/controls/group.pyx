
cdef class Group(Control):
    def __init__(self, title: str):
        self.control = <uiControl *>uiNewGroup(title.encode('utf-8'))

    @property
    def title(self) -> str:
        return uiGroupTitle(<uiGroup *>self.control).decode('utf-8')

    @title.setter
    def title(self, title: str):
        uiGroupSetTitle(<uiGroup *>self.control, title.encode('utf-8'))

    def set_child(self, c: Control):
        uiGroupSetChild(<uiGroup *>self.control, c.control)

    def get_margined(self) -> bool:
        return bool(uiGroupMargined(<uiGroup *>self.control))

    def set_margined(self, margined: bool) -> bool:
        uiGroupSetMargined(<uiGroup *>self.control, int(margined))
