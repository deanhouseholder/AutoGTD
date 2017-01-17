DisplayEditor:

; Logo
Gui, 7:Add, Picture, x180 y0 w400 h122 +Center, %A_ScriptDir%\AutoGTDLogoGray.png

; Change your hotkeys
Gui, 7:Font, s13 Bold, Tahoma
Gui, 7:Add, Text, x270 y+0 w200 h20 +Center, Change your hotkeys

; When you are done...
Gui, 7:Font, s10 normal underline, Tahoma
Gui, 7:Add, Text, x70 y+10 w600 h30 +Center, When you are done making changes, scroll to the bottom, and click the Save and Reload button.

; Warning: Avoid duplicating hotkeys
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x70 y+2 w600 h30 +Center, Warning: Avoid duplicating hotkeys!

; Category Assignment Hotkeys
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x30 y+10 w300 h20, Category Assignment Hotkeys
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F3
Gui, 7:Add, Text, x30  y255 w165 h25, Label (Maps to CTRL+F3)
Gui, 7:Add, Edit, x200 y250 w170 h25 vCategory1Name, %Category1Name%
Gui, 7:Add, Text, x405 y255 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y250 w20 h25 Limit2 vCategory1Hotkey, %Category1Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y255 w10 h25, +
Gui, 7:Add, Checkbox, x495 y255 vCategory1HotkeyCTRL checked%Category1HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y255 vCategory1HotkeyALT checked%Category1HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y255 vCategory1HotkeySHIFT checked%Category1HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y255 vCategory1HotkeyWIN checked%Category1HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F4
Gui, 7:Add, Text, x30  y305 w165 h25, Label (Maps to CTRL+F4)
Gui, 7:Add, Edit, x200 y300 w170 h25 vCategory2Name, %Category2Name%
Gui, 7:Add, Text, x405 y305 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y300 w20 h25 Limit2 vCategory2Hotkey, %Category2Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y305 w10 h25, +
Gui, 7:Add, Checkbox, x495 y305 vCategory2HotkeyCTRL checked%Category2HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y305 vCategory2HotkeyALT checked%Category2HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y305 vCategory2HotkeySHIFT checked%Category2HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y305 vCategory2HotkeyWIN checked%Category2HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F5
Gui, 7:Add, Text, x30  y355 w165 h25, Label (Maps to CTRL+F5)
Gui, 7:Add, Edit, x200 y350 w170 h25 vCategory3Name, %Category3Name%
Gui, 7:Add, Text, x405 y355 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y350 w20 h25 Limit2 vCategory3Hotkey, %Category3Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y355 w10 h25, +
Gui, 7:Add, Checkbox, x495 y355 vCategory3HotkeyCTRL checked%Category3HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y355 vCategory3HotkeyALT checked%Category3HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y355 vCategory3HotkeySHIFT checked%Category3HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y355 vCategory3HotkeyWIN checked%Category3HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F6
Gui, 7:Add, Text, x30  y405 w165 h25, Label (Maps to CTRL+F6)
Gui, 7:Add, Edit, x200 y400 w170 h25 vCategory4Name, %Category4Name%
Gui, 7:Add, Text, x405 y405 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y400 w20 h25 Limit2 vCategory4Hotkey, %Category4Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y405 w10 h25, +
Gui, 7:Add, Checkbox, x495 y405 vCategory4HotkeyCTRL checked%Category4HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y405 vCategory4HotkeyALT checked%Category4HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y405 vCategory4HotkeySHIFT checked%Category4HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y405 vCategory4HotkeyWIN checked%Category4HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F7
Gui, 7:Add, Text, x30  y455 w165 h25, Label (Maps to CTRL+F7)
Gui, 7:Add, Edit, x200 y450 w170 h25 vCategory5Name, %Category5Name%
Gui, 7:Add, Text, x405 y455 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y450 w20 h25 Limit2 vCategory5Hotkey, %Category5Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y455 w10 h25, +
Gui, 7:Add, Checkbox, x495 y455 vCategory5HotkeyCTRL checked%Category5HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y455 vCategory5HotkeyALT checked%Category5HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y455 vCategory5HotkeySHIFT checked%Category5HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y455 vCategory5HotkeyWIN checked%Category5HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F8
Gui, 7:Add, Text, x30  y505 w165 h25, Label (Maps to CTRL+F8)
Gui, 7:Add, Edit, x200 y500 w170 h25 vCategory6Name, %Category6Name%
Gui, 7:Add, Text, x405 y505 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y500 w20 h25 Limit2 vCategory6Hotkey, %Category6Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y505 w10 h25, +
Gui, 7:Add, Checkbox, x495 y505 vCategory6HotkeyCTRL checked%Category6HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y505 vCategory6HotkeyALT checked%Category6HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y505 vCategory6HotkeySHIFT checked%Category6HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y505 vCategory6HotkeyWIN checked%Category6HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F9
Gui, 7:Add, Text, x30  y555 w165 h25, Label (Maps to CTRL+F9)
Gui, 7:Add, Edit, x200 y550 w170 h25 vCategory7Name, %Category7Name%
Gui, 7:Add, Text, x405 y555 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y550 w20 h25 Limit2 vCategory7Hotkey, %Category7Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y555 w10 h25, +
Gui, 7:Add, Checkbox, x495 y555 vCategory7HotkeyCTRL checked%Category7HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y555 vCategory7HotkeyALT checked%Category7HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y555 vCategory7HotkeySHIFT checked%Category7HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y555 vCategory7HotkeyWIN checked%Category7HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F10
Gui, 7:Add, Text, x30  y605 w165 h25, Label (Maps to CTRL+F10)
Gui, 7:Add, Edit, x200 y600 w170 h25 vCategory8Name, %Category8Name%
Gui, 7:Add, Text, x405 y605 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y600 w20 h25 Limit2 vCategory8Hotkey, %Category8Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y605 w10 h25, +
Gui, 7:Add, Checkbox, x495 y605 vCategory8HotkeyCTRL checked%Category8HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y605 vCategory8HotkeyALT checked%Category8HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y605 vCategory8HotkeySHIFT checked%Category8HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y605 vCategory8HotkeyWIN checked%Category8HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F11
Gui, 7:Add, Text, x30  y655 w165 h25, Label (Maps to CTRL+F11)
Gui, 7:Add, Edit, x200 y650 w170 h25 vCategory9Name, %Category9Name%
Gui, 7:Add, Text, x405 y655 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y650 w20 h25 Limit2 vCategory9Hotkey, %Category9Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y655 w10 h25, +
Gui, 7:Add, Checkbox, x495 y655 vCategory9HotkeyCTRL checked%Category9HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y655 vCategory9HotkeyALT checked%Category9HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y655 vCategory9HotkeySHIFT checked%Category9HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y655 vCategory9HotkeyWIN checked%Category9HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; CTRL+F12
Gui, 7:Add, Text, x30  y705 w165 h25, Label (Maps to CTRL+F12)
Gui, 7:Add, Edit, x200 y700 w170 h25 vCategory10Name, %Category10Name%
Gui, 7:Add, Text, x405 y705 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y700 w20 h25 Limit2 vCategory10Hotkey, %Category10Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y705 w10 h25, +
Gui, 7:Add, Checkbox, x495 y705 vCategory10HotkeyCTRL checked%Category10HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y705 vCategory10HotkeyALT checked%Category10HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y705 vCategory10HotkeySHIFT checked%Category10HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y705 vCategory10HotkeyWIN checked%Category10HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Open Categories Menu
Gui, 7:Add, Text, x30  y755 w165 h25, Open Categories Menu
Gui, 7:Add, Edit, x200 y750 w170 h25 vOpenCategories, %OpenCategories%

