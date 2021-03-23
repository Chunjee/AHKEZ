contains(MatchList, var) {
	If var contains %MatchList%
	{
		return true
	}
	return false
}


; tests

MatchList := "1,2,3"
assert.true(contains(MatchList, 2))
assert.true(contains(MatchList, "2"))
assert.true(contains(MatchList, 30))

; omit

MatchList := "1, 2, 3"
assert.label("whitespace sensitive")
assert.false(contains(MatchList, "2"))
