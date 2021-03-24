IsEmpty(var) {
	return (var = "")
} ;Custom


; tests
assert.true(IsEmpty(""))
assert.true(IsEmpty(neverDefinedVar))
assert.false(IsEmpty("Leo"))