; Category Assignment Hotkeys
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x30 y+40 w300 h20, Move Selected Emails to Folder
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 1
Gui, 7:Add, Text, x30  y855 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y850 w170 h25 vMove1Folder, %Move1Folder%
Gui, 7:Add, Text, x405 y855 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y850 w20 h25 Limit2 vMove1Hotkey, %Move1Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y855 w10 h25, +
Gui, 7:Add, Checkbox, x495 y855 vMove1HotkeyCTRL checked%Move1HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y855 vMove1HotkeyALT checked%Move1HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y855 vMove1HotkeySHIFT checked%Move1HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y855 vMove1HotkeyWIN checked%Move1HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 2
Gui, 7:Add, Text, x30  y905 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y900 w170 h25 vMove2Folder, %Move2Folder%
Gui, 7:Add, Text, x405 y905 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y900 w20 h25 Limit2 vMove2Hotkey, %Move2Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y905 w10 h25, +
Gui, 7:Add, Checkbox, x495 y905 vMove2HotkeyCTRL checked%Move2HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y905 vMove2HotkeyALT checked%Move2HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y905 vMove2HotkeySHIFT checked%Move2HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y905 vMove2HotkeyWIN checked%Move2HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 3
Gui, 7:Add, Text, x30  y955 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y950 w170 h25 vMove3Folder, %Move3Folder%
Gui, 7:Add, Text, x405 y955 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y950 w20 h25 Limit2 vMove3Hotkey, %Move3Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y955 w10 h25, +
Gui, 7:Add, Checkbox, x495 y955 vMove3HotkeyCTRL checked%Move3HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y955 vMove3HotkeyALT checked%Move3HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y955 vMove3HotkeySHIFT checked%Move3HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y955 vMove3HotkeyWIN checked%Move3HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 4
Gui, 7:Add, Text, x30  y1005 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y1000 w170 h25 vMove4Folder, %Move4Folder%
Gui, 7:Add, Text, x405 y1005 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y1000 w20 h25 Limit2 vMove4Hotkey, %Move4Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1005 w10 h25, +
Gui, 7:Add, Checkbox, x495 y1005 vMove4HotkeyCTRL checked%Move4HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y1005 vMove4HotkeyALT checked%Move4HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y1005 vMove4HotkeySHIFT checked%Move4HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y1005 vMove4HotkeyWIN checked%Move4HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 5
Gui, 7:Add, Text, x30  y1055 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y1050 w170 h25 vMove5Folder, %Move5Folder%
Gui, 7:Add, Text, x405 y1055 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y1050 w20 h25 Limit2 vMove5Hotkey, %Move5Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1055 w10 h25, +
Gui, 7:Add, Checkbox, x495 y1055 vMove5HotkeyCTRL checked%Move5HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y1055 vMove5HotkeyALT checked%Move5HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y1055 vMove5HotkeySHIFT checked%Move5HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y1055 vMove5HotkeyWIN checked%Move5HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 6
Gui, 7:Add, Text, x30  y1105 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y1100 w170 h25 vMove6Folder, %Move6Folder%
Gui, 7:Add, Text, x405 y1105 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y1100 w20 h25 Limit2 vMove6Hotkey, %Move6Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1105 w10 h25, +
Gui, 7:Add, Checkbox, x495 y1105 vMove6HotkeyCTRL checked%Move6HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y1105 vMove6HotkeyALT checked%Move6HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y1105 vMove6HotkeySHIFT checked%Move6HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y1105 vMove6HotkeyWIN checked%Move6HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 7
Gui, 7:Add, Text, x30  y1155 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y1150 w170 h25 vMove7Folder, %Move7Folder%
Gui, 7:Add, Text, x405 y1155 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y1150 w20 h25 Limit2 vMove7Hotkey, %Move7Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1155 w10 h25, +
Gui, 7:Add, Checkbox, x495 y1155 vMove7HotkeyCTRL checked%Move7HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y1155 vMove7HotkeyALT checked%Move7HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y1155 vMove7HotkeySHIFT checked%Move7HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y1155 vMove7HotkeyWIN checked%Move7HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 8
Gui, 7:Add, Text, x30  y1205 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y1200 w170 h25 vMove8Folder, %Move8Folder%
Gui, 7:Add, Text, x405 y1205 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y1200 w20 h25 Limit2 vMove8Hotkey, %Move8Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1205 w10 h25, +
Gui, 7:Add, Checkbox, x495 y1205 vMove8HotkeyCTRL checked%Move8HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y1205 vMove8HotkeyALT checked%Move8HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y1205 vMove8HotkeySHIFT checked%Move8HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y1205 vMove8HotkeyWIN checked%Move8HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Move Selected Messages 9
Gui, 7:Add, Text, x30  y1255 w165 h25, Move message(s) to
Gui, 7:Add, Edit, x200 y1250 w170 h25 vMove9Folder, %Move9Folder%
Gui, 7:Add, Text, x405 y1255 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y1250 w20 h25 Limit2 vMove9Hotkey, %Move9Hotkey%
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1255 w10 h25, +
Gui, 7:Add, Checkbox, x495 y1255 vMove9HotkeyCTRL checked%Move9HotkeyCTRL%, %A_Space%CTRL +
Gui, 7:Add, Checkbox, x560 y1255 vMove9HotkeyALT checked%Move9HotkeyALT%, %A_Space%ALT +
Gui, 7:Add, Checkbox, x612 y1255 vMove9HotkeySHIFT checked%Move9HotkeySHIFT%, %A_Space%SHIFT +
Gui, 7:Add, Checkbox, x677 y1255 vMove9HotkeyWIN checked%Move9HotkeyWIN%, %A_Space%WIN
Gui, 7:Font, s10 normal, Tahoma

