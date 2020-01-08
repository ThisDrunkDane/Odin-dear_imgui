package imgui;

Draw_Corner_Flags :: enum i32 {
	None     = 0,
	TopLeft  = 1 << 0,
	TopRight = 1 << 1,
	BotLeft  = 1 << 2,
	BotRight = 1 << 3,
	Top      = TopLeft | TopRight,
	Bot      = BotLeft | BotRight,
	Left     = TopLeft | BotLeft,
	Right    = TopRight | BotRight,
	All      = 0xF,
}

Draw_List_Flags :: enum i32 {
	None             = 0,
	AntiAliasedLines = 1 << 0,
	AntiAliasedFill  = 1 << 1,
	AllowVtxOffset   = 1 << 2,
}

Font_Atlas_Flags :: enum i32 {
	None               = 0,
	NoPowerOfTwoHeight = 1 << 0,
	NoMouseCursors     = 1 << 1,
}

Backend_Flags :: enum i32 {
	None                 = 0,
	HasGamepad           = 1 << 0,
	HasMouseCursors      = 1 << 1,
	HasSetMousePos       = 1 << 2,
	RendererHasVtxOffset = 1 << 3,
}

Col :: enum i32 {
	Text                  = 0,
	TextDisabled          = 1,
	WindowBg              = 2,
	ChildBg               = 3,
	PopupBg               = 4,
	Border                = 5,
	BorderShadow          = 6,
	FrameBg               = 7,
	FrameBgHovered        = 8,
	FrameBgActive         = 9,
	TitleBg               = 10,
	TitleBgActive         = 11,
	TitleBgCollapsed      = 12,
	MenuBarBg             = 13,
	ScrollbarBg           = 14,
	ScrollbarGrab         = 15,
	ScrollbarGrabHovered  = 16,
	ScrollbarGrabActive   = 17,
	CheckMark             = 18,
	SliderGrab            = 19,
	SliderGrabActive      = 20,
	Button                = 21,
	ButtonHovered         = 22,
	ButtonActive          = 23,
	Header                = 24,
	HeaderHovered         = 25,
	HeaderActive          = 26,
	Separator             = 27,
	SeparatorHovered      = 28,
	SeparatorActive       = 29,
	ResizeGrip            = 30,
	ResizeGripHovered     = 31,
	ResizeGripActive      = 32,
	Tab                   = 33,
	TabHovered            = 34,
	TabActive             = 35,
	TabUnfocused          = 36,
	TabUnfocusedActive    = 37,
	PlotLines             = 38,
	PlotLinesHovered      = 39,
	PlotHistogram         = 40,
	PlotHistogramHovered  = 41,
	TextSelectedBg        = 42,
	DragDropTarget        = 43,
	NavHighlight          = 44,
	NavWindowingHighlight = 45,
	NavWindowingDimBg     = 46,
	ModalWindowDimBg      = 47,
	COUNT                 = 48,
}

Color_Edit_Flags :: enum i32 {
	None             = 0,
	NoAlpha          = 1 << 1,
	NoPicker         = 1 << 2,
	NoOptions        = 1 << 3,
	NoSmallPreview   = 1 << 4,
	NoInputs         = 1 << 5,
	NoTooltip        = 1 << 6,
	NoLabel          = 1 << 7,
	NoSidePreview    = 1 << 8,
	NoDragDrop       = 1 << 9,
	AlphaBar         = 1 << 16,
	AlphaPreview     = 1 << 17,
	AlphaPreviewHalf = 1 << 18,
	HDR              = 1 << 19,
	DisplayRGB       = 1 << 20,
	DisplayHSV       = 1 << 21,
	DisplayHex       = 1 << 22,
	Uint8            = 1 << 23,
	Float            = 1 << 24,
	PickerHueBar     = 1 << 25,
	PickerHueWheel   = 1 << 26,
	InputRGB         = 1 << 27,
	InputHSV         = 1 << 28,
	OptionsDefault   = Uint8 | DisplayRGB | InputRGB | PickerHueBar,
	DisplayMask      = DisplayRGB | DisplayHSV | DisplayHex,
	DataTypeMask     = Uint8 | Float,
	PickerMask       = PickerHueWheel | PickerHueBar,
	InputMask        = InputRGB | InputHSV,
}

