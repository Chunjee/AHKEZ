MouseMove(x, y, speed:=0, relative:=0) {
	if (relative) {
		l_relative := "R"
	}
	MouseMove, %x%, %y%, %speed%, %l_relative%
}


; tests