; Bulk-Move Emails to Folders
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x30 y+40 w300 h20, Bulk-Move Emails to Folders

; Filter 1
Gui, 7:Font, s10 normal underline, Tahoma
Gui, 7:Add, Text, x30  y1335 w165 h25, Filter 1 ; r+140
Gui, 7:Add, Text, x455 y1335 w165 h25, Hotkey / Modifiers ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1365 w165 h25, Descriptive Name ; r+30
Gui, 7:Add, Edit, x140 y1360 w290 h25 vFilter1Name, %Filter1Name% ; r-5
Gui, 7:Add, Edit, x455 y1360 w20 h25 Limit2 vFilter1Hotkey, %Filter1Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1364 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y1365 vFilter1HotkeyCTRL checked%Filter1HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y1365 vFilter1HotkeyALT checked%Filter1HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y1365 vFilter1HotkeySHIFT checked%Filter1HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y1365 vFilter1HotkeyWIN checked%Filter1HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1395 w165 h25, Search String ; r+30
Gui, 7:Add, Edit, x140 y1390 w290 h25 vFilter1Search, %Filter1Search% ; r-5
Gui, 7:Add, Checkbox, x495 y1395 vFilter1Read checked%Filter1Read%, %A_Space%Mark as read? ; r+5
Gui, 7:Add, Text, x30  y1425 w165 h25, Destination Folder ; r+30
Gui, 7:Add, Edit, x140 y1420 w290 h25 vFilter1Folder, %Filter1Folder% ; r-5

; Filter 2
Gui, 7:Font, s10 normal underline, Tahoma
Gui, 7:Add, Text, x30  y1475 w165 h25, Filter 2 ; r+140
Gui, 7:Add, Text, x455 y1475 w165 h25, Hotkey / Modifiers ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1505 w165 h25, Descriptive Name ; r+30
Gui, 7:Add, Edit, x140 y1500 w290 h25 vFilter2Name, %Filter2Name% ; r-5
Gui, 7:Add, Edit, x455 y1500 w20 h25 Limit2 vFilter2Hotkey, %Filter2Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1504 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y1505 vFilter2HotkeyCTRL checked%Filter2HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y1505 vFilter2HotkeyALT checked%Filter2HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y1505 vFilter2HotkeySHIFT checked%Filter2HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y1505 vFilter2HotkeyWIN checked%Filter2HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1535 w165 h25, Search String ; r+30
Gui, 7:Add, Edit, x140 y1530 w290 h25 vFilter2Search, %Filter2Search% ; r-5
Gui, 7:Add, Checkbox, x495 y1535 vFilter2Read checked%Filter2Read%, %A_Space%Mark as read? ; r+5
Gui, 7:Add, Text, x30  y1565 w165 h25, Destination Folder ; r+30
Gui, 7:Add, Edit, x140 y1560 w290 h25 vFilter2Folder, %Filter2Folder% ; r-5

; Filter 3
Gui, 7:Font, s10 normal underline, Tahoma
Gui, 7:Add, Text, x30  y1615 w165 h25, Filter 3 ; r+140
Gui, 7:Add, Text, x455 y1615 w165 h25, Hotkey / Modifiers ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1645 w165 h25, Descriptive Name ; r+30
Gui, 7:Add, Edit, x140 y1640 w290 h25 vFilter3Name, %Filter3Name% ; r-5
Gui, 7:Add, Edit, x455 y1640 w20 h25 Limit2 vFilter3Hotkey, %Filter3Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1644 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y1645 vFilter3HotkeyCTRL checked%Filter3HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y1645 vFilter3HotkeyALT checked%Filter3HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y1645 vFilter3HotkeySHIFT checked%Filter3HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y1645 vFilter3HotkeyWIN checked%Filter3HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1675 w165 h25, Search String ; r+30
Gui, 7:Add, Edit, x140 y1670 w290 h25 vFilter3Search, %Filter3Search% ; r-5
Gui, 7:Add, Checkbox, x495 y1675 vFilter3Read checked%Filter3Read%, %A_Space%Mark as read? ; r+5
Gui, 7:Add, Text, x30  y1705 w165 h25, Destination Folder ; r+30
Gui, 7:Add, Edit, x140 y1700 w290 h25 vFilter3Folder, %Filter3Folder% ; r-5

; Filter 4
Gui, 7:Font, s10 normal underline, Tahoma
Gui, 7:Add, Text, x30  y1755 w165 h25, Filter 4 ; r+140
Gui, 7:Add, Text, x455 y1755 w165 h25, Hotkey / Modifiers ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1785 w165 h25, Descriptive Name ; r+30
Gui, 7:Add, Edit, x140 y1780 w290 h25 vFilter4Name, %Filter4Name% ; r-5
Gui, 7:Add, Edit, x455 y1780 w20 h25 Limit2 vFilter4Hotkey, %Filter4Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1784 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y1785 vFilter4HotkeyCTRL checked%Filter4HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y1785 vFilter4HotkeyALT checked%Filter4HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y1785 vFilter4HotkeySHIFT checked%Filter4HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y1785 vFilter4HotkeyWIN checked%Filter4HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1815 w165 h25, Search String ; r+30
Gui, 7:Add, Edit, x140 y1810 w290 h25 vFilter4Search, %Filter4Search% ; r-5
Gui, 7:Add, Checkbox, x495 y1815 vFilter4Read checked%Filter4Read%, %A_Space%Mark as read? ; r+5
Gui, 7:Add, Text, x30  y1845 w165 h25, Destination Folder ; r+30
Gui, 7:Add, Edit, x140 y1840 w290 h25 vFilter4Folder, %Filter4Folder% ; r-5