Combo_Flags :: enum i32 {
	None           = 0,
	PopupAlignLeft = 1 << 0,
	HeightSmall    = 1 << 1,
	HeightRegular  = 1 << 2,
	HeightLarge    = 1 << 3,
	HeightLargest  = 1 << 4,
	NoArrowButton  = 1 << 5,
	NoPreview      = 1 << 6,
	HeightMask     = HeightSmall | HeightRegular | HeightLarge | HeightLargest,
}

Cond :: enum i32 {
	Always       = 1 << 0,
	Once         = 1 << 1,
	FirstUseEver = 1 << 2,
	Appearing    = 1 << 3,
}

Config_Flags :: enum i32 {
	None                 = 0,
	NavEnableKeyboard    = 1 << 0,
	NavEnableGamepad     = 1 << 1,
	NavEnableSetMousePos = 1 << 2,
	NavNoCaptureKeyboard = 1 << 3,
	NoMouse              = 1 << 4,
	NoMouseCursorChange  = 1 << 5,
	IsSRGB               = 1 << 20,
	IsTouchScreen        = 1 << 21,
}

Data_Type :: enum i32 {
	S8     = 0,
	U8     = 1,
	S16    = 2,
	U16    = 3,
	S32    = 4,
	U32    = 5,
	S64    = 6,
	U64    = 7,
	Float  = 8,
	Double = 9,
	COUNT  = 10,
}

Dir :: enum i32 {
	None  = -1,
	Left  = 0,
	Right = 1,
	Up    = 2,
	Down  = 3,
	COUNT = 4,
}

Drag_Drop_Flags :: enum i32 {
	None                     = 0,
	SourceNoPreviewTooltip   = 1 << 0,
	SourceNoDisableHover     = 1 << 1,
	SourceNoHoldToOpenOthers = 1 << 2,
	SourceAllowNullID        = 1 << 3,
	SourceExtern             = 1 << 4,
	SourceAutoExpirePayload  = 1 << 5,
	AcceptBeforeDelivery     = 1 << 10,
	AcceptNoDrawDefaultRect  = 1 << 11,
	AcceptNoPreviewTooltip   = 1 << 12,
	AcceptPeekOnly           = AcceptBeforeDelivery | AcceptNoDrawDefaultRect,
}

Focused_Flags :: enum i32 {
	None                = 0,
	ChildWindows        = 1 << 0,
	RootWindow          = 1 << 1,
	AnyWindow           = 1 << 2,
	RootAndChildWindows = RootWindow | ChildWindows,
}

Hovered_Flags :: enum i32 {
	None                         = 0,
	ChildWindows                 = 1 << 0,
	RootWindow                   = 1 << 1,
	AnyWindow                    = 1 << 2,
	AllowWhenBlockedByPopup      = 1 << 3,
	AllowWhenBlockedByActiveItem = 1 << 5,
	AllowWhenOverlapped          = 1 << 6,
	AllowWhenDisabled            = 1 << 7,
	RectOnly                     = AllowWhenBlockedByPopup | AllowWhenBlockedByActiveItem | AllowWhenOverlapped,
	RootAndChildWindows          = RootWindow | ChildWindows,
}

Input_Text_Flags :: enum i32 {
	None                = 0,
	CharsDecimal        = 1 << 0,
	CharsHexadecimal    = 1 << 1,
	CharsUppercase      = 1 << 2,
	CharsNoBlank        = 1 << 3,
	AutoSelectAll       = 1 << 4,
	EnterReturnsTrue    = 1 << 5,
	CallbackCompletion  = 1 << 6,
	CallbackHistory     = 1 << 7,
	CallbackAlways      = 1 << 8,
	CallbackCharFilter  = 1 << 9,
	AllowTabInput       = 1 << 10,
	CtrlEnterForNewLine = 1 << 11,
	NoHorizontalScroll  = 1 << 12,
	AlwaysInsertMode    = 1 << 13,
	ReadOnly            = 1 << 14,
	Password            = 1 << 15,
	NoUndoRedo          = 1 << 16,
	CharsScientific     = 1 << 17,
	CallbackResize      = 1 << 18,
	Multiline           = 1 << 20,
	NoMarkEdited        = 1 << 21,
}

