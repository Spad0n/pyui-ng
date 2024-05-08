include "controls/control.pyx"
include "menus.pyx"

cdef class UI:
    cdef uiInitOptions options

    def __cinit__(self):
        self.options.Size = 0
        cdef const char* err = uiInit(&self.options)
        if err is not NULL:
            raise ValueError(err)

    def main(self):
        uiMain()

    def stop(self):
        uiQuit()

    def __dealloc__(self):
        uiUninit()
