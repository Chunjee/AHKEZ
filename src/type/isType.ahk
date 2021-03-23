IsType(ByRef var, type) {
	if (type = "object")
		return IsObject(var)
	if (type = "string")
		return (ObjGetCapacity([var], 1) != "")
	if var is % type
		return true
	return false
}

; tests
assert.true(IsType("turtle", "string"))
assert.true(IsType(1, "Integer"))
assert.true(IsType(1, "Number"))
assert.true(IsType(1.1, "Number"))
assert.true(IsType({"a": 1}, "Object"))

; omit
