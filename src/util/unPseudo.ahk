unPseudo(param_pseudoHead, param_count:="") {
	l_arr := []

	if (param_count) {
		loop, % param_count	{
			l_arr.push(%param_pseudoHead%%A_Index%)
		}
		return l_arr
	}
	while (%param_pseudoHead%%A_Index% != "") {
		l_arr.push(%param_pseudoHead%%A_Index%)
	}
	return l_arr
}


; tests
pseudoArr1 := 9
pseudoArr2 := 8
pseudoArr3 := 7
pseudoArr4 := 6

assert.test(unPseudo("pseudoArr"), [9, 8, 7, 6])
assert.test(unPseudo("pseudoArr", 2), [9, 8])
