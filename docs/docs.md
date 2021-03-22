# Quick Start


<br><br>

# **Array methods**
## .ifIn


#### Example

```autohotkey
MatchList := "Apple,Banana,Cherry,Date,Fruit,Fruit2,Grape,Grapefruit,Pineapple"ifIn(MatchList, "Banana")
; => true

ifIn(MatchList, "Fruit2")
; => true

assert.false(ifIn(MatchList, "Frui"))assert.false(ifIn(MatchList, " Fruit"))assert.group("ifContains")MatchList := "1,2,3"ifContains(MatchList, 2)
; => true

ifContains(MatchList, "2")
; => true

ifContains(MatchList, 30)
; => true

MatchList := "1, 2, 3"assert.false(ifContains(MatchList, "2"))```




# **Extra methods**
## .isType
Does stuffs


#### Arguments
matchlist (Object|String): The object or Matchlist to check.


#### Returns
(boolean): 	`true`, else `false`





# **Gui methods**
## .gui
Creates and manages windows and controls.

`Gui(SubCommand = "New", Value1 = "", Value2 = "", Value3 = "")`

#### Returns

(number) The WindowID of the Control or Gui is returned for "New", "Add", and "Show" SubCommands.





# **String methods**
## .strJoin
Concatenates strings together, or multiples of the same string.


#### Arguments
separator (String|number): The string seperator to concatiate with, or a number when repeating values

value (String|number): The string seperator to concatiate with, or a number when repeating values


#### Returns
(string):	The values concatiated into a string


#### Example

```autohotkey
tunedstrJoin(",", 1,2,3)
; => "1,2,3"

strJoin(3, A_Space)```




# **Window methods**
## .window





# **Wrapper methods**
## .all