Key :: enum i32 {
	Tab         = 0,
	LeftArrow   = 1,
	RightArrow  = 2,
	UpArrow     = 3,
	DownArrow   = 4,
	PageUp      = 5,
	PageDown    = 6,
	Home        = 7,
	End         = 8,
	Insert      = 9,
	Delete      = 10,
	Backspace   = 11,
	Space       = 12,
	Enter       = 13,
	Escape      = 14,
	KeyPadEnter = 15,
	A           = 16,
	C           = 17,
	V           = 18,
	X           = 19,
	Y           = 20,
	Z           = 21,
	COUNT       = 22,
}

Mouse_Cursor :: enum i32 {
	None       = -1,
	Arrow      = 0,
	TextInput  = 1,
	ResizeAll  = 2,
	ResizeNS   = 3,
	ResizeEW   = 4,
	ResizeNESW = 5,
	ResizeNWSE = 6,
	Hand       = 7,
	COUNT      = 8,
}

Nav_Input :: enum i32 {
	Activate      = 0,
	Cancel        = 1,
	Input         = 2,
	Menu          = 3,
	DpadLeft      = 4,
	DpadRight     = 5,
	DpadUp        = 6,
	DpadDown      = 7,
	LStickLeft    = 8,
	LStickRight   = 9,
	LStickUp      = 10,
	LStickDown    = 11,
	FocusPrev     = 12,
	FocusNext     = 13,
	TweakSlow     = 14,
	TweakFast     = 15,
	KeyMenu       = 16,
	KeyLeft       = 17,
	KeyRight      = 18,
	KeyUp         = 19,
	KeyDown       = 20,
	COUNT         = 21,
	InternalStart = KeyMenu,
}

Selectable_Flags :: enum i32 {
	None             = 0,
	DontClosePopups  = 1 << 0,
	SpanAllColumns   = 1 << 1,
	AllowDoubleClick = 1 << 2,
	Disabled         = 1 << 3,
	AllowItemOverlap = 1 << 4,
}

Style_Var :: enum i32 {
	Alpha               = 0,
	WindowPadding       = 1,
	WindowRounding      = 2,
	WindowBorderSize    = 3,
	WindowMinSize       = 4,
	WindowTitleAlign    = 5,
	ChildRounding       = 6,
	ChildBorderSize     = 7,
	PopupRounding       = 8,
	PopupBorderSize     = 9,
	FramePadding        = 10,
	FrameRounding       = 11,
	FrameBorderSize     = 12,
	ItemSpacing         = 13,
	ItemInnerSpacing    = 14,
	IndentSpacing       = 15,
	ScrollbarSize       = 16,
	ScrollbarRounding   = 17,
	GrabMinSize         = 18,
	GrabRounding        = 19,
	TabRounding         = 20,
	ButtonTextAlign     = 21,
	SelectableTextAlign = 22,
	COUNT               = 23,
}

Tab_Bar_Flags :: enum i32 {
	None                         = 0,
	Reorderable                  = 1 << 0,
	AutoSelectNewTabs            = 1 << 1,
	TabListPopupButton           = 1 << 2,
	NoCloseWithMiddleMouseButton = 1 << 3,
	NoTabListScrollingButtons    = 1 << 4,
	NoTooltip                    = 1 << 5,
	FittingPolicyResizeDown      = 1 << 6,
	FittingPolicyScroll          = 1 << 7,
	FittingPolicyMask            = FittingPolicyResizeDown | FittingPolicyScroll,
	FittingPolicyDefault         = FittingPolicyResizeDown,
}

Tab_Item_Flags :: enum i32 {
	None                         = 0,
	UnsavedDocument              = 1 << 0,
	SetSelected                  = 1 << 1,
	NoCloseWithMiddleMouseButton = 1 << 2,
	NoPushId                     = 1 << 3,
}

Tree_Node_Flags :: enum i32 {
	None                 = 0,
	Selected             = 1 << 0,
	Framed               = 1 << 1,
	AllowItemOverlap     = 1 << 2,
	NoTreePushOnOpen     = 1 << 3,
	NoAutoOpenOnLog      = 1 << 4,
	DefaultOpen          = 1 << 5,
	OpenOnDoubleClick    = 1 << 6,
	OpenOnArrow          = 1 << 7,
	Leaf                 = 1 << 8,
	Bullet               = 1 << 9,
	FramePadding         = 1 << 10,
	SpanAvailWidth       = 1 << 11,
	SpanFullWidth        = 1 << 12,
	NavLeftJumpsBackHere = 1 << 13,
	CollapsingHeader     = Framed | NoTreePushOnOpen | NoAutoOpenOnLog,
}

