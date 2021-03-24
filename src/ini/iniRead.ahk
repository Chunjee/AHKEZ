IniRead(Filename, Section, Key = "", Default = "") {
	IniRead, v, %Filename%, %Section%, %Key%, %Default%
	return v
}


; tests
