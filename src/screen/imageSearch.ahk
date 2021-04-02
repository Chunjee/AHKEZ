imageSearch(x1, x1, x2, y2, ImageFile, options:="") {
	ImageSearch, outputVarX, outputVarY, %x1%, %y1%, %x2%, %y2%, %options% %ImageFile%
	if (OutputVarX) {
		obj := []
		obj.x := outputVarX
		obj.y := outputVarY
		return obj
	}
	return false
}


; tests
