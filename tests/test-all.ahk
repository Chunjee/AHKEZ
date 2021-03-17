SetBatchLines, -1
#SingleInstance, force
#NoTrayIcon
#Include %A_ScriptDir%\..\export.ahk


; perform all tests
assert := new unittesting()
#Include %A_ScriptDir%\showhideminmax.test.ahk
#Include %A_ScriptDir%\ifin.test.ahk


; report on all tests
assert.fullReport()


; include any other necessary libraries last
#Include %A_ScriptDir%\..\node_modules
#Include unit-testing.ahk\export.ahk

ExitApp
