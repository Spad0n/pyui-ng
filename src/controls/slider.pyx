
cdef class Slider(Control):

    def __init__(self, minimum: int, maximum: int):
        self.control = <uiControl *>uiNewSlider(minimum, maximum)

    @property
    def value(self) -> int:
        return uiSliderValue(<uiSlider *>self.control)

    @value.setter
    def value(self, value: int):
        uiSliderSetValue(<uiSlider *>self.control, value)

    @property
    def tooltip(self) -> bool:
        return bool(uiSliderHasToolTip(<uiSlider *>self.control))

    @tooltip.setter
    def tooltip(self, hasToolTip: bool):
        uiSliderSetHasToolTip(<uiSlider *>self.control, int(hasToolTip))

    def on_changed(self, f):
        uiSliderOnChanged(<uiSlider *>self.control, Slider.callback, <void *>f)

    def on_released(self, f):
        uiSliderOnReleased(<uiSlider *>self.control, Slider.callback, <void *>f)

    def set_range(self, minimum: int, maximum: int):
        uiSliderSetRange(<uiSlider *>self.control, minimum, maximum)

    @staticmethod
    cdef Slider from_ptr(uiSlider *slider):
        cdef Slider wrapper = Slider.__new__(Slider)
        wrapper.control = <uiControl *>slider
        return wrapper
    
    @staticmethod
    cdef void callback(uiSlider *slider, void *f):
        (<object>f)(Slider.from_ptr(slider))
