
cdef class ProgressBar(Control):

    def __init__(self):
        self.control = <uiControl *>uiNewProgressBar()

    @property
    def value(self):
        return uiProgressBarValue(<uiProgressBar *>self.control)

    @value.setter
    def value(self, n: int):
        uiProgressBarSetValue(<uiProgressBar *>self.control, n)
