;*******************************************************************************
;				Mapped Hotkeys
;*******************************************************************************

; Press CTRL+Shift+` to reload the program
^+`::
	SplashImage, %A_temp%\%AppName%400x64.gif, b1 cwffffff ct000000 fm16 wm550 fs12 ws550, Program Settings Reloaded`n, %AppName%, , Arial
	Sleep, 500
	SplashImage, Off
	Reload
Return

; Reload the script automatically whenever CTRL+s is pressed in editor
~^s::
	IfWinActive, %AppName%
		Reload
Return

; CTRL+Shift+Space to view Cheat Sheet
^+Space::
	GoSub, CheatSheetHelper
Return

; Shortcut to view the status of the JumpToRun value
^!+w::
	if SafeToRunMacro()
		MsgBox, JumpToRun value: %JumpToRun%
Return

; Jump to Outlook - Focus on inbox message view
^+i::FocusOnInbox()

; CTRL+SHIFT+2 to pop open a new calendar window
