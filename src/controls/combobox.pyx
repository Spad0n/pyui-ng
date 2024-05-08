
cdef class Combobox(Control):

    def __init__(self):
        self.control = <uiControl *>uiNewCombobox()

    def append(self, text: str):
        uiComboboxAppend(<uiCombobox *>self.control, text.encode('utf-8'))

    def insert_at(self, index: int, text: str):
        uiComboboxInsertAt(<uiCombobox *>self.control, index, text.encode('utf-8'))

    def delete(self, index: int):
        uiComboboxDelete(<uiCombobox *>self.control, index)

    def clear(self):
        uiComboboxClear(<uiCombobox *>self.control)

    def __len__(self) -> int:
        return uiComboboxNumItems(<uiCombobox *>self.control)

    @property
    def selected(self) -> int:
        return uiComboboxSelected(<uiCombobox *>self.control)

    @selected.setter
    def selected(self, index: int):
        uiComboboxSetSelected(<uiCombobox *>self.control, index)

    def on_selected(self, f):
        uiComboboxOnSelected(<uiCombobox *>self.control, Combobox.callback, <void *>f)

    @staticmethod
    cdef Combobox from_ptr(uiCombobox *combobox):
        cdef Combobox wrapper = Combobox.__new__(Combobox)
        wrapper.control = <uiControl *>combobox
        return wrapper

    @staticmethod
    cdef void callback(uiCombobox *combobox, void *f):
        (<object>f)(Combobox.from_ptr(combobox))
