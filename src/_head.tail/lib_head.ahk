if (!A_IsCompiled && A_LineFile == A_ScriptFullPath) {
	MsgBox % "This file was not #included."
	exitApp
}

;
; --- Super Globals ---
;
global DQ := """"
global CR := "`r"
global LF := "`n"
global CRLF := "`r`n"
global NL := "`r`n"
global STX := Chr(0x02)
global ETX := Chr(0x03)
global TAB := "`t"
;
; --- Helpers ---
;
AhkClass(WinTitle) {
	return "ahk_class" WinTitle
}
AhkId(WinTitle) {
	return "ahk_id" WinTitle
}
AhkPid(WinTitle) {
	return "ahk_pid" WinTitle
}
AhkExe(WinTitle) {
	return "ahk_exe" WinTitle
}
AhkGroup(WinTitle) {
	return "ahk_group" WinTitle
}