; Filter 5
Gui, 7:Font, s10 normal underline, Tahoma
Gui, 7:Add, Text, x30  y1895 w165 h25, Filter 5 ; r+140
Gui, 7:Add, Text, x455 y1895 w165 h25, Hotkey / Modifiers ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1925 w165 h25, Descriptive Name ; r+30
Gui, 7:Add, Edit, x140 y1920 w290 h25 vFilter5Name, %Filter5Name% ; r-5
Gui, 7:Add, Edit, x455 y1920 w20 h25 Limit2 vFilter5Hotkey, %Filter5Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y1924 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y1925 vFilter5HotkeyCTRL checked%Filter5HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y1925 vFilter5HotkeyALT checked%Filter5HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y1925 vFilter5HotkeySHIFT checked%Filter5HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y1925 vFilter5HotkeyWIN checked%Filter5HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y1955 w165 h25, Search String ; r+30
Gui, 7:Add, Edit, x140 y1950 w290 h25 vFilter5Search, %Filter5Search% ; r-5
Gui, 7:Add, Checkbox, x495 y1955 vFilter5Read checked%Filter5Read%, %A_Space%Mark as read? ; r+5
Gui, 7:Add, Text, x30  y1985 w165 h25, Destination Folder ; r+30
Gui, 7:Add, Edit, x140 y1980 w290 h25 vFilter5Folder, %Filter5Folder% ; r-5

; Filter 6
Gui, 7:Font, s10 normal underline, Tahoma
Gui, 7:Add, Text, x30  y2035 w165 h25, Filter 6 ; r+140
Gui, 7:Add, Text, x455 y2035 w165 h25, Hotkey / Modifiers ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2065 w165 h25, Descriptive Name ; r+30
Gui, 7:Add, Edit, x140 y2060 w290 h25 vFilter6Name, %Filter6Name% ; r-5
Gui, 7:Add, Edit, x455 y2060 w20 h25 Limit2 vFilter6Hotkey, %Filter6Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2064 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2065 vFilter6HotkeyCTRL checked%Filter6HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2065 vFilter6HotkeyALT checked%Filter6HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2065 vFilter6HotkeySHIFT checked%Filter6HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2065 vFilter6HotkeyWIN checked%Filter6HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2095 w165 h25, Search String ; r+30
Gui, 7:Add, Edit, x140 y2090 w290 h25 vFilter6Search, %Filter6Search% ; r-5
Gui, 7:Add, Checkbox, x495 y2095 vFilter6Read checked%Filter6Read%, %A_Space%Mark as read? ; r+5
Gui, 7:Add, Text, x30  y2125 w165 h25, Destination Folder ; r+30
Gui, 7:Add, Edit, x140 y2120 w290 h25 vFilter6Folder, %Filter6Folder% ; r-5

; Jump to Folders
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x30 y+30 w300 h20, Jump to Folders

