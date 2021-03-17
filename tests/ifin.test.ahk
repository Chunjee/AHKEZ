assert.group("ifIn")
MatchList := "Apple,Banana,Cherry,Date,Fruit,Fruit2,Grape,Grapefruit,Pineapple"
assert.true(IfIn(MatchList, "Banana"))
assert.true(IfIn(MatchList, "Fruit2"))
assert.false(IfIn(MatchList, "Frui"))
assert.label("whitespace sensitive")
assert.false(IfIn(MatchList, " Fruit"))


assert.group("IfContains")
MatchList := "1,2,3"
assert.true(IfContains(MatchList, 2))
assert.true(IfContains(MatchList, "2"))
assert.true(IfContains(MatchList, 30))

MatchList := "1, 2, 3"
assert.label("whitespace sensitive")
assert.false(IfContains(MatchList, "2"))

; msgbox, % IfContains(MatchList, 30)