Window_Flags :: enum i32 {
	None                      = 0,
	NoTitleBar                = 1 << 0,
	NoResize                  = 1 << 1,
	NoMove                    = 1 << 2,
	NoScrollbar               = 1 << 3,
	NoScrollWithMouse         = 1 << 4,
	NoCollapse                = 1 << 5,
	AlwaysAutoResize          = 1 << 6,
	NoBackground              = 1 << 7,
	NoSavedSettings           = 1 << 8,
	NoMouseInputs             = 1 << 9,
	MenuBar                   = 1 << 10,
	HorizontalScrollbar       = 1 << 11,
	NoFocusOnAppearing        = 1 << 12,
	NoBringToFrontOnFocus     = 1 << 13,
	AlwaysVerticalScrollbar   = 1 << 14,
	AlwaysHorizontalScrollbar = 1<< 15,
	AlwaysUseWindowPadding    = 1 << 16,
	NoNavInputs               = 1 << 18,
	NoNavFocus                = 1 << 19,
	UnsavedDocument           = 1 << 20,
	NoNav                     = NoNavInputs | NoNavFocus,
	NoDecoration              = NoTitleBar | NoResize | NoScrollbar | NoCollapse,
	NoInputs                  = NoMouseInputs | NoNavInputs | NoNavFocus,
	NavFlattened              = 1 << 23,
	ChildWindow               = 1 << 24,
	Tooltip                   = 1 << 25,
	Popup                     = 1 << 26,
	Modal                     = 1 << 27,
	ChildMenu                 = 1 << 28,
}

Color :: struct {
	Value : Vec4,
};

Draw_Channel :: struct {
	_CmdBuffer : Im_Vector(Draw_Cmd),
	_IdxBuffer : Im_Vector(Draw_Idx),
};

Draw_Cmd :: struct {
	ElemCount        : u32,
	ClipRect         : Vec4,
	TextureId        : Texture_ID,
	VtxOffset        : u32,
	IdxOffset        : u32,
	UserCallback     : Draw_Callback,
	UserCallbackData : rawptr,
};

Draw_Data :: struct {
	Valid            : bool,
	CmdLists         : ^^Draw_List,
	CmdListsCount    : i32,
	TotalIdxCount    : i32,
	TotalVtxCount    : i32,
	DisplayPos       : Vec2,
	DisplaySize      : Vec2,
	FramebufferScale : Vec2,
};

Draw_List :: struct {
	CmdBuffer         : Im_Vector(Draw_Cmd),
	IdxBuffer         : Im_Vector(Draw_Idx),
	VtxBuffer         : Im_Vector(Draw_Vert),
	Flags             : Draw_List_Flags,
	_Data             : ^Draw_List_Shared_Data,
	_OwnerName        : cstring,
	_VtxCurrentOffset : u32,
	_VtxCurrentIdx    : u32,
	_VtxWritePtr      : ^Draw_Vert,
	_IdxWritePtr      : ^Draw_Idx,
	_ClipRectStack    : Im_Vector(Vec4),
	_TextureIdStack   : Im_Vector(Texture_ID),
	_Path             : Im_Vector(Vec2),
	_Splitter         : Draw_List_Splitter,
};

Draw_List_Splitter :: struct {
	_Current  : i32,
	_Count    : i32,
	_Channels : Im_Vector(Draw_Channel),
};

Draw_Vert :: struct {
	pos : Vec2,
	uv  : Vec2,
	col : u32,
};

Font :: struct {
	IndexAdvanceX       : Im_Vector(f32),
	FallbackAdvanceX    : f32,
	FontSize            : f32,
	IndexLookup         : Im_Vector(Wchar),
	Glyphs              : Im_Vector(Font_Glyph),
	FallbackGlyph       : ^Font_Glyph,
	DisplayOffset       : Vec2,
	ContainerAtlas      : ^Font_Atlas,
	ConfigData          : ^Font_Config,
	ConfigDataCount     : i16,
	FallbackChar        : Wchar,
	EllipsisChar        : Wchar,
	Scale               : f32,
	Ascent              : f32,
	Descent             : f32,
	MetricsTotalSurface : i32,
	DirtyLookupTables   : bool,
};