; Jump to Folder 1
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2205 w165 h25, Jump to Folder 1 ; r+30
Gui, 7:Add, Edit, x140 y2200 w170 h25 vJumpTo1Folder, %JumpTo1Folder% ; r-5
Gui, 7:Add, Text, x405 y2205 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2200 w20 h25 Limit2 vJumpTo1Hotkey, %JumpTo1Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2204 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2205 vJumpTo1HotkeyCTRL checked%JumpTo1HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2205 vJumpTo1HotkeyALT checked%JumpTo1HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2205 vJumpTo1HotkeySHIFT checked%JumpTo1HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2205 vJumpTo1HotkeyWIN checked%JumpTo1HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 2
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2235 w165 h25, Jump to Folder 2 ; r+30
Gui, 7:Add, Edit, x140 y2230 w170 h25 vJumpTo2Folder, %JumpTo2Folder% ; r-5
Gui, 7:Add, Text, x405 y2235 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2230 w20 h25 Limit2 vJumpTo2Hotkey, %JumpTo2Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2234 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2235 vJumpTo2HotkeyCTRL checked%JumpTo2HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2235 vJumpTo2HotkeyALT checked%JumpTo2HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2235 vJumpTo2HotkeySHIFT checked%JumpTo2HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2235 vJumpTo2HotkeyWIN checked%JumpTo2HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 3
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2265 w165 h25, Jump to Folder 3 ; r+30
Gui, 7:Add, Edit, x140 y2260 w170 h25 vJumpTo3Folder, %JumpTo3Folder% ; r-5
Gui, 7:Add, Text, x405 y2265 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2260 w20 h25 Limit2 vJumpTo3Hotkey, %JumpTo3Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2264 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2265 vJumpTo3HotkeyCTRL checked%JumpTo3HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2265 vJumpTo3HotkeyALT checked%JumpTo3HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2265 vJumpTo3HotkeySHIFT checked%JumpTo3HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2265 vJumpTo3HotkeyWIN checked%JumpTo3HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 4
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2295 w165 h25, Jump to Folder 4 ; r+30
Gui, 7:Add, Edit, x140 y2290 w170 h25 vJumpTo4Folder, %JumpTo4Folder% ; r-5
Gui, 7:Add, Text, x405 y2295 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2290 w20 h25 Limit2 vJumpTo4Hotkey, %JumpTo4Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2294 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2295 vJumpTo4HotkeyCTRL checked%JumpTo4HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2295 vJumpTo4HotkeyALT checked%JumpTo4HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2295 vJumpTo4HotkeySHIFT checked%JumpTo4HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2295 vJumpTo4HotkeyWIN checked%JumpTo4HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 5
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2325 w165 h25, Jump to Folder 5 ; r+30
Gui, 7:Add, Edit, x140 y2320 w170 h25 vJumpTo5Folder, %JumpTo5Folder% ; r-5
Gui, 7:Add, Text, x405 y2325 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2320 w20 h25 Limit2 vJumpTo5Hotkey, %JumpTo5Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2324 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2325 vJumpTo5HotkeyCTRL checked%JumpTo5HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2325 vJumpTo5HotkeyALT checked%JumpTo5HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2325 vJumpTo5HotkeySHIFT checked%JumpTo5HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2325 vJumpTo5HotkeyWIN checked%JumpTo5HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 6
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2355 w165 h25, Jump to Folder 6 ; r+30
Gui, 7:Add, Edit, x140 y2350 w170 h25 vJumpTo6Folder, %JumpTo6Folder% ; r-5
Gui, 7:Add, Text, x405 y2355 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2350 w20 h25 Limit2 vJumpTo6Hotkey, %JumpTo6Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2354 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2355 vJumpTo6HotkeyCTRL checked%JumpTo6HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2355 vJumpTo6HotkeyALT checked%JumpTo6HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2355 vJumpTo6HotkeySHIFT checked%JumpTo6HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2355 vJumpTo6HotkeyWIN checked%JumpTo6HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 7
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2385 w165 h25, Jump to Folder 7 ; r+30
Gui, 7:Add, Edit, x140 y2380 w170 h25 vJumpTo7Folder, %JumpTo7Folder% ; r-5
Gui, 7:Add, Text, x405 y2385 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2380 w20 h25 Limit2 vJumpTo7Hotkey, %JumpTo7Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2384 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2385 vJumpTo7HotkeyCTRL checked%JumpTo7HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2385 vJumpTo7HotkeyALT checked%JumpTo7HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2385 vJumpTo7HotkeySHIFT checked%JumpTo7HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2385 vJumpTo7HotkeyWIN checked%JumpTo7HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 8
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2415 w165 h25, Jump to Folder 8 ; r+30
Gui, 7:Add, Edit, x140 y2410 w170 h25 vJumpTo8Folder, %JumpTo8Folder% ; r-5
Gui, 7:Add, Text, x405 y2415 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2410 w20 h25 Limit2 vJumpTo8Hotkey, %JumpTo8Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2414 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2415 vJumpTo8HotkeyCTRL checked%JumpTo8HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2415 vJumpTo8HotkeyALT checked%JumpTo8HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2415 vJumpTo8HotkeySHIFT checked%JumpTo8HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2415 vJumpTo8HotkeyWIN checked%JumpTo8HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 9
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2445 w165 h25, Jump to Folder 9 ; r+30
Gui, 7:Add, Edit, x140 y2440 w170 h25 vJumpTo9Folder, %JumpTo9Folder% ; r-5
Gui, 7:Add, Text, x405 y2445 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2440 w20 h25 Limit2 vJumpTo9Hotkey, %JumpTo9Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2444 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2445 vJumpTo9HotkeyCTRL checked%JumpTo9HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2445 vJumpTo9HotkeyALT checked%JumpTo9HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2445 vJumpTo9HotkeySHIFT checked%JumpTo9HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2445 vJumpTo9HotkeyWIN checked%JumpTo9HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Jump to Folder 10
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2475 w165 h25, Jump to Folder 10 ; r+30
Gui, 7:Add, Edit, x140 y2470 w170 h25 vJumpTo0Folder, %JumpTo0Folder% ; r-5
Gui, 7:Add, Text, x405 y2475 w70  h25, Hotkey
Gui, 7:Add, Edit, x455 y2470 w20 h25 Limit2 vJumpTo0Hotkey, %JumpTo0Hotkey% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2474 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2475 vJumpTo0HotkeyCTRL checked%JumpTo0HotkeyCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2475 vJumpTo0HotkeyALT checked%JumpTo0HotkeyALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2475 vJumpTo0HotkeySHIFT checked%JumpTo0HotkeySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2475 vJumpTo0HotkeyWIN checked%JumpTo0HotkeyWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Other Helpful Shortcuts
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x30 y+30 w300 h20, Other Helpful Shortcuts

