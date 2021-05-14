<br>

# **Debug methods**
## .outputDebug
Sends a string to the debugger (if any) for display.


#### Arguments

| Argument       | Type         | Description  |
| :------------- | :----------- | :----------- |
| text           | string       | Optional. (Default `""`) |


#### Returns
(boolean):	`true`





# **File methods**
## .fileAppend




## .fileCopy




## .fileCopyDir




## .fileCreateDir




## .fileCreateShortcut




## .fileDelete




## .fileEncoding





# **Gui methods**
## .gui
Creates and manages windows and controls.

`Gui(SubCommand = "New", Value1 = "", Value2 = "", Value3 = "")`

#### Returns

(number) The WindowID of the Control or Gui is returned for "New", "Add", and "Show" SubCommands.




## .menu




## .msgBox





# **Hotkey methods**
## .listHotkeys





# **Ini methods**
## .iniDelete




## .iniRead




## .iniWrite





# **Keyboard methods**
## .keyHistory




## .keyWait





# **Matchlist methods**
## .contains


#### Example

```autohotkey
MatchList := "1,2,3"contains(MatchList, 2)
; => true

contains(MatchList, "2")
; => true

contains(MatchList, 30)
; => true

```



## .in


#### Example

```autohotkey
MatchList := "Apple,Banana,Cherry,Date,Fruit,Fruit2,Grape,Grapefruit,Pineapple"in(MatchList, "Banana")
; => true

in(MatchList, "Fruit2")
; => true

assert.false(in(MatchList, "Frui"))assert.false(in(MatchList, " Fruit"))```




# **Math methods**
## .between


#### Example

```autohotkey
between(5, 1, 10)
; => true

between(5.5, 1, 10)
; => true

assert.false(between(15, 1, 10))```




# **Mouse methods**
## .mouseClick
Concatenates strings together, or multiples of the same string.


#### Arguments

| Argument       | Type         | Description  |
| :------------- | :----------- | :----------- |
|  x            | number       | Optional. (Default `0`) |
|  y            | number       | Optional. (Default `0`) |
|  whichButton  | string       | Optional. (Default `""`) |
|  clickCount   | number       | Optional. (Default `""`) |
|  speed        | number       | Optional. (Default `""`) |
|  downOrUp     | string       | Optional. (Default `""`) |
|  relative     | string       | Optional. (Default `""`) |


#### Returns
(none)




## .mouseClickDrag




## .mouseGetPos




## .mouseMove





# **Screen methods**
## .imageSearch
Searches a region of the screen for an image.


#### Arguments

| Argument       | Type         | Description  |
| :------------- | :----------- | :----------- |
| x1            | number       | Optional. (Default `0`) The X coordinate of the upper left corner of the rectangle to search |
| y1            | number       | Optional. (Default `0`) The Y coordinate of the upper left corner of the rectangle to search |
| x2            | number       | Optional. (Default `A_ScreenWidth`) The X coordinate of the lower right corner of the rectangle to search|
| y2            | number       | Optional. (Default `A_ScreenHeight`) The Y coordinate of the lower right corner of the rectangle to search|
| imageFile     | string       | Required. filepath of the image to search for|
| options       | string       | Optional. (Default `""`) |


#### Returns
(object):	the x and y position of the first matching image, else `false` if none found





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

tunedstrJoin(3, A_Space)
; => "   "

```




# **Type methods**
## .isBlank
Checks if the value is madeup of only whitespace such as A_Space or A_Tab.


#### Arguments
value (string): The value to be checked


#### Returns
(boolean): 	`true` if value is only whitespace, else `false`


#### Example

```autohotkey
isBlank(" ")
; => true

isBlank(" 	 ")
; => true

```



## .isEmpty
Checks if the value is `""` or undefined.


#### Arguments
value (string): The value to be checked


#### Returns
(boolean): 	`true` if value is `""` or undefined, else `false`


#### Example

```autohotkey
IsEmpty("")
; => true

IsEmpty(neverDefinedVar)
; => true

assert.false(IsEmpty("Leo"))```



## .isType
Checks if the value is of the specified type.


#### Arguments
value (Object|String): The value to be checked

type (String): The type in to be checked against


#### Returns
(boolean): 	`true` if value is of type, else `false`


#### Example

```autohotkey
IsType("turtle", "string")
; => true

IsType(1, "Integer")
; => true

IsType(1, "Number")
; => true

IsType(1.1, "Number")
; => true

IsType({"a": 1}, "Object")
; => true

```




# **Window methods**
## .window





# **Wrapper methods**
## .all




