;
; --- GUI ---
;
Gui(SubCommand = "New", Value1 = "", Value2 = "", Value3 = "") {
	;match gui options first char
	Static GuiOptNeedle := "iS)(*UCP)([x|y|w|h|c|r|s|q]\d{1})(?<!c0x)"
	;Gui, Add, ControlType , Options, Text
	;Gui, SubCommand, Value1, Value2, Value3
	if StrEndsWith(SubCommand, "Add") {

		;Gui, Add, Custom, ClassSysIPAddress32 r1 w150 hwndhIPControl gIPControlEvent
		if (Value1 = "Custom") {
			Options := "+HWNDhID " Value2
			Gui, %SubCommand%, %Value1%, %Options%
			return hID
		} else {
			ControlType := Value1
			Options := "+HWNDhID " RegExReplace(Value2, GuiOptNeedle, " $1")
			text := Value3
			Gui, %SubCommand%, %ControlType%, %Options%, %text%
			return hID
		}
	}

	;Gui, Color, WindowColor(Default, HtmlName, RGB, % var), ControlColor(Default, HtmlName, RGB, % var)
	;Gui, SubCommand, Value1, Value2, Value3
	if StrEndsWith(SubCommand, "Color") {
		Static StripLeading_C_Needle := "iS)(*UCP)^c?(.*)"
		;Gui, Color doesn't support a leading "c" for colors, strip off if present
		WindowColor  := RegExReplace(Trim(Value1), StripLeading_C_Needle, "$1")
		ControlColor := RegExReplace(Value2, StripLeading_C_Needle, "$1")
		Gui, %SubCommand%, %WindowColor%, %ControlColor%
		return
	}

	;Gui, Font, Options(cswq), FontName
	;Gui, SubCommand, Value1, Value2, Value3
	if StrEndsWith(SubCommand, "Font") {
		Options := RegExReplace(Value1, GuiOptNeedle, " $1") ;note A_Space . "$1"
		FontName := Value2
		Gui, %SubCommand%, %Options%, %FontName%
		return
	}

	;Gui, GuiName:New, Options, Title
	;Gui, SubCommand, Value1, Value2, Value3
	if StrEndsWith(SubCommand, "New") {
		Options := "+HWNDhID " RegExReplace(Value1, GuiOptNeedle, " $1") ;note A_Space . "$1"
		Title := Value2
		Gui, %SubCommand%, %Options%, %Title%
		return hID
	}

	;Gui, Show, Options, Title
	;Gui, SubCommand , Value1, Value2, Value3
	if StrEndsWith(SubCommand, "Show") {
		Options := RegExReplace(Value1, GuiOptNeedle, " $1") ;note A_Space . "$1"
		Title := Value2
		Gui, %SubCommand%, %Options%, %Title%
		hID := WinGetID("A")
		return hID
	}

	Static GuiSubCommands := "Cancel,Destroy,Flash,Hide,Margin,Minimize,Maximize,Menu,Restore,Submit,Tab"
	;Gui, SubCommand , Value1, Value2, Value3
	if StrContains(GuiSubCommands, SubCommand) {
		Gui, %SubCommand%, %Value1%, %Value2%, %Value3%
		return
	}

	;Gui, +/-Option1 +/-Option2 ...
	;Gui, SubCommand , Value1, Value2, Value3
	;no gui options with first char to match
	;Options here are all strings, eg: "+E0x40000 -Theme +Owner"
	Options := SubCommand
	Gui, %options%
}