; Flag an Email as a To-Do item
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2545 w300 h25, Flag an Email as a To-Do item ; r+30
Gui, 7:Add, Text, x405 y2545 w70  h25, Hotkey ; r+5
Gui, 7:Add, Edit, x455 y2540 w20 h25 Limit2 vFlagMessage, %FlagMessage% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2544 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2545 vFlagMessageCTRL checked%FlagMessageCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2545 vFlagMessageALT checked%FlagMessageALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2545 vFlagMessageSHIFT checked%FlagMessageSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2545 vFlagMessageWIN checked%FlagMessageWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2575 w300 h25, Set a Reminder ; r+30
Gui, 7:Add, Text, x405 y2575 w70  h25, Hotkey ; r+5
Gui, 7:Add, Edit, x455 y2570 w20 h25 Limit2 vSetReminder, %SetReminder% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2574 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2575 vSetReminderCTRL checked%SetReminderCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2575 vSetReminderALT checked%SetReminderALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2575 vSetReminderSHIFT checked%SetReminderSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2575 vSetReminderWIN checked%SetReminderWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Create a Task
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2605 w300 h25, Create a Task ; r+30
Gui, 7:Add, Text, x405 y2605 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2600 w20 h25 Limit2 vCreateTask, %CreateTask% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2604 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2605 vCreateTaskCTRL checked%CreateTaskCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2605 vCreateTaskALT checked%CreateTaskALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2605 vCreateTaskSHIFT checked%CreateTaskSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2605 vCreateTaskWIN checked%CreateTaskWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Create an Appointment
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2635 w300 h25, Create an Appointment ; r+30
Gui, 7:Add, Text, x405 y2635 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2630 w20 h25 Limit2 vNewAppointment, %NewAppointment% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2634 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2635 vNewAppointmentCTRL checked%NewAppointmentCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2635 vNewAppointmentALT checked%NewAppointmentALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2635 vNewAppointmentSHIFT checked%NewAppointmentSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2635 vNewAppointmentWIN checked%NewAppointmentWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Create a new Task from an Email
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2665 w300 h25, Create a new Task from an Email ; r+30
Gui, 7:Add, Text, x405 y2665 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2660 w20 h25 Limit2 vTaskFromEmail, %TaskFromEmail% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2664 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2665 vTaskFromEmailCTRL checked%TaskFromEmailCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2665 vTaskFromEmailALT checked%TaskFromEmailALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2665 vTaskFromEmailSHIFT checked%TaskFromEmailSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2665 vTaskFromEmailWIN checked%TaskFromEmailWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Create a new Task in email folder
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2695 w300 h25, Create a new Task in email folder ; r+30
Gui, 7:Add, Text, x405 y2695 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2690 w20 h25 Limit2 vNewTaskInEmail, %NewTaskInEmail% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2694 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2695 vNewTaskInEmailCTRL checked%NewTaskInEmailCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2695 vNewTaskInEmailALT checked%NewTaskInEmailALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2695 vNewTaskInEmailSHIFT checked%NewTaskInEmailSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2695 vNewTaskInEmailWIN checked%NewTaskInEmailWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Filter for unread emails
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2725 w300 h25, Filter for unread emails ; r+30
Gui, 7:Add, Text, x405 y2725 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2720 w20 h25 Limit2 vShowUnread, %ShowUnread% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2724 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2725 vShowUnreadCTRL checked%ShowUnreadCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2725 vShowUnreadALT checked%ShowUnreadALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2725 vShowUnreadSHIFT checked%ShowUnreadSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2725 vShowUnreadWIN checked%ShowUnreadWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Show unread emails in all folders
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2755 w300 h25, Show unread emails in all folders ; r+30
Gui, 7:Add, Text, x405 y2755 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2750 w20 h25 Limit2 vShowAllUnread, %ShowAllUnread% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2754 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2755 vShowAllUnreadCTRL checked%ShowAllUnreadCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2755 vShowAllUnreadALT checked%ShowAllUnreadALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2755 vShowAllUnreadSHIFT checked%ShowAllUnreadSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2755 vShowAllUnreadWIN checked%ShowAllUnreadWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Focus on search bar
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2785 w300 h25, Focus on search bar ; r+30
Gui, 7:Add, Text, x405 y2785 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2780 w20 h25 Limit2 vFocusOnSearch, %FocusOnSearch% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2784 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2785 vFocusOnSearchCTRL checked%FocusOnSearchCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2785 vFocusOnSearchALT checked%FocusOnSearchALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2785 vFocusOnSearchSHIFT checked%FocusOnSearchSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2785 vFocusOnSearchWIN checked%FocusOnSearchWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Search for emails in all folders
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2815 w300 h25, Search for emails in all folders ; r+30
Gui, 7:Add, Text, x405 y2815 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2810 w20 h25 Limit2 vSearchAll, %SearchAll% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2814 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2815 vSearchAllCTRL checked%SearchAllCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2815 vSearchAllALT checked%SearchAllALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2815 vSearchAllSHIFT checked%SearchAllSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2815 vSearchAllWIN checked%SearchAllWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Open the context menu
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2845 w300 h25, Open the context menu ; r+30
Gui, 7:Add, Text, x405 y2845 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2840 w20 h25 Limit2 vOpenContextMenu, %OpenContextMenu% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2844 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2845 vOpenContextMenuCTRL checked%OpenContextMenuCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2845 vOpenContextMenuALT checked%OpenContextMenuALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2845 vOpenContextMenuSHIFT checked%OpenContextMenuSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2845 vOpenContextMenuWIN checked%OpenContextMenuWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Open the Address Book
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2875 w300 h25, Open the Address Book ; r+30
Gui, 7:Add, Text, x405 y2875 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2870 w20 h25 Limit2 vOpenAddressBook, %OpenAddressBook% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2874 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2875 vOpenAddressBookCTRL checked%OpenAddressBookCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2875 vOpenAddressBookALT checked%OpenAddressBookALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2875 vOpenAddressBookSHIFT checked%OpenAddressBookSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2875 vOpenAddressBookWIN checked%OpenAddressBookWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Close secondary windows
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2905 w300 h25, Close secondary windows ; r+30
Gui, 7:Add, Text, x405 y2905 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2900 w20 h25 Limit2 vCloseWindow, %CloseWindow% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2904 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2905 vCloseWindowCTRL checked%CloseWindowCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2905 vCloseWindowALT checked%CloseWindowALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2905 vCloseWindowSHIFT checked%CloseWindowSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2905 vCloseWindowWIN checked%CloseWindowWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Reminders by Hours
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x30 y+30 w300 h20, Reminders by Hours

