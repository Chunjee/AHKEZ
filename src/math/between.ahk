between(ByRef var, LowerBound, UpperBound) {
	If var between %LowerBound% and %UpperBound%
	{
		return true
	}
	return false
}


; tests

assert.true(between(5, 1, 10))
assert.true(between(5.5, 1, 10))
assert.false(between(15, 1, 10))
