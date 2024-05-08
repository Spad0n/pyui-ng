from libc.stdint cimport uint32_t as uint32_t
from libc.stdint cimport uint64_t as uint64_t
from libc.stdint cimport uintptr_t as uintptr_t

cdef extern from "ui.h":
    enum pxdgen_anon_toplevel_0:
        uiUnderlineColorCustom = 0
        uiUnderlineColorSpelling = 1
        uiUnderlineColorGrammar = 2
        uiUnderlineColorAuxiliary = 3
    enum pxdgen_anon_toplevel_1:
        uiDrawLineJoinMiter = 0
        uiDrawLineJoinRound = 1
        uiDrawLineJoinBevel = 2
    enum pxdgen_anon_toplevel_2:
        uiWindowResizeEdgeLeft = 0
        uiWindowResizeEdgeTop = 1
        uiWindowResizeEdgeRight = 2
        uiWindowResizeEdgeBottom = 3
        uiWindowResizeEdgeTopLeft = 4
        uiWindowResizeEdgeTopRight = 5
        uiWindowResizeEdgeBottomLeft = 6
        uiWindowResizeEdgeBottomRight = 7
    enum pxdgen_anon_toplevel_3:
        uiTextWeightMinimum = 0
        uiTextWeightThin = 100
        uiTextWeightUltraLight = 200
        uiTextWeightLight = 300
        uiTextWeightBook = 350
        uiTextWeightNormal = 400
        uiTextWeightMedium = 500
        uiTextWeightSemiBold = 600
        uiTextWeightBold = 700
        uiTextWeightUltraBold = 800
        uiTextWeightHeavy = 900
        uiTextWeightUltraHeavy = 950
        uiTextWeightMaximum = 1000
    enum pxdgen_anon_toplevel_4:
        uiAtLeading = 0
        uiAtTop = 1
        uiAtTrailing = 2
        uiAtBottom = 3
    enum pxdgen_anon_toplevel_5:
        uiTableValueTypeString = 0
        uiTableValueTypeImage = 1
        uiTableValueTypeInt = 2
        uiTableValueTypeColor = 3
    enum pxdgen_anon_toplevel_6:
        uiUnderlineNone = 0
        uiUnderlineSingle = 1
        uiUnderlineDouble = 2
        uiUnderlineSuggestion = 3
    enum pxdgen_anon_toplevel_7:
        uiAttributeTypeFamily = 0
        uiAttributeTypeSize = 1
        uiAttributeTypeWeight = 2
        uiAttributeTypeItalic = 3
        uiAttributeTypeStretch = 4
        uiAttributeTypeColor = 5
        uiAttributeTypeBackground = 6
        uiAttributeTypeUnderline = 7
        uiAttributeTypeUnderlineColor = 8
        uiAttributeTypeFeatures = 9
    enum pxdgen_anon_toplevel_8:
        uiDrawTextAlignLeft = 0
        uiDrawTextAlignCenter = 1
        uiDrawTextAlignRight = 2
    enum pxdgen_anon_toplevel_9:
        uiExtKeyEscape = 1
        uiExtKeyInsert = 2
        uiExtKeyDelete = 3
        uiExtKeyHome = 4
        uiExtKeyEnd = 5
        uiExtKeyPageUp = 6
        uiExtKeyPageDown = 7
        uiExtKeyUp = 8
        uiExtKeyDown = 9
        uiExtKeyLeft = 10
        uiExtKeyRight = 11
        uiExtKeyF1 = 12
        uiExtKeyF2 = 13
        uiExtKeyF3 = 14
        uiExtKeyF4 = 15
        uiExtKeyF5 = 16
        uiExtKeyF6 = 17
        uiExtKeyF7 = 18
        uiExtKeyF8 = 19
        uiExtKeyF9 = 20
        uiExtKeyF10 = 21
        uiExtKeyF11 = 22
        uiExtKeyF12 = 23
        uiExtKeyN0 = 24
        uiExtKeyN1 = 25
        uiExtKeyN2 = 26
        uiExtKeyN3 = 27
        uiExtKeyN4 = 28
        uiExtKeyN5 = 29
        uiExtKeyN6 = 30
        uiExtKeyN7 = 31
        uiExtKeyN8 = 32
        uiExtKeyN9 = 33
        uiExtKeyNDot = 34
        uiExtKeyNEnter = 35
        uiExtKeyNAdd = 36
        uiExtKeyNSubtract = 37
        uiExtKeyNMultiply = 38
        uiExtKeyNDivide = 39
    enum pxdgen_anon_toplevel_10:
        uiSortIndicatorNone = 0
        uiSortIndicatorAscending = 1
        uiSortIndicatorDescending = 2
    enum pxdgen_anon_toplevel_11:
        uiModifierCtrl = 1
        uiModifierAlt = 2
        uiModifierShift = 4
        uiModifierSuper = 8
    enum pxdgen_anon_toplevel_12:
        uiTextItalicNormal = 0
        uiTextItalicOblique = 1
        uiTextItalicItalic = 2
    enum pxdgen_anon_toplevel_13:
        uiDrawBrushTypeSolid = 0
        uiDrawBrushTypeLinearGradient = 1
        uiDrawBrushTypeRadialGradient = 2
        uiDrawBrushTypeImage = 3
    enum pxdgen_anon_toplevel_14:
        uiTextStretchUltraCondensed = 0
        uiTextStretchExtraCondensed = 1
        uiTextStretchCondensed = 2
        uiTextStretchSemiCondensed = 3
        uiTextStretchNormal = 4
        uiTextStretchSemiExpanded = 5
        uiTextStretchExpanded = 6
        uiTextStretchExtraExpanded = 7
        uiTextStretchUltraExpanded = 8
    enum pxdgen_anon_toplevel_15:
        uiDrawLineCapFlat = 0
        uiDrawLineCapRound = 1
        uiDrawLineCapSquare = 2
    enum pxdgen_anon_toplevel_16:
        uiDrawFillModeWinding = 0
        uiDrawFillModeAlternate = 1
    enum pxdgen_anon_toplevel_17:
        uiTableSelectionModeNone = 0
        uiTableSelectionModeZeroOrOne = 1
        uiTableSelectionModeOne = 2
        uiTableSelectionModeZeroOrMany = 3
    enum pxdgen_anon_toplevel_18:
        uiAlignFill = 0
        uiAlignStart = 1
        uiAlignCenter = 2
        uiAlignEnd = 3
    enum pxdgen_anon_toplevel_19:
        uiForEachContinue = 0
        uiForEachStop = 1
    struct uiWindow:
        pass
    struct uiFontButton:
        pass
    struct uiBox:
        pass
    struct uiSpinbox:
        pass
    struct uiRadioButtons:
        pass
    struct uiCombobox:
        pass
    struct uiProgressBar:
        pass
    struct uiGrid:
        pass
    struct tm:
        pass
    struct uiEntry:
        pass
    struct uiTable:
        pass
    struct uiButton:
        pass
    struct uiTab:
        pass
    struct uiDateTimePicker:
        pass
    struct uiMenu:
        pass
    struct uiArea:
        pass
    struct uiDrawTextLayout:
        pass
    struct uiDrawContext:
        pass
    struct uiGroup:
        pass
    struct uiImage:
        pass
    struct uiSlider:
        pass
    struct uiForm:
        pass
    struct uiTableValue:
        pass
    struct uiMultilineEntry:
        pass
    struct uiCheckbox:
        pass
    struct uiTableModel:
        pass
    struct uiEditableCombobox:
        pass
    struct uiOpenTypeFeatures:
        pass
    struct uiLabel:
        pass
    struct uiAttribute:
        pass
    struct uiSeparator:
        pass
    struct uiDrawPath:
        pass
    struct uiMenuItem:
        pass
    struct uiAttributedString:
        pass
    struct uiColorButton:
        pass
    ctypedef unsigned int uiForEach
    #ctypedef uiInitOptions uiInitOptions
    struct uiInitOptions:
        size_t Size
    const char* uiInit(uiInitOptions*)
    void uiUninit()
    void uiFreeInitError(const char*)
    void uiMain()
    void uiMainSteps()
    int uiMainStep(int)
    void uiQuit()
    void uiQueueMain(void (*)(void*), void*)
    void uiTimer(int, int (*)(void*), void*)
    void uiOnShouldQuit(int (*)(void*), void*)
    void uiFreeText(char*)
    ctypedef uiControl uiControl
    struct uiControl:
        uint32_t Signature
        uint32_t OSSignature
        uint32_t TypeSignature
        void (*Destroy)(uiControl*)
        uintptr_t (*Handle)(uiControl*)
        uiControl* (*Parent)(uiControl*)
        void (*SetParent)(uiControl*, uiControl*)
        int (*Toplevel)(uiControl*)
        int (*Visible)(uiControl*)
        void (*Show)(uiControl*)
        void (*Hide)(uiControl*)
        int (*Enabled)(uiControl*)
        void (*Enable)(uiControl*)
        void (*Disable)(uiControl*)
    void uiControlDestroy(uiControl*)
    uintptr_t uiControlHandle(uiControl*)
    uiControl* uiControlParent(uiControl*)
    void uiControlSetParent(uiControl*, uiControl*)
    int uiControlToplevel(uiControl*)
    int uiControlVisible(uiControl*)
    void uiControlShow(uiControl*)
    void uiControlHide(uiControl*)
    int uiControlEnabled(uiControl*)
    void uiControlEnable(uiControl*)
    void uiControlDisable(uiControl*)
    uiControl* uiAllocControl(size_t, uint32_t, uint32_t, const char*)
    void uiFreeControl(uiControl*)
    void uiControlVerifySetParent(uiControl*, uiControl*)
    int uiControlEnabledToUser(uiControl*)
    void uiUserBugCannotSetParentOnToplevel(const char*)
    ctypedef uiWindow uiWindow
    char* uiWindowTitle(uiWindow*)
    void uiWindowSetTitle(uiWindow*, const char*)
    void uiWindowPosition(uiWindow*, int*, int*)
    void uiWindowSetPosition(uiWindow*, int, int)
    void uiWindowOnPositionChanged(uiWindow*, void (*)(uiWindow*, void*), void*)
    void uiWindowContentSize(uiWindow*, int*, int*)
    void uiWindowSetContentSize(uiWindow*, int, int)
    int uiWindowFullscreen(uiWindow*)
    void uiWindowSetFullscreen(uiWindow*, int)
    void uiWindowOnContentSizeChanged(uiWindow*, void (*)(uiWindow*, void*), void*)
    void uiWindowOnClosing(uiWindow*, int (*)(uiWindow*, void*), void*)
    void uiWindowOnFocusChanged(uiWindow*, void (*)(uiWindow*, void*), void*)
    int uiWindowFocused(uiWindow*)
    int uiWindowBorderless(uiWindow*)
    void uiWindowSetBorderless(uiWindow*, int)
    void uiWindowSetChild(uiWindow*, uiControl*)
    int uiWindowMargined(uiWindow*)
    void uiWindowSetMargined(uiWindow*, int)
    int uiWindowResizeable(uiWindow*)
    void uiWindowSetResizeable(uiWindow*, int)
    uiWindow* uiNewWindow(const char*, int, int, int)
    ctypedef uiButton uiButton
    char* uiButtonText(uiButton*)
    void uiButtonSetText(uiButton*, const char*)
    void uiButtonOnClicked(uiButton*, void (*)(uiButton*, void*), void*)
    uiButton* uiNewButton(const char*)
    ctypedef uiBox uiBox
    void uiBoxAppend(uiBox*, uiControl*, int)
    int uiBoxNumChildren(uiBox*)
    void uiBoxDelete(uiBox*, int)
    int uiBoxPadded(uiBox*)
    void uiBoxSetPadded(uiBox*, int)
    uiBox* uiNewHorizontalBox()
    uiBox* uiNewVerticalBox()
    ctypedef uiCheckbox uiCheckbox
    char* uiCheckboxText(uiCheckbox*)
    void uiCheckboxSetText(uiCheckbox*, const char*)
    void uiCheckboxOnToggled(uiCheckbox*, void (*)(uiCheckbox*, void*), void*)
    int uiCheckboxChecked(uiCheckbox*)
    void uiCheckboxSetChecked(uiCheckbox*, int)
    uiCheckbox* uiNewCheckbox(const char*)
    ctypedef uiEntry uiEntry
    char* uiEntryText(uiEntry*)
    void uiEntrySetText(uiEntry*, const char*)
    void uiEntryOnChanged(uiEntry*, void (*)(uiEntry*, void*), void*)
    int uiEntryReadOnly(uiEntry*)
    void uiEntrySetReadOnly(uiEntry*, int)
    uiEntry* uiNewEntry()
    uiEntry* uiNewPasswordEntry()
    uiEntry* uiNewSearchEntry()
    ctypedef uiLabel uiLabel
    char* uiLabelText(uiLabel*)
    void uiLabelSetText(uiLabel*, const char*)
    uiLabel* uiNewLabel(const char*)
    ctypedef uiTab uiTab
    void uiTabAppend(uiTab*, const char*, uiControl*)
    void uiTabInsertAt(uiTab*, const char*, int, uiControl*)
    void uiTabDelete(uiTab*, int)
    int uiTabNumPages(uiTab*)
    int uiTabMargined(uiTab*, int)
    void uiTabSetMargined(uiTab*, int, int)
    uiTab* uiNewTab()
    ctypedef uiGroup uiGroup
    char* uiGroupTitle(uiGroup*)
    void uiGroupSetTitle(uiGroup*, const char*)
    void uiGroupSetChild(uiGroup*, uiControl*)
    int uiGroupMargined(uiGroup*)
    void uiGroupSetMargined(uiGroup*, int)
    uiGroup* uiNewGroup(const char*)
    ctypedef uiSpinbox uiSpinbox
    int uiSpinboxValue(uiSpinbox*)
    void uiSpinboxSetValue(uiSpinbox*, int)
    void uiSpinboxOnChanged(uiSpinbox*, void (*)(uiSpinbox*, void*), void*)
    uiSpinbox* uiNewSpinbox(int, int)
    ctypedef uiSlider uiSlider
    int uiSliderValue(uiSlider*)
    void uiSliderSetValue(uiSlider*, int)
    int uiSliderHasToolTip(uiSlider*)
    void uiSliderSetHasToolTip(uiSlider*, int)
    void uiSliderOnChanged(uiSlider*, void (*)(uiSlider*, void*), void*)
    void uiSliderOnReleased(uiSlider*, void (*)(uiSlider*, void*), void*)
    void uiSliderSetRange(uiSlider*, int, int)
    uiSlider* uiNewSlider(int, int)
    ctypedef uiProgressBar uiProgressBar
    int uiProgressBarValue(uiProgressBar*)
    void uiProgressBarSetValue(uiProgressBar*, int)
    uiProgressBar* uiNewProgressBar()
    ctypedef uiSeparator uiSeparator
    uiSeparator* uiNewHorizontalSeparator()
    uiSeparator* uiNewVerticalSeparator()
    ctypedef uiCombobox uiCombobox
    void uiComboboxAppend(uiCombobox*, const char*)
    void uiComboboxInsertAt(uiCombobox*, int, const char*)
    void uiComboboxDelete(uiCombobox*, int)
    void uiComboboxClear(uiCombobox*)
    int uiComboboxNumItems(uiCombobox*)
    int uiComboboxSelected(uiCombobox*)
    void uiComboboxSetSelected(uiCombobox*, int)
    void uiComboboxOnSelected(uiCombobox*, void (*)(uiCombobox*, void*), void*)
    uiCombobox* uiNewCombobox()
    ctypedef uiEditableCombobox uiEditableCombobox
    void uiEditableComboboxAppend(uiEditableCombobox*, const char*)
    char* uiEditableComboboxText(uiEditableCombobox*)
    void uiEditableComboboxSetText(uiEditableCombobox*, const char*)
    void uiEditableComboboxOnChanged(uiEditableCombobox*, void (*)(uiEditableCombobox*, void*), void*)
    uiEditableCombobox* uiNewEditableCombobox()
    ctypedef uiRadioButtons uiRadioButtons
    void uiRadioButtonsAppend(uiRadioButtons*, const char*)
    int uiRadioButtonsSelected(uiRadioButtons*)
    void uiRadioButtonsSetSelected(uiRadioButtons*, int)
    void uiRadioButtonsOnSelected(uiRadioButtons*, void (*)(uiRadioButtons*, void*), void*)
    uiRadioButtons* uiNewRadioButtons()
    ctypedef uiDateTimePicker uiDateTimePicker
    void uiDateTimePickerTime(uiDateTimePicker*, tm*)
    void uiDateTimePickerSetTime(uiDateTimePicker*, tm*)
    void uiDateTimePickerOnChanged(uiDateTimePicker*, void (*)(uiDateTimePicker*, void*), void*)
    uiDateTimePicker* uiNewDateTimePicker()
    uiDateTimePicker* uiNewDatePicker()
    uiDateTimePicker* uiNewTimePicker()
    ctypedef uiMultilineEntry uiMultilineEntry
    char* uiMultilineEntryText(uiMultilineEntry*)
    void uiMultilineEntrySetText(uiMultilineEntry*, const char*)
    void uiMultilineEntryAppend(uiMultilineEntry*, const char*)
    void uiMultilineEntryOnChanged(uiMultilineEntry*, void (*)(uiMultilineEntry*, void*), void*)
    int uiMultilineEntryReadOnly(uiMultilineEntry*)
    void uiMultilineEntrySetReadOnly(uiMultilineEntry*, int)
    uiMultilineEntry* uiNewMultilineEntry()
    uiMultilineEntry* uiNewNonWrappingMultilineEntry()
    ctypedef uiMenuItem uiMenuItem
    void uiMenuItemEnable(uiMenuItem*)
    void uiMenuItemDisable(uiMenuItem*)
    void uiMenuItemOnClicked(uiMenuItem*, void (*)(uiMenuItem*, uiWindow*, void*), void*)
    int uiMenuItemChecked(uiMenuItem*)
    void uiMenuItemSetChecked(uiMenuItem*, int)
    ctypedef uiMenu uiMenu
    uiMenuItem* uiMenuAppendItem(uiMenu*, const char*)
    uiMenuItem* uiMenuAppendCheckItem(uiMenu*, const char*)
    uiMenuItem* uiMenuAppendQuitItem(uiMenu*)
    uiMenuItem* uiMenuAppendPreferencesItem(uiMenu*)
    uiMenuItem* uiMenuAppendAboutItem(uiMenu*)
    void uiMenuAppendSeparator(uiMenu*)
    uiMenu* uiNewMenu(const char*)
    char* uiOpenFile(uiWindow*)
    char* uiOpenFolder(uiWindow*)
    char* uiSaveFile(uiWindow*)
    void uiMsgBox(uiWindow*, const char*, const char*)
    void uiMsgBoxError(uiWindow*, const char*, const char*)
    ctypedef uiArea uiArea
    ctypedef uiAreaHandler uiAreaHandler
    ctypedef uiAreaDrawParams uiAreaDrawParams
    ctypedef uiAreaMouseEvent uiAreaMouseEvent
    ctypedef uiAreaKeyEvent uiAreaKeyEvent
    ctypedef uiDrawContext uiDrawContext
    struct uiAreaHandler:
        void (*Draw)(uiAreaHandler*, uiArea*, uiAreaDrawParams*)
        void (*MouseEvent)(uiAreaHandler*, uiArea*, uiAreaMouseEvent*)
        void (*MouseCrossed)(uiAreaHandler*, uiArea*, int)
        void (*DragBroken)(uiAreaHandler*, uiArea*)
        int (*KeyEvent)(uiAreaHandler*, uiArea*, uiAreaKeyEvent*)
    ctypedef unsigned int uiWindowResizeEdge
    void uiAreaSetSize(uiArea*, int, int)
    void uiAreaQueueRedrawAll(uiArea*)
    void uiAreaScrollTo(uiArea*, double, double, double, double)
    void uiAreaBeginUserWindowMove(uiArea*)
    void uiAreaBeginUserWindowResize(uiArea*, uiWindowResizeEdge)
    uiArea* uiNewArea(uiAreaHandler*)
    uiArea* uiNewScrollingArea(uiAreaHandler*, int, int)
    struct uiAreaDrawParams:
        uiDrawContext* Context
        double AreaWidth
        double AreaHeight
        double ClipX
        double ClipY
        double ClipWidth
        double ClipHeight
    ctypedef uiDrawPath uiDrawPath
    ctypedef uiDrawBrush uiDrawBrush
    ctypedef uiDrawStrokeParams uiDrawStrokeParams
    ctypedef uiDrawMatrix uiDrawMatrix
    ctypedef uiDrawBrushGradientStop uiDrawBrushGradientStop
    ctypedef unsigned int uiDrawBrushType
    ctypedef unsigned int uiDrawLineCap
    ctypedef unsigned int uiDrawLineJoin
    ctypedef unsigned int uiDrawFillMode
    struct uiDrawMatrix:
        double M11
        double M12
        double M21
        double M22
        double M31
        double M32
    struct uiDrawBrush:
        uiDrawBrushType Type
        double R
        double G
        double B
        double A
        double X0
        double Y0
        double X1
        double Y1
        double OuterRadius
        uiDrawBrushGradientStop* Stops
        size_t NumStops
    struct uiDrawBrushGradientStop:
        double Pos
        double R
        double G
        double B
        double A
    struct uiDrawStrokeParams:
        uiDrawLineCap Cap
        uiDrawLineJoin Join
        double Thickness
        double MiterLimit
        double* Dashes
        size_t NumDashes
        double DashPhase
    uiDrawPath* uiDrawNewPath(uiDrawFillMode)
    void uiDrawFreePath(uiDrawPath*)
    void uiDrawPathNewFigure(uiDrawPath*, double, double)
    void uiDrawPathNewFigureWithArc(uiDrawPath*, double, double, double, double, double, int)
    void uiDrawPathLineTo(uiDrawPath*, double, double)
    void uiDrawPathArcTo(uiDrawPath*, double, double, double, double, double, int)
    void uiDrawPathBezierTo(uiDrawPath*, double, double, double, double, double, double)
    void uiDrawPathCloseFigure(uiDrawPath*)
    void uiDrawPathAddRectangle(uiDrawPath*, double, double, double, double)
    int uiDrawPathEnded(uiDrawPath*)
    void uiDrawPathEnd(uiDrawPath*)
    void uiDrawStroke(uiDrawContext*, uiDrawPath*, uiDrawBrush*, uiDrawStrokeParams*)
    void uiDrawFill(uiDrawContext*, uiDrawPath*, uiDrawBrush*)
    void uiDrawMatrixSetIdentity(uiDrawMatrix*)
    void uiDrawMatrixTranslate(uiDrawMatrix*, double, double)
    void uiDrawMatrixScale(uiDrawMatrix*, double, double, double, double)
    void uiDrawMatrixRotate(uiDrawMatrix*, double, double, double)
    void uiDrawMatrixSkew(uiDrawMatrix*, double, double, double, double)
    void uiDrawMatrixMultiply(uiDrawMatrix*, uiDrawMatrix*)
    int uiDrawMatrixInvertible(uiDrawMatrix*)
    int uiDrawMatrixInvert(uiDrawMatrix*)
    void uiDrawMatrixTransformPoint(uiDrawMatrix*, double*, double*)
    void uiDrawMatrixTransformSize(uiDrawMatrix*, double*, double*)
    void uiDrawTransform(uiDrawContext*, uiDrawMatrix*)
    void uiDrawClip(uiDrawContext*, uiDrawPath*)
    void uiDrawSave(uiDrawContext*)
    void uiDrawRestore(uiDrawContext*)
    ctypedef uiAttribute uiAttribute
    void uiFreeAttribute(uiAttribute*)
    ctypedef unsigned int uiAttributeType
    uiAttributeType uiAttributeGetType(uiAttribute*)
    uiAttribute* uiNewFamilyAttribute(const char*)
    const char* uiAttributeFamily(uiAttribute*)
    uiAttribute* uiNewSizeAttribute(double)
    double uiAttributeSize(uiAttribute*)
    ctypedef unsigned int uiTextWeight
    uiAttribute* uiNewWeightAttribute(uiTextWeight)
    uiTextWeight uiAttributeWeight(uiAttribute*)
    ctypedef unsigned int uiTextItalic
    uiAttribute* uiNewItalicAttribute(uiTextItalic)
    uiTextItalic uiAttributeItalic(uiAttribute*)
    ctypedef unsigned int uiTextStretch
    uiAttribute* uiNewStretchAttribute(uiTextStretch)
    uiTextStretch uiAttributeStretch(uiAttribute*)
    uiAttribute* uiNewColorAttribute(double, double, double, double)
    void uiAttributeColor(uiAttribute*, double*, double*, double*, double*)
    uiAttribute* uiNewBackgroundAttribute(double, double, double, double)
    ctypedef unsigned int uiUnderline
    uiAttribute* uiNewUnderlineAttribute(uiUnderline)
    uiUnderline uiAttributeUnderline(uiAttribute*)
    ctypedef unsigned int uiUnderlineColor
    uiAttribute* uiNewUnderlineColorAttribute(uiUnderlineColor, double, double, double, double)
    void uiAttributeUnderlineColor(uiAttribute*, uiUnderlineColor*, double*, double*, double*, double*)
    ctypedef uiOpenTypeFeatures uiOpenTypeFeatures
    ctypedef uiForEach (*uiOpenTypeFeaturesForEachFunc)(uiOpenTypeFeatures*, char, char, char, char, uint32_t, void*)
    uiOpenTypeFeatures* uiNewOpenTypeFeatures()
    void uiFreeOpenTypeFeatures(uiOpenTypeFeatures*)
    uiOpenTypeFeatures* uiOpenTypeFeaturesClone(uiOpenTypeFeatures*)
    void uiOpenTypeFeaturesAdd(uiOpenTypeFeatures*, char, char, char, char, uint32_t)
    void uiOpenTypeFeaturesRemove(uiOpenTypeFeatures*, char, char, char, char)
    int uiOpenTypeFeaturesGet(uiOpenTypeFeatures*, char, char, char, char, uint32_t*)
    void uiOpenTypeFeaturesForEach(uiOpenTypeFeatures*, uiOpenTypeFeaturesForEachFunc, void*)
    uiAttribute* uiNewFeaturesAttribute(uiOpenTypeFeatures*)
    uiOpenTypeFeatures* uiAttributeFeatures(uiAttribute*)
    ctypedef uiAttributedString uiAttributedString
    ctypedef uiForEach (*uiAttributedStringForEachAttributeFunc)(uiAttributedString*, uiAttribute*, size_t, size_t, void*)
    uiAttributedString* uiNewAttributedString(const char*)
    void uiFreeAttributedString(uiAttributedString*)
    const char* uiAttributedStringString(uiAttributedString*)
    size_t uiAttributedStringLen(uiAttributedString*)
    void uiAttributedStringAppendUnattributed(uiAttributedString*, const char*)
    void uiAttributedStringInsertAtUnattributed(uiAttributedString*, const char*, size_t)
    void uiAttributedStringDelete(uiAttributedString*, size_t, size_t)
    void uiAttributedStringSetAttribute(uiAttributedString*, uiAttribute*, size_t, size_t)
    void uiAttributedStringForEachAttribute(uiAttributedString*, uiAttributedStringForEachAttributeFunc, void*)
    size_t uiAttributedStringNumGraphemes(uiAttributedString*)
    size_t uiAttributedStringByteIndexToGrapheme(uiAttributedString*, size_t)
    size_t uiAttributedStringGraphemeToByteIndex(uiAttributedString*, size_t)
    ctypedef uiFontDescriptor uiFontDescriptor
    struct uiFontDescriptor:
        char* Family
        double Size
        uiTextWeight Weight
        uiTextItalic Italic
        uiTextStretch Stretch
    void uiLoadControlFont(uiFontDescriptor*)
    void uiFreeFontDescriptor(uiFontDescriptor*)
    ctypedef uiDrawTextLayout uiDrawTextLayout
    ctypedef unsigned int uiDrawTextAlign
    ctypedef uiDrawTextLayoutParams uiDrawTextLayoutParams
    struct uiDrawTextLayoutParams:
        uiAttributedString* String
        uiFontDescriptor* DefaultFont
        double Width
        uiDrawTextAlign Align
    uiDrawTextLayout* uiDrawNewTextLayout(uiDrawTextLayoutParams*)
    void uiDrawFreeTextLayout(uiDrawTextLayout*)
    void uiDrawText(uiDrawContext*, uiDrawTextLayout*, double, double)
    void uiDrawTextLayoutExtents(uiDrawTextLayout*, double*, double*)
    ctypedef uiFontButton uiFontButton
    void uiFontButtonFont(uiFontButton*, uiFontDescriptor*)
    void uiFontButtonOnChanged(uiFontButton*, void (*)(uiFontButton*, void*), void*)
    uiFontButton* uiNewFontButton()
    void uiFreeFontButtonFont(uiFontDescriptor*)
    ctypedef unsigned int uiModifiers
    struct uiAreaMouseEvent:
        double X
        double Y
        double AreaWidth
        double AreaHeight
        int Down
        int Up
        int Count
        uiModifiers Modifiers
        uint64_t Held1To64
    ctypedef unsigned int uiExtKey
    struct uiAreaKeyEvent:
        char Key
        uiExtKey ExtKey
        uiModifiers Modifier
        uiModifiers Modifiers
        int Up
    ctypedef uiColorButton uiColorButton
    void uiColorButtonColor(uiColorButton*, double*, double*, double*, double*)
    void uiColorButtonSetColor(uiColorButton*, double, double, double, double)
    void uiColorButtonOnChanged(uiColorButton*, void (*)(uiColorButton*, void*), void*)
    uiColorButton* uiNewColorButton()
    ctypedef uiForm uiForm
    void uiFormAppend(uiForm*, const char*, uiControl*, int)
    int uiFormNumChildren(uiForm*)
    void uiFormDelete(uiForm*, int)
    int uiFormPadded(uiForm*)
    void uiFormSetPadded(uiForm*, int)
    uiForm* uiNewForm()
    ctypedef unsigned int uiAlign
    ctypedef unsigned int uiAt
    ctypedef uiGrid uiGrid
    void uiGridAppend(uiGrid*, uiControl*, int, int, int, int, int, uiAlign, int, uiAlign)
    void uiGridInsertAt(uiGrid*, uiControl*, uiControl*, uiAt, int, int, int, uiAlign, int, uiAlign)
    int uiGridPadded(uiGrid*)
    void uiGridSetPadded(uiGrid*, int)
    uiGrid* uiNewGrid()
    ctypedef uiImage uiImage
    uiImage* uiNewImage(double, double)
    void uiFreeImage(uiImage*)
    void uiImageAppend(uiImage*, void*, int, int, int)
    ctypedef uiTableValue uiTableValue
    void uiFreeTableValue(uiTableValue*)
    ctypedef unsigned int uiTableValueType
    uiTableValueType uiTableValueGetType(uiTableValue*)
    uiTableValue* uiNewTableValueString(const char*)
    const char* uiTableValueString(uiTableValue*)
    uiTableValue* uiNewTableValueImage(uiImage*)
    uiImage* uiTableValueImage(uiTableValue*)
    uiTableValue* uiNewTableValueInt(int)
    int uiTableValueInt(uiTableValue*)
    uiTableValue* uiNewTableValueColor(double, double, double, double)
    void uiTableValueColor(uiTableValue*, double*, double*, double*, double*)
    ctypedef unsigned int uiSortIndicator
    ctypedef uiTableModel uiTableModel
    ctypedef uiTableModelHandler uiTableModelHandler
    struct uiTableModelHandler:
        int (*NumColumns)(uiTableModelHandler*, uiTableModel*)
        uiTableValueType (*ColumnType)(uiTableModelHandler*, uiTableModel*, int)
        int (*NumRows)(uiTableModelHandler*, uiTableModel*)
        uiTableValue* (*CellValue)(uiTableModelHandler*, uiTableModel*, int, int)
        void (*SetCellValue)(uiTableModelHandler*, uiTableModel*, int, int, uiTableValue*)
    uiTableModel* uiNewTableModel(uiTableModelHandler*)
    void uiFreeTableModel(uiTableModel*)
    void uiTableModelRowInserted(uiTableModel*, int)
    void uiTableModelRowChanged(uiTableModel*, int)
    void uiTableModelRowDeleted(uiTableModel*, int)
    ctypedef uiTableTextColumnOptionalParams uiTableTextColumnOptionalParams
    struct uiTableTextColumnOptionalParams:
        int ColorModelColumn
    ctypedef uiTableParams uiTableParams
    struct uiTableParams:
        uiTableModel* Model
        int RowBackgroundColorModelColumn
    ctypedef uiTable uiTable
    void uiTableAppendTextColumn(uiTable*, const char*, int, int, uiTableTextColumnOptionalParams*)
    void uiTableAppendImageColumn(uiTable*, const char*, int)
    void uiTableAppendImageTextColumn(uiTable*, const char*, int, int, int, uiTableTextColumnOptionalParams*)
    void uiTableAppendCheckboxColumn(uiTable*, const char*, int, int)
    void uiTableAppendCheckboxTextColumn(uiTable*, const char*, int, int, int, int, uiTableTextColumnOptionalParams*)
    void uiTableAppendProgressBarColumn(uiTable*, const char*, int)
    void uiTableAppendButtonColumn(uiTable*, const char*, int, int)
    int uiTableHeaderVisible(uiTable*)
    void uiTableHeaderSetVisible(uiTable*, int)
    uiTable* uiNewTable(uiTableParams*)
    void uiTableOnRowClicked(uiTable*, void (*)(uiTable*, int, void*), void*)
    void uiTableOnRowDoubleClicked(uiTable*, void (*)(uiTable*, int, void*), void*)
    void uiTableHeaderSetSortIndicator(uiTable*, int, uiSortIndicator)
    uiSortIndicator uiTableHeaderSortIndicator(uiTable*, int)
    void uiTableHeaderOnClicked(uiTable*, void (*)(uiTable*, int, void*), void*)
    int uiTableColumnWidth(uiTable*, int)
    void uiTableColumnSetWidth(uiTable*, int, int)
    ctypedef unsigned int uiTableSelectionMode
    uiTableSelectionMode uiTableGetSelectionMode(uiTable*)
    void uiTableSetSelectionMode(uiTable*, uiTableSelectionMode)
    void uiTableOnSelectionChanged(uiTable*, void (*)(uiTable*, void*), void*)
    ctypedef uiTableSelection uiTableSelection
    struct uiTableSelection:
        int NumRows
        int* Rows
    uiTableSelection* uiTableGetSelection(uiTable*)
    void uiTableSetSelection(uiTable*, uiTableSelection*)
    void uiFreeTableSelection(uiTableSelection*)


