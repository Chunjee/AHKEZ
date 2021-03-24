IsBlank(var) {
	return RegExMatch(var, "^[\s]+$")
} ;Custom


; tests
assert.true(isBlank(" "))
assert.true(isBlank(" 	 "))

; omit
assert.false(isBlank("Leo "))
