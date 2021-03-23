in(MatchList, var) {
	If var in %MatchList%
	{
		return true
	}
	return false
}


; tests

MatchList := "Apple,Banana,Cherry,Date,Fruit,Fruit2,Grape,Grapefruit,Pineapple"
assert.true(in(MatchList, "Banana"))
assert.true(in(MatchList, "Fruit2"))
assert.false(in(MatchList, "Frui"))
assert.label("whitespace sensitive")
assert.false(in(MatchList, " Fruit"))
