
cdef class BaseEntry(Control):

    @property
    def text(self) -> str:
        return uiEntryText(<uiEntry *>self.control).decode('utf-8')

    @text.setter
    def text(self, text: str):
        uiEntrySetText(<uiEntry *>self.control, text.encode('utf-8'))

    def on_changed(self, f):
        uiEntryOnChanged(<uiEntry *>self.control, BaseEntry.callback, <void *>f)

    @property
    def read(self) -> bool:
        return bool(uiEntryReadOnly(<uiEntry *>self.control))

    @read.setter
    def read(self, read: bool):
        uiEntrySetReadOnly(<uiEntry *>self.control, int(read))

    @staticmethod
    cdef BaseEntry from_ptr(uiEntry *entry):
        cdef BaseEntry wrapper = BaseEntry.__new__(BaseEntry)
        wrapper.control = <uiControl *>entry
        return wrapper

    @staticmethod
    cdef void callback(uiEntry *entry, void *f) noexcept:
        (<object>f)(BaseEntry.from_ptr(entry))


cdef class Entry(BaseEntry):
    def __init__(self):
        self.control = <uiControl *>uiNewEntry()

cdef class PasswordEntry(BaseEntry):
    def __init__(self):
        self.control = <uiControl *>uiNewPasswordEntry()

cdef class SearchEntry(BaseEntry):
    def __init__(self):
        self.control = <uiControl *>uiNewSearchEntry()