; Set a Reminder for 30 mins
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y2975 w300 h25, Set a Reminder for 30 mins ; r+30
Gui, 7:Add, Text, x405 y2975 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y2970 w20 h25 Limit2 vRemind30mins, %Remind30mins% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y2974 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y2975 vRemind30minsCTRL checked%Remind30minsCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y2975 vRemind30minsALT checked%Remind30minsALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y2975 vRemind30minsSHIFT checked%Remind30minsSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y2975 vRemind30minsWIN checked%Remind30minsWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 1 hour
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3005 w300 h25, Set a Reminder for 1 hour ; r+30
Gui, 7:Add, Text, x405 y3005 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3000 w20 h25 Limit2 vRemind1hour, %Remind1hour% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3004 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3005 vRemind1hourCTRL checked%Remind1hourCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3005 vRemind1hourALT checked%Remind1hourALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3005 vRemind1hourSHIFT checked%Remind1hourSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3005 vRemind1hourWIN checked%Remind1hourWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 2 hours
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3035 w300 h25, Set a Reminder for 2 hours ; r+30
Gui, 7:Add, Text, x405 y3035 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3030 w20 h25 Limit2 vRemind2hours, %Remind2hours% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3034 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3035 vRemind2hoursCTRL checked%Remind2hoursCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3035 vRemind2hoursALT checked%Remind2hoursALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3035 vRemind2hoursSHIFT checked%Remind2hoursSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3035 vRemind2hoursWIN checked%Remind2hoursWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 3 hours
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3065 w300 h25, Set a Reminder for 3 hours ; r+30
Gui, 7:Add, Text, x405 y3065 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3060 w20 h25 Limit2 vRemind3hours, %Remind3hours% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3064 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3065 vRemind3hoursCTRL checked%Remind3hoursCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3065 vRemind3hoursALT checked%Remind3hoursALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3065 vRemind3hoursSHIFT checked%Remind3hoursSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3065 vRemind3hoursWIN checked%Remind3hoursWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 4 hours
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3095 w300 h25, Set a Reminder for 4 hours ; r+30
Gui, 7:Add, Text, x405 y3095 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3090 w20 h25 Limit2 vRemind4hours, %Remind4hours% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3094 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3095 vRemind4hoursCTRL checked%Remind4hoursCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3095 vRemind4hoursALT checked%Remind4hoursALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3095 vRemind4hoursSHIFT checked%Remind4hoursSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3095 vRemind4hoursWIN checked%Remind4hoursWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 5 hours
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3125 w300 h25, Set a Reminder for 5 hours ; r+30
Gui, 7:Add, Text, x405 y3125 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3120 w20 h25 Limit2 vRemind5hours, %Remind5hours% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3124 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3125 vRemind5hoursCTRL checked%Remind5hoursCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3125 vRemind5hoursALT checked%Remind5hoursALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3125 vRemind5hoursSHIFT checked%Remind5hoursSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3125 vRemind5hoursWIN checked%Remind5hoursWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 6 hours
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3155 w300 h25, Set a Reminder for 6 hours ; r+30
Gui, 7:Add, Text, x405 y3155 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3150 w20 h25 Limit2 vRemind6hours, %Remind6hours% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3154 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3155 vRemind6hoursCTRL checked%Remind6hoursCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3155 vRemind6hoursALT checked%Remind6hoursALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3155 vRemind6hoursSHIFT checked%Remind6hoursSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3155 vRemind6hoursWIN checked%Remind6hoursWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 7 hours
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3185 w300 h25, Set a Reminder for 7 hours ; r+30
Gui, 7:Add, Text, x405 y3185 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3180 w20 h25 Limit2 vRemind7hours, %Remind7hours% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3184 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3185 vRemind7hoursCTRL checked%Remind7hoursCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3185 vRemind7hoursALT checked%Remind7hoursALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3185 vRemind7hoursSHIFT checked%Remind7hoursSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3185 vRemind7hoursWIN checked%Remind7hoursWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 8 hours
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3215 w300 h25, Set a Reminder for 8 hours ; r+30
Gui, 7:Add, Text, x405 y3215 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3210 w20 h25 Limit2 vRemind8hours, %Remind8hours% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3214 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3215 vRemind8hoursCTRL checked%Remind8hoursCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3215 vRemind8hoursALT checked%Remind8hoursALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3215 vRemind8hoursSHIFT checked%Remind8hoursSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3215 vRemind8hoursWIN checked%Remind8hoursWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 9 hours
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3245 w300 h25, Set a Reminder for 9 hours ; r+30
Gui, 7:Add, Text, x405 y3245 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3240 w20 h25 Limit2 vRemind9hours, %Remind9hours% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3244 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3245 vRemind9hoursCTRL checked%Remind9hoursCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3245 vRemind9hoursALT checked%Remind9hoursALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3245 vRemind9hoursSHIFT checked%Remind9hoursSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3245 vRemind9hoursWIN checked%Remind9hoursWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Reminders by Days
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x30 y+30 w300 h20, Reminders by Days

; Set a Reminder for 1 day
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3315 w300 h25, Set a Reminder for 1 day ; r+30
Gui, 7:Add, Text, x405 y3315 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3310 w20 h25 Limit2 vRemind1day, %Remind1day% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3314 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3315 vRemind1dayCTRL checked%Remind1dayCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3315 vRemind1dayALT checked%Remind1dayALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3315 vRemind1daySHIFT checked%Remind1daySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3315 vRemind1dayWIN checked%Remind1dayWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 2 days
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3345 w300 h25, Set a Reminder for 2 days ; r+30
Gui, 7:Add, Text, x405 y3345 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3340 w20 h25 Limit2 vRemind2days, %Remind2days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3344 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3345 vRemind2daysCTRL checked%Remind2daysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3345 vRemind2daysALT checked%Remind2daysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3345 vRemind2daysSHIFT checked%Remind2daysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3345 vRemind2daysWIN checked%Remind2daysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 3 days
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3375 w300 h25, Set a Reminder for 3 days ; r+30
Gui, 7:Add, Text, x405 y3375 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3370 w20 h25 Limit2 vRemind3days, %Remind3days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3374 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3375 vRemind3daysCTRL checked%Remind3daysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3375 vRemind3daysALT checked%Remind3daysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3375 vRemind3daysSHIFT checked%Remind3daysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3375 vRemind3daysWIN checked%Remind3daysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 4 days
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3405 w300 h25, Set a Reminder for 4 days ; r+30
Gui, 7:Add, Text, x405 y3405 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3400 w20 h25 Limit2 vRemind4days, %Remind4days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3404 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3405 vRemind4daysCTRL checked%Remind4daysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3405 vRemind4daysALT checked%Remind4daysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3405 vRemind4daysSHIFT checked%Remind4daysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3405 vRemind4daysWIN checked%Remind4daysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 5 days
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3435 w300 h25, Set a Reminder for 5 days ; r+30
Gui, 7:Add, Text, x405 y3435 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3430 w20 h25 Limit2 vRemind5days, %Remind5days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3434 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3435 vRemind5daysCTRL checked%Remind5daysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3435 vRemind5daysALT checked%Remind5daysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3435 vRemind5daysSHIFT checked%Remind5daysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3435 vRemind5daysWIN checked%Remind5daysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 6 days
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3465 w300 h25, Set a Reminder for 6 days ; r+30
Gui, 7:Add, Text, x405 y3465 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3460 w20 h25 Limit2 vRemind6days, %Remind6days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3464 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3465 vRemind6daysCTRL checked%Remind6daysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3465 vRemind6daysALT checked%Remind6daysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3465 vRemind6daysSHIFT checked%Remind6daysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3465 vRemind6daysWIN checked%Remind6daysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 7 days
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3495 w300 h25, Set a Reminder for 7 days ; r+30
Gui, 7:Add, Text, x405 y3495 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3490 w20 h25 Limit2 vRemind7days, %Remind7days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3494 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3495 vRemind7daysCTRL checked%Remind7daysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3495 vRemind7daysALT checked%Remind7daysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3495 vRemind7daysSHIFT checked%Remind7daysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3495 vRemind7daysWIN checked%Remind7daysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Reminders by Days and Archive
Gui, 7:Font, s10 normal bold, Tahoma
Gui, 7:Add, Text, x30 y+30 w300 h20, Reminders by Days and Archive