Font_Atlas :: struct {
	Locked          : bool,
	Flags           : Font_Atlas_Flags,
	TexID           : Texture_ID,
	TexDesiredWidth : i32,
	TexGlyphPadding : i32,
	TexPixelsAlpha8 : ^u8,
	TexPixelsRGBA32 : ^u32,
	TexWidth        : i32,
	TexHeight       : i32,
	TexUvScale      : Vec2,
	TexUvWhitePixel : Vec2,
	Fonts           : Im_Vector(^Font),
	CustomRects     : Im_Vector(Font_Atlas_Custom_Rect),
	ConfigData      : Im_Vector(Font_Config),
	CustomRectIds   : [1]i32,
};

Font_Atlas_Custom_Rect :: struct {
	ID            : u32,
	Width         : u16,
	Height        : u16,
	X             : u16,
	Y             : u16,
	GlyphAdvanceX : f32,
	GlyphOffset   : Vec2,
	Font          : ^Font,
};

Font_Config :: struct {
	FontData             : rawptr,
	FontDataSize         : i32,
	FontDataOwnedByAtlas : bool,
	FontNo               : i32,
	SizePixels           : f32,
	OversampleH          : i32,
	OversampleV          : i32,
	PixelSnapH           : bool,
	GlyphExtraSpacing    : Vec2,
	GlyphOffset          : Vec2,
	GlyphRanges          : ^Wchar,
	GlyphMinAdvanceX     : f32,
	GlyphMaxAdvanceX     : f32,
	MergeMode            : bool,
	RasterizerFlags      : u32,
	RasterizerMultiply   : f32,
	EllipsisChar         : Wchar,
	Name                 : [40]i8,
	DstFont              : ^Font,
};

Font_Glyph :: struct {
	Codepoint : Wchar,
	AdvanceX  : f32,
	X0        : f32,
	Y0        : f32,
	X1        : f32,
	Y1        : f32,
	U0        : f32,
	V0        : f32,
	U1        : f32,
	V1        : f32,
};

Font_Glyph_Ranges_Builder :: struct {
	UsedChars : Im_Vector(u32),
};

Io :: struct {
	ConfigFlags                       : Config_Flags,
	BackendFlags                      : Backend_Flags,
	DisplaySize                       : Vec2,
	DeltaTime                         : f32,
	IniSavingRate                     : f32,
	IniFilename                       : cstring,
	LogFilename                       : cstring,
	MouseDoubleClickTime              : f32,
	MouseDoubleClickMaxDist           : f32,
	MouseDragThreshold                : f32,
	KeyMap                            : [22]i32,
	KeyRepeatDelay                    : f32,
	KeyRepeatRate                     : f32,
	UserData                          : rawptr,
	Fonts                             : ^Font_Atlas,
	FontGlobalScale                   : f32,
	FontAllowUserScaling              : bool,
	FontDefault                       : ^Font,
	DisplayFramebufferScale           : Vec2,
	MouseDrawCursor                   : bool,
	ConfigMacOSXBehaviors             : bool,
	ConfigInputTextCursorBlink        : bool,
	ConfigWindowsResizeFromEdges      : bool,
	ConfigWindowsMoveFromTitleBarOnly : bool,
	ConfigWindowsMemoryCompactTimer   : f32,
	BackendPlatformName               : cstring,
	BackendRendererName               : cstring,
	BackendPlatformUserData           : rawptr,
	BackendRendererUserData           : rawptr,
	BackendLanguageUserData           : rawptr,
	GetClipboardTextFn                : get_clipboard_text_function,
	SetClipboardTextFn                : set_clipboard_text_function,
	ClipboardUserData                 : rawptr,
	ImeSetInputScreenPosFn            : ime_set_input_screen_pos_function,
	ImeWindowHandle                   : rawptr,
	RenderDrawListsFnUnused           : rawptr,
	MousePos                          : Vec2,
	MouseDown                         : [5]bool,
	MouseWheel                        : f32,
	MouseWheelH                       : f32,
	KeyCtrl                           : bool,
	KeyShift                          : bool,
	KeyAlt                            : bool,
	KeySuper                          : bool,
	KeysDown                          : [512]bool,
	NavInputs                         : [21]f32,
	WantCaptureMouse                  : bool,
	WantCaptureKeyboard               : bool,
	WantTextInput                     : bool,
	WantSetMousePos                   : bool,
	WantSaveIniSettings               : bool,
	NavActive                         : bool,
	NavVisible                        : bool,
	Framerate                         : f32,
	MetricsRenderVertices             : i32,
	MetricsRenderIndices              : i32,
	MetricsRenderWindows              : i32,
	MetricsActiveWindows              : i32,
	MetricsActiveAllocations          : i32,
	MouseDelta                        : Vec2,
	MousePosPrev                      : Vec2,
	MouseClickedPos                   : [5]Vec2,
	MouseClickedTime                  : [5]f64,
	MouseClicked                      : [5]bool,
	MouseDoubleClicked                : [5]bool,
	MouseReleased                     : [5]bool,
	MouseDownOwned                    : [5]bool,
	MouseDownWasDoubleClick           : [5]bool,
	MouseDownDuration                 : [5]f32,
	MouseDownDurationPrev             : [5]f32,
	MouseDragMaxDistanceAbs           : [5]Vec2,
	MouseDragMaxDistanceSqr           : [5]f32,
	KeysDownDuration                  : [512]f32,
	KeysDownDurationPrev              : [512]f32,
	NavInputsDownDuration             : [21]f32,
	NavInputsDownDurationPrev         : [21]f32,
	InputQueueCharacters              : Im_Vector(Wchar),
};

