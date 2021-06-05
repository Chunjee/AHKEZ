strJoin(seperator, params*) {
	v := ""
	if (IsType(seperator, "integer")) {
		Loop, %seperator%
		{
			v .= params.1
		}
		return v
	}
	for index, p in params {
		v .= p . seperator
	}
	return SubStr(v, 1, StrLen(v) - StrLen(seperator))
}


; tests
assert.test(strJoin(",", 1,2,3), "1,2,3")
assert.test(strJoin(3, A_Space), "   ")

; omit
