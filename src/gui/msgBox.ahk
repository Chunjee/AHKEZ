MsgBox(Options = "", Title = "", Text = "", Timeout = "") {
	IsString := IsType(Options, "string")
	IsXdigit := IsType(Options, "xdigit")
	if (Options . Title . Text . Timeout = "" ) {
		MsgBox, 0, , Press OK to continue.
	} else if (Title . Text . Timeout = "") {
		MsgBox, %Options%
	} else if (Options=0) Or (Options="") {
		MsgBox, 0, %Title%, %Text%, %Timeout%
	} else if (IsString) {
		concat := Options . Title . Text . Timeout
		MsgBox, %concat%
	} else if (IsXdigit) {
		MsgBox, % Options, %Title%, %Text%, %Timeout%
	}
	return true
}
MB(Options = "", Title = "", Text = "", Timeout = "") {
	MsgBox(Options, Title, Text, Timeout)
}



; tests
