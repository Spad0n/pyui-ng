# TODO read the documentation

cpdef enum SortIndicator:
    None = 0
    Ascending = 1
    Descending = 2

cpdef enum TableSelectionMode:
    None = 0
    ZeroOrOne = 1
    One = 2
    ZeroOrMany = 3

cdef class TableModel:
    cdef uiTableModel* model

    def __init__(self, handler):
        self.model = uiNewTableModel(handler.handler)
