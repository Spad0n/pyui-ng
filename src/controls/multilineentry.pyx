
cdef class BaseMultilineEntry(Control):

    @property
    def text(self) -> str:
        return uiMultilineEntryText(<uiMultilineEntry *>self.control).decode('utf-8')

    @text.setter
    def text(self, text: str):
        uiMultilineEntrySetText(<uiMultilineEntry *>self.control, text.encode('utf-8'))

    def append(self, text: str):
        uiMultilineEntryAppend(<uiMultilineEntry *>self.control, text.encode('utf-8'))

    def on_changed(self, f):
        uiMultilineEntryOnChanged(<uiMultilineEntry *>self.control, BaseMultilineEntry.callback, <void *>f)

    @property
    def read(self) -> bool:
        return bool(uiMultilineEntryReadOnly(<uiMultilineEntry *>self.control))

    @read.setter
    def read(self, read: bool):
        uiMultilineEntrySetReadOnly(<uiMultilineEntry *>self.control, int(read))

    @staticmethod
    cdef BaseMultilineEntry from_ptr(uiMultilineEntry *entry):
        cdef BaseMultilineEntry wrapper = BaseMultilineEntry.__new__(BaseMultilineEntry)
        wrapper.control = <uiControl *>entry
        return wrapper

    @staticmethod
    cdef void callback(uiMultilineEntry *entry, void *f):
        (<object>f)(BaseMultilineEntry.from_ptr(entry))


cdef class MultilineEntry(BaseMultilineEntry):
    def __init__(self):
        self.control = <uiControl *>uiNewMultilineEntry()

cdef class NonWrappingMultilineEntry(BaseMultilineEntry):
    def __init__(self):
        self.control = <uiControl *>uiNewNonWrappingMultilineEntry()