; Folder to Move messages to after setting the reminder
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3565 w400 h25, Folder to Move messages to after setting the reminder ; r+30
Gui, 7:Add, Edit, x455 y3560 w263 h25 vRmndAndMoveFoldr, %RmndAndMoveFoldr% ; r+0

; Set a Reminder for 1 day and archive
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3595 w300 h25, Set a Reminder for 1 day and archive ; r+30
Gui, 7:Add, Text, x405 y3595 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3590 w20 h25 Limit2 vRmndAndMove1Day, %RmndAndMove1Day% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3594 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3595 vRmndAndMove1DayCTRL checked%RmndAndMove1DayCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3595 vRmndAndMove1DayALT checked%RmndAndMove1DayALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3595 vRmndAndMove1DaySHIFT checked%RmndAndMove1DaySHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3595 vRmndAndMove1DayWIN checked%RmndAndMove1DayWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 2 days and archive
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3625 w300 h25, Set a Reminder for 2 days and archive ; r+30
Gui, 7:Add, Text, x405 y3625 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3620 w20 h25 Limit2 vRmndAndMove2Days, %RmndAndMove2Days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3624 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3625 vRmndAndMove2DaysCTRL checked%RmndAndMove2DaysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3625 vRmndAndMove2DaysALT checked%RmndAndMove2DaysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3625 vRmndAndMove2DaysSHIFT checked%RmndAndMove2DaysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3625 vRmndAndMove2DaysWIN checked%RmndAndMove2DaysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 3 days and archive
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3655 w300 h25, Set a Reminder for 3 days and archive ; r+30
Gui, 7:Add, Text, x405 y3655 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3650 w20 h25 Limit2 vRmndAndMove3Days, %RmndAndMove3Days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3654 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3655 vRmndAndMove3DaysCTRL checked%RmndAndMove3DaysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3655 vRmndAndMove3DaysALT checked%RmndAndMove3DaysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3655 vRmndAndMove3DaysSHIFT checked%RmndAndMove3DaysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3655 vRmndAndMove3DaysWIN checked%RmndAndMove3DaysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 4 days and archive
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3685 w300 h25, Set a Reminder for 4 days and archive ; r+30
Gui, 7:Add, Text, x405 y3685 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3680 w20 h25 Limit2 vRmndAndMove4Days, %RmndAndMove4Days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3684 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3685 vRmndAndMove4DaysCTRL checked%RmndAndMove4DaysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3685 vRmndAndMove4DaysALT checked%RmndAndMove4DaysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3685 vRmndAndMove4DaysSHIFT checked%RmndAndMove4DaysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3685 vRmndAndMove4DaysWIN checked%RmndAndMove4DaysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 5 days and archive
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3715 w300 h25, Set a Reminder for 5 days and archive ; r+30
Gui, 7:Add, Text, x405 y3715 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3710 w20 h25 Limit2 vRmndAndMove5Days, %RmndAndMove5Days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3714 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3715 vRmndAndMove5DaysCTRL checked%RmndAndMove5DaysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3715 vRmndAndMove5DaysALT checked%RmndAndMove5DaysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3715 vRmndAndMove5DaysSHIFT checked%RmndAndMove5DaysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3715 vRmndAndMove5DaysWIN checked%RmndAndMove5DaysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 6 days and archive
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3745 w300 h25, Set a Reminder for 6 days and archive ; r+30
Gui, 7:Add, Text, x405 y3745 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3740 w20 h25 Limit2 vRmndAndMove6Days, %RmndAndMove6Days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3744 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3745 vRmndAndMove6DaysCTRL checked%RmndAndMove6DaysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3745 vRmndAndMove6DaysALT checked%RmndAndMove6DaysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3745 vRmndAndMove6DaysSHIFT checked%RmndAndMove6DaysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3745 vRmndAndMove6DaysWIN checked%RmndAndMove6DaysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

; Set a Reminder for 7 days and archive
Gui, 7:Font, s10 normal, Tahoma
Gui, 7:Add, Text, x30  y3775 w300 h25, Set a Reminder for 7 days and archive ; r+30
Gui, 7:Add, Text, x405 y3775 w70  h25, Hotkey ; r+0
Gui, 7:Add, Edit, x455 y3770 w20 h25 Limit2 vRmndAndMove7Days, %RmndAndMove7Days% ; r+0
Gui, 7:Font, s8 normal, Tahoma
Gui, 7:Add, Text, x480 y3774 w10 h25, + ; r+5
Gui, 7:Add, Checkbox, x495 y3775 vRmndAndMove7DaysCTRL checked%RmndAndMove7DaysCTRL%, %A_Space%CTRL + ; r+0
Gui, 7:Add, Checkbox, x560 y3775 vRmndAndMove7DaysALT checked%RmndAndMove7DaysALT%, %A_Space%ALT + ; r+0
Gui, 7:Add, Checkbox, x612 y3775 vRmndAndMove7DaysSHIFT checked%RmndAndMove7DaysSHIFT%, %A_Space%SHIFT + ; r+0
Gui, 7:Add, Checkbox, x677 y3775 vRmndAndMove7DaysWIN checked%RmndAndMove7DaysWIN%, %A_Space%WIN ; r+0
Gui, 7:Font, s10 normal, Tahoma

Gui, 7:Add, Button, x350, Save and Reload

Gui, 7:Show, h762 w760, AutoGTD Hotkey Editor
Gui, 7:+LastFound
GroupAdd, EditorGui, % "ahk_id " . WinExist()

OnMessage(0x115, "OnScroll") ; WM_VSCROLL
OnMessage(0x114, "OnScroll") ; WM_HSCROLL

Return

7GuiSize:
    UpdateScrollBars(A_Gui, A_GuiWidth, A_GuiHeight)
return

7GuiClose:
	Gui, Destroy
Return
