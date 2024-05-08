
cdef class DateTimePicker(Control):

    def __init__(self):
        self.control = <uiControl *>uiNewDateTimePicker()

cdef class DatePicker(Control):

    def __init__(self):
        self.control = <uiControl *>uiNewDatePicker()

cdef class TimePicker(Control):

    def __init__(self):
        self.control = <uiControl *>uiNewTimePicker()
