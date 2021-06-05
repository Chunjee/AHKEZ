
;
; --- Functions ---
;
AutoTrim(Options = "") {
	AutoTrim, %Options%
}
BlockInput(Options = "") {
	BlockInput, %Options%
}
Click(Options = "") {
	Click, %Options%
}
ClipWait(Timeout = "", WaitForAnyData = "") {
	ClipWait , %Timeout%, %WaitForAnyData%
}
Control(SubCommand, Value = "", Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	Control, %SubCommand%, %Value%, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
ControlClick(ControlOrPos = "", WinTitle = "", WinText = "", WhichButton = "", ClickCount = "", Options = "", ExcludeTitle = "", ExcludeText = "") {
	ControlClick, %ControlOrPos%, %WinTitle%, %WinText%, %WhichButton%, %ClickCount%, %Options%, %ExcludeTitle%, %ExcludeText%
}
ControlFocus(Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlFocus, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
ControlGet(SubCommand, Value = "", Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlGet, v, %SubCommand%, %Value%, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
ControlGetFocus(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlGetFocus, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
ControlGetID(Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlGet, v, Hwnd,, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
ControlGetPos(ByRef X, ByRef Y, ByRef Width, ByRef Height, ControlID) {
	ControlGetPos, X, Y, Width, Height, , ahk_id %ControlID%
}
ControlGetText(Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlGetText, v, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
ControlMove(Control = "", X = "", Y = "", Width = "", Height = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlMove, %Control%, %X%, %Y%, %Width%, %Height%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
ControlSelect(ControlID, WindowID = "") {
	if (WindowID = "")
		WindowID := DllCall("user32\GetAncestor", Ptr, ControlID, UInt, GA_PARENT:=1, Ptr)
	PostMessage, WM_NEXTDLGCTL:=0x0028, %ControlID%, 1, , ahk_id %WindowID%
} ;Custom - Post/SendMessage requires the WinTitle parameter
ControlSend(Control = "", Keys = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlSend, %Control%, %Keys%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
ControlSendRaw(Control = "", Keys = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlSendRaw, %Control%, %Keys%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
ControlSetText(Control = "", NewText = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	ControlSetText, %Control%, %NewText%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
CoordMode(TargetType, RelativeTo := "Screen") {
	CoordMode, %TargetType%, %RelativeTo%
}
Critical(OnOffNumeric = "On") {
	critical, %OnOffNumeric%
}
DetectHiddenText(OnOff) {
	DetectHiddenText, %OnOff%
}
DetectHiddenWindows(OnOff) {
	DetectHiddenWindows, %OnOff%
}
Drive(SubCommand = "", Value1 = "", Value2 = "") {
	Drive, %SubCommand%, %Value1%, %Value2%
}
DriveGet(SubCommand, Value = "") {
	DriveGet, v, %SubCommand%, %Value%
	return v
}
DriveSpaceFree(Path) {
	DriveSpaceFree, v, %Path%
	return v
}
Edit() {
	Edit
}
EditAppend(ControlID, String = "") {
	String .= "`r`n"
	Control, EditPaste, %String%,, ahk_id %ControlID%
}
EditClear(ControlID) {
	ControlSetText,,, ahk_id %ControlID%
}
EditGetCurrentCol(ControlID) {
	ControlGet, OutputVar, CurrentCol,,, ahk_id %ControlID%
	return OutputVar
}
EditGetCurrentLine(ControlID) {
	ControlGet, OutputVar, CurrentLine,,, ahk_id %ControlID%
	return OutputVar
}
EditGetLineCount(ControlID) {
	ControlGet, OutputVar, LineCount,,, ahk_id %ControlID%
	return OutputVar
}
EditGetText(ControlID) {
	ControlGetText, v, , ahk_id %ControlID%
	return v
}
EditGetSelectedText(ControlID) {
	ControlGet, OutputVar, Selected,,, ahk_id %ControlID%
	return OutputVar
}
EditPaste(ControlID, String = "") {
	Control, EditPaste, %String%,, ahk_id %ControlID%
}
EditSetText(ControlID, NewText = "") {
	ControlSetText,, %NewText%, ahk_id %ControlID%
}
EnvAdd(ByRef Var, Value = "" , TimeUnits = "") {
	EnvAdd, Var, %Value% , %TimeUnits%
}
EnvGet(EnvVarName) {
	EnvGet, v, %EnvVarName%
	return v
}
EnvSet(EnvVar, Value) {
	EnvSet, %EnvVar%, %Value%
}
EnvSub(ByRef Var, Value = "" , TimeUnits = "") {
	EnvSub, Var, %Value% , %TimeUnits%
}
EnvUpdate() {
	EnvUpdate
}

;FileExist() ;built-in
FileGetShortcut(LinkFile = "") {
	FileGetShortcut, %LinkFile%, Target, Dir, Args, Description, Icon, IconNum, RunState
	return ({"Target": Target, "Dir": Dir, "Args": Args, "Description": Description, "Icon": Icon, "IconNum": IconNum, "RunState": RunState})
}
FileGetSize(Filename = "", Units = "") {
	FileGetSize, v, %Filename%, %Units%
	return v
}
FileGetTime(Filename = "", WhichTime = "") {
	FileGetTime, v, %Filename%, %WhichTime%
	return v
}
FileGetVersion(Filename = "") {
	FileGetVersion, v, %Filename%
	return v
}
;FileInstall: Don't wrap in a Function as it conflicts with Ahk2Exe compiler
FileMove(SourcePattern = "", DestPattern = "", Overwrite = 0) {
	FileMove, %SourcePattern%, %DestPattern%, %Overwrite%
}
FileMoveDir(Source = "", Dest = "", Flag = "") {
	FileMoveDir, %Source%, %Dest% , %Flag%
}
;FileOpen() built-in
FileRead(Filename) {
	FileRead, v, %Filename%
	return v
}
FileReadLine(Filename, LineNum) {
	FileReadLine, v, %Filename%, %LineNum%
	return v
}
FileRecycle(FilePattern = "") {
	FileRecycle, %FilePattern%
}
FileRecycleEmpty(DriveLetter = "") {
	FileRecycleEmpty, %DriveLetter%
}
FileRemoveDir(DirName, Recurse = "") {
	FileRemoveDir, %DirName%, %Recurse%
}
FileRename(SourcePattern = "", DestPattern = "", Overwrite = 0) {
	FileMove(SourcePattern, DestPattern, Overwrite)
} ;Custom
FileSelectFile(Options = "", RootDir = "", Prompt = "", Filter = "") {
	FileSelectFile, v, %Options%, %RootDir%, %Prompt%, %Filter%
	return v
}
FileSelectFolder(StartingFolder = "", Options = "", Prompt = "") {
	FileSelectFolder, v, %StartingFolder%, %Options%, %Prompt%
	return v
}
FileSetAttrib(Attributes = "", FilePattern = "", OperateOnFolders = "", Recurse = "") {
	FileSetAttrib, %Attributes%, %FilePattern%, %OperateOnFolders%, %Recurse%
}
FileSetTime(YYYYMMDDHH24MISS = "", FilePattern = "", WhichTime = "", OperateOnFolders = "", Recurse = "") {
	FileSetTime, %YYYYMMDDHH24MISS%, %FilePattern%, %WhichTime%, %OperateOnFolders%, %Recurse%
}
FileWrite(Text = "", Filename = "", Overwrite = 0, Encoding = "") {
	If (Overwrite)
		 FileDelete(Filename)
	 FileAppend(Text, Filename, Encoding)
} ;Custom
FormatTime(YYYYMMDDHH24MISS = "", Format = "") {
	FormatTime, v, %YYYYMMDDHH24MISS%, %Format%
	return v
} ; FormatTime(Now, "yyyy-MM-dd-hh:ss")
GroupActivate(GroupName, Mode = "") {
	GroupActivate, %GroupName%, %Mode%
}
GroupAdd(GroupName, WindowID, Label = "") {
	GroupAdd, %GroupName%, ahk_id %WindowID%, , %Label%
}
GroupClose(GroupName, Mode = "") {
	GroupClose, %GroupName%, %Mode%
}
GroupDeactivate(GroupName, Mode = "") {
	GroupDeactivate, %GroupName%, %Mode%
}
GuiControl(Subcommand = "", ControlID = "", Value = "") {
	GuiControl, %Subcommand%, %ControlID%, %Value% ; supports ObjBindMethod(this, "MyFunction")
}
GuiControlGet(Subcommand = "", ControlID = "", Param4 = "") {
	GuiControlGet, v, %Subcommand%, %ControlID%, %Param4%
	return v
}
Input(Options = "", EndKeys = "", MatchList = "") {
	Input, v, %Options%, %EndKeys%, %MatchList%
	return v
}
InputBox(Title = "", Prompt = "", HIDE = "", Width = "", Height = "", X = "", Y = "", Font = "", Timeout = "", Default = "") {
	InputBox, v, %Title%, %Prompt%, %HIDE%, %Width%, %Height%, %X%, %Y%, , %Timeout%, %Default%
	return v
}
;IsObject() built-in
JoinPath(Dir, File) {
	Dir := Trim(Dir)
	File := Trim(File)
	if (SubStr(Dir, 0) = "\") {
		Dir := SubStr(Dir, 1, -1)
	}
	if (SubStr(File, 1, 1) = "\") {
		File := SubStr(File, 2)
	}
	return % Dir . "\" . File
}
PixelGetColor(X, Y, RGB = "") {
	PixelGetColor, v, %X%, %Y%, %RGB%
	return v
}
PixelSearch(X1, Y1, X2, Y2, ColorID, Variation = "", Mode = "") {
	PixelSearch, OutputVarX, OutputVarY, %X1%, %Y1%, %X2%, %Y2%, %ColorID%, %Variation%, %Mode%
	if (OutputVarX) {
		obj := []
		obj.x := OutputVarX
		obj.y := OutputVarY
		return obj
	}
	return false
}
PostMesYage(Msg, wParam = "", lParam = "", Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	PostMessage, %Msg%, %wParam%, %lParam%, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
Process(SubCommand, PIDOrName = "", Value = "") {
	Process, %SubCommand%, %PIDOrName%, %Value%
}
Random(Min = "", Max = "") {
	Random, v, %Min%, %Max%
	return v
}
RegDelete(KeyName , ValueName = "") {
	RegDelete, %KeyName%, %ValueName%
}
RegRead(RootKey, SubKey, ValueName = "") {
	RegRead, v, %RootKey%, %SubKey%, %ValueName%
	return v
}
RegWrite(Valuetype = "", RootKey = "", SubKey = "", ValueName = "", Value = "") {
	RegWrite, %ValueType%, %RootKey%, %SubKey%, %ValueName%, %Value%
}
Reload() {
	Reload
}
Run(Target = "", WorkingDir = "", Mode = "") {
	Run, %Target%, %WorkingDir%, %Mode%, v
	return v
} ; Run("edit " TxtFile) ;notepad, Run(TxtFile) ;notepad++ if associated with .txt
RunAs(User = "", Password = "", Domain = "") {
	RunAs, %User%, %Password%, %Domain%
}
RunWait(Target, WorkingDir = "", Mode = "") {
	RunWait, %Target%, %WorkingDir%, %Mode%, v
	return v
}
Send(Keys) {
	Send %Keys%
}
SendRaw(Keys) {
	SendRaw %Keys%
}
SendInput(Keys) {
	SendInput %Keys%
}
SendPlay(Keys) {
	SendPlay %Keys%
}
SendEvent(Keys) {
	SendEvent %Keys%
}
SendLevel(Level) {
	SendLevel, %Level%
}
SendMessage(Msg, wParam = "", lParam = "", Control = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "", Timeout = "") {
	SendMessage, %Msg%, %wParam%, %lParam%, %Control%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%, %Timeout%
	return ErrorLevel
}
SendMode(Mode) {
	SendMode %Mode%
}
SetBatchLines(Value) {
	SetBatchLines, %Value%
}
SetCapsLockState(State) {
	SetCapsLockState, %State%
}
SetControlDelay(Delay) {
	SetControlDelay, %Delay%
}
SetDefaultMouseSpeed(Speed) {
	SetDefaultMouseSpeed, %Speed%
}
SetKeyDelay(Delay = "", PressDuration = "", Play = "") {
	SetKeyDelay, %Delay%, %PressDuration%, %Play%
}
SetMouseDelay(Delay, Play = "") {
	SetMouseDelay, %Delay% , %Play%
}
SetNumLockState(State) {
	SetNumLockState, %State%
}
SetRegView(RegView) {
	SetRegView, %RegView%
}
SetScrollLockState(State) {
	SetScrollLockState, %State%
}
SetStoreCapsLockMode(OnOff) {
	SetStoreCapsLockMode, %OnOff%
}
SetTimer(Label = "", PeriodOnOffDelete = "", Priority = "") {
	SetTimer, %Label%, %PeriodOnOffDelete%, %Priority%
}
SetTitleMatchMode(MatchMode = "", Speed = "") {
	if (!IsEmpty(MatchMode)) {
		Switch MatchMode
		{
			Case "starts":    Option := 1
			Case "contains":  Option := 2
			Case "exact":     Option := 3
			Default:          Option := 1
		}
		SetTitleMatchMode, %Option%
	}
	if (!IsEmpty(Speed)) {
		Switch Speed
		{
			Case "fast":      Option := Speed
			Case "slow":      Option := Speed
			Default:          Option := "fast"
		}
		SetTitleMatchMode, %Option%
	}
}
SetWinDelayDelay(Delay) {
	SetWinDelay, %Delay%
}
SetWorkingDir(DirName) {
	SetWorkingDir, %DirName%
}
Shutdown(Code) {
	Shutdown, %Code%
}
Sleep(DelayInMilliseconds) {
	Sleep, %DelayInMilliseconds%
}
Sort(ByRef VarName, Options = "") {
	Sort, VarName, %Options%
}
SoundBeep(Frequency = "", Duration = "") {
	SoundBeep, %Frequency%, %Duration%
}
SoundGet(ComponentType = "", ControlType = "", DeviceNumber = "") {
	SoundGet, v, %ComponentType%, %ControlType%, %DeviceNumber%
	return v
}
SoundGetWaveVolume(DeviceNumber = "") {
	SoundGetWaveVolume, v, %DeviceNumber%
	return v
}
SoundPlay(Filename, Wait = "") {
	SoundPlay, %Filename%, %Wait%
}
SoundSet(NewSetting, ComponentType = "", ControlType = "", DeviceNumber = "") {
	SoundSet, %NewSetting%, %ComponentType%, %ControlType%, %DeviceNumber%
}
SoundSetWaveVolume(Percent , DeviceNumber = "") {
	SoundSetWaveVolume, %Percent%, %DeviceNumber%
}
SplitPath(Path = "") {
	SplitPath, Path, FileName, Dir, Ext, NameNoExt, Drive
	return ({"FileName": FileName, "Dir": Dir, "Ext": Ext, "NameNoExt": NameNoExt, "Drive": Drive})
}
StatusBarGetText(Part = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	StatusBarGetText, v, %Part%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
StatusBarWait(BarText = "", Timeout = "", Part# = "", WindowID = "") {
	StatusBarWait, %BarText%, %Timeout%, %Part#%, ahk_id %WindowID%
}
StrContains(Haystack, Needle, CaseSensitive = false, StartingPos = 1, Occurrence = 1) {
	return Instr(Haystack, Needle, CaseSensitive, StartingPos, Occurrence) > 0
}
StrDeRef(String) {
	spo := 1
	out := ""
	while (fpo:=RegexMatch(String, "(%(.*?)%)|``(.)", m, spo)) {
		out .= SubStr(String, spo, fpo-spo)
		spo := fpo + StrLen(m)
		if (m1) {
			out .= %m2%
		}
		else switch (m3)
		{
		case "a": out .= "`a"
		case "b": out .= "`b"
		case "f": out .= "`f"
		case "n": out .= "`n"
		case "r": out .= "`r"
		case "t": out .= "`t"
		case "v": out .= "`v"
		default: out .= m3
		}
	}
	return out SubStr(String, spo)
}
StrEndsWith(Haystack, Needle, CaseSensitive := false, Occurrence = 1) {
	return SubStr(Haystack, Instr(Haystack, Needle, CaseSensitive, 0, Occurrence)) = Needle
}
;StrLen() built-in
;StrPut() built-in
;StrReplace() built-in
StrStartsWith(Haystack, Needle, CaseSensitive := false, Occurrence = 1) {
	return (Instr(Haystack, Needle, CaseSensitive, 1, Occurrence) = 1)
}
StrLower(ByRef InputVar, T = "") {
	StringLower, v, InputVar, %T%
	return v
}
;StrSplit() built-in
;StrReplace()  built-in
StrUpper(ByRef InputVar, T = "") {
	StringUpper, v, InputVar, %T%
	return v
}
StringCaseSense(OnOffLocale) {
	StringCaseSense, %OnOffLocale%
}
StringLower(ByRef InputVar, T = "") {
	StringLower, v, InputVar, %T%
	return v
}
StringUpper(ByRef InputVar, T = "") {
	StringUpper, v, InputVar, %T%
	return v
}
;SubStr() built-in
Suspend(Mode = "") {
	Suspend, %Mode%
}
SysGet(Subcommand, Param3 = "") {
	SysGet, v, %Subcommand%, %Param3%
	return v
}
Thread(SubCommand, Value1 = "", Value2 = "") {
	Thread, %SubCommand% , %Value1%, %Value2%
}
Throw(Expression = "") {
	Throw, %Expression%
}
ToolTip(Text = "", X = "", Y = "", WhichToolTip = "") {
	ToolTip, %Text%, %X%, %Y%, %WhichToolTip%
}
TrayTip(Title = "", Text = "", Seconds = "", Options = "") {
	TrayTip, %Title%, %Text%, %Seconds%, %Options%
}
UrlDownloadToFile(URL, Filename) {
	UrlDownloadToFile, %URL%, %Filename%
}

; tests
