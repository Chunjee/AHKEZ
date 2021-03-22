;WinActive() built-in
WinActivate(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinActivate, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinActivateBottom(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinActivateBottom, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinGetActiveStats(ByRef Title, ByRef Width, ByRef Height, ByRef X, ByRef Y) {
	WinGetActiveStats, Title, Width, Height, X, Y
}
WinGetActiveTitle() {
	WinGetActiveTitle, v
	return v
}
WinClose(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinClose, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
;WinExist() built-in, same as WinGetID()
WinGet(SubCommand = "", WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGet, v, %SubCommand%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
WinGetClass(OutputVar , WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGetClass, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
WinGetID(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGet, v, ID, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
} ;from AHKv2, same as WinExist
WinGetPos(ByRef X, ByRef Y, ByRef Width, ByRef Height, WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGetPos, X, Y, Width, Height, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinGetText(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGetText, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
WinGetTitle(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinGetTitle, v, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
	return v
}
WinHide(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinHide, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinKill(WinTitle = "", WinText = "", SecondsToWait = "", ExcludeTitle = "", ExcludeText = "") {
	WinKill, %WinTitle%, %WinText%, %SecondsToWait%, %ExcludeTitle%, %ExcludeText%
}
WinMaximize(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinMaximize, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinMenuSelectItem(WinTitle, WinText, Menu, SubMenu1 = "", SubMenu2 = "", SubMenu3 = "", SubMenu4 = "", SubMenu5 = "", SubMenu6 = "") {
	WinMenuSelectItem, %WinTitle%, %WinText%, %Menu% , %SubMenu1%, %SubMenu2%, %SubMenu3%, %SubMenu4%, %SubMenu5%, %SubMenu6%
}
WinMinimize(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinMinimize, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinMinimizeAll() {
	WinMinimizeAll
}
WinMinimizeAllUndo() {
	WinMinimizeAllUndo
}
WinMove(WinTitle, WinText = "", X = "", Y = "", Width = "", Height = "", ExcludeTitle = "", ExcludeText = "") {
	WinMove, %WinTitle%, %WinText%, %X%, %Y% , %Width%, %Height%, %ExcludeTitle%, %ExcludeText%
}
WinRestore(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinRestore, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinSet(SubCommand, Value, WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinSet, %SubCommand%, %Value%, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinSetTitle(WinTitle, WinText = "", NewTitle = "", ExcludeTitle = "", ExcludeText = "") {
	WinSetTitle, %WinTitle%, %WinText%, %NewTitle%, %ExcludeTitle%, %ExcludeText%
}
WinShow(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinShow, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}
WinWait(WinTitle = "", WinText = "", TimeOut = "", ExcludeTitle = "", ExcludeText = "") {
	WinWait, %WinTitle%, %WinText%, %TimeOut%, %ExcludeTitle%, %ExcludeText%
}
WinWaitActive(WinTitle = "", WinText = "", TimeOut = "", ExcludeTitle = "", ExcludeText = "") {
	WinWaitActive, %WinTitle%, %WinText%, %TimeOut%, %ExcludeTitle%, %ExcludeText%
}
WinWaitNotActive(WinTitle = "", WinText = "", TimeOut = "", ExcludeTitle = "", ExcludeText = "") {
	WinWaitNotActive, %WinTitle%, %WinText%, %TimeOut%, %ExcludeTitle%, %ExcludeText%
}
WinWaitClose(WinTitle = "", WinText = "", ExcludeTitle = "", ExcludeText = "") {
	WinWaitClose, %WinTitle%, %WinText%, %ExcludeTitle%, %ExcludeText%
}

; tests