Input_Text_Callback_Data :: struct {
	EventFlag      : Input_Text_Flags,
	Flags          : Input_Text_Flags,
	UserData       : rawptr,
	EventChar      : Wchar,
	EventKey       : Key,
	Buf            : ^i8,
	BufTextLen     : i32,
	BufSize        : i32,
	BufDirty       : bool,
	CursorPos      : i32,
	SelectionStart : i32,
	SelectionEnd   : i32,
};

List_Clipper :: struct {
	StartPosY    : f32,
	ItemsHeight  : f32,
	ItemsCount   : i32,
	StepNo       : i32,
	DisplayStart : i32,
	DisplayEnd   : i32,
};

Once_Upon_a_Frame :: struct {
	RefFrame : i32,
};

Payload :: struct {
	Data           : rawptr,
	DataSize       : i32,
	SourceId       : ID,
	SourceParentId : ID,
	DataFrameCount : i32,
	DataType       : [33]i8,
	Preview        : bool,
	Delivery       : bool,
};

Size_Callback_Data :: struct {
	UserData    : rawptr,
	Pos         : Vec2,
	CurrentSize : Vec2,
	DesiredSize : Vec2,
};

Storage :: struct {
	Data : Im_Vector(Storage_Pair),
};

Style :: struct {
	Alpha                    : f32,
	WindowPadding            : Vec2,
	WindowRounding           : f32,
	WindowBorderSize         : f32,
	WindowMinSize            : Vec2,
	WindowTitleAlign         : Vec2,
	WindowMenuButtonPosition : Dir,
	ChildRounding            : f32,
	ChildBorderSize          : f32,
	PopupRounding            : f32,
	PopupBorderSize          : f32,
	FramePadding             : Vec2,
	FrameRounding            : f32,
	FrameBorderSize          : f32,
	ItemSpacing              : Vec2,
	ItemInnerSpacing         : Vec2,
	TouchExtraPadding        : Vec2,
	IndentSpacing            : f32,
	ColumnsMinSpacing        : f32,
	ScrollbarSize            : f32,
	ScrollbarRounding        : f32,
	GrabMinSize              : f32,
	GrabRounding             : f32,
	TabRounding              : f32,
	TabBorderSize            : f32,
	ColorButtonPosition      : Dir,
	ButtonTextAlign          : Vec2,
	SelectableTextAlign      : Vec2,
	DisplayWindowPadding     : Vec2,
	DisplaySafeAreaPadding   : Vec2,
	MouseCursorScale         : f32,
	AntiAliasedLines         : bool,
	AntiAliasedFill          : bool,
	CurveTessellationTol     : f32,
	Colors                   : [48]Vec4,
};

Text_Buffer :: struct {
	Buf : Im_Vector(u8),
};

Text_Filter :: struct {
	InputBuf  : [256]i8,
	Filters   : Im_Vector(Text_Range),
	CountGrep : i32,
};

Text_Range :: struct {
	b : cstring,
	e : cstring,
};

