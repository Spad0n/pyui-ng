
cdef class Control:
    cdef uiControl* control

    def __cinit__(self):
        self.control = NULL

    def show(self):
        uiControlShow(self.control)

    def destroy(self):
        if self.control is not NULL:
            uiControlDestroy(self.control)
            self.control = NULL

# Container controls
include "window.pyx"
include "box.pyx"
include "tab.pyx"
include "group.pyx"
include "form.pyx"
include "grid.pyx"

# Static controls
include "label.pyx"
include "progressbar.pyx"
include "separator.pyx"
include "button.pyx"
include "checkbox.pyx"
include "combobox.pyx"
include "entry.pyx"
include "multilineentry.pyx"
include "radiobuttons.pyx"
include "slider.pyx"
include "spinbox.pyx"
include "datetimepicker.pyx"
