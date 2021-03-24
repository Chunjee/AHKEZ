IniDelete(Filename, Section, Key = "") {
	if (IsEmpty(Key)) {
		IniDelete, %Filename%, %Section%
	} else {
		IniDelete, %Filename%, %Section%, %Key%
	}
}


; tests
