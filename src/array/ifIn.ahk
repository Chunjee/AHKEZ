IfIn(MatchList, var) {
	If var in %MatchList%
	{
		return true
	}
	return false
}
IfNotIn(MatchList, var) {
	If var not in %MatchList%
	{
		return true
	}
	return false
}
IfContains(MatchList, var) {
	If var contains %MatchList%
	{
		return true
	}
	return false
}
IfNotContains(MatchList, var) {
	If var not contains %MatchList%
	{
		return true
	}
	return false
}


; tests

MatchList := "Apple,Banana,Cherry,Date,Fruit,Fruit2,Grape,Grapefruit,Pineapple"
assert.true(ifIn(MatchList, "Banana"))
assert.true(ifIn(MatchList, "Fruit2"))
assert.false(ifIn(MatchList, "Frui"))
assert.label("whitespace sensitive")
assert.false(ifIn(MatchList, " Fruit"))


assert.group("ifContains")
MatchList := "1,2,3"
assert.true(ifContains(MatchList, 2))
assert.true(ifContains(MatchList, "2"))
assert.true(ifContains(MatchList, 30))

MatchList := "1, 2, 3"
assert.label("whitespace sensitive")
assert.false(ifContains(MatchList, "2"))