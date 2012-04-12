;*******************************************************************************
;				Functions
;*******************************************************************************

CustomFilter(Name, Hotkey, Search, Folder, Read, NormalKey) {
	if SafeToRunMacro()
	{
		Global AppName, INIOutlookVersion, CustomWaitTime, ININame
		;TrayTip, Timed TrayTip, updated %AppName% Program
		;ToolTip, `n`n`tCurrently Processing Macro: %Name%`t`t`n`n`t`tPress CTRL+Shift+` if the macro fails.`n`n `n, % A_ScreenWidth//2-232, A_ScreenHeight//2-55
		IfExist, %A_temp%\%AppName%400x64.gif, SplashImage, %A_temp%\%AppName%400x64.gif, b1 cwffffff ct000000 fm16 wm550 fs10 ws550 y10, Currently Processing Macro: %Name%, %AppName%, , Arial
		Progress, 15 WM400 FS8,, %AppName% is currently Processing Macro:`n%Name%,Processing, Arial

		Send, ^e%Search%{ENTER}
		SleepTime := CustomWaitTime * 1000
		Progress, 30,,,Processing - Waiting %CustomWaitTime% seconds for search results
		Sleep, %SleepTime% ; Give time for the search to finish

		;Removed because it wasn't necessary
		;if (INIOutlookVersion = "2007"){
		;	ControlFocus, SUPERGRID1, Microsoft Outlook
		;} else if (INIOutlookVersion = "2010") {
		;	ControlFocus, SUPERGRID2, Microsoft Outlook
		;}
		; if tasks are not visible when starting outlook, the message list is supergrid1
		; if tasks are visible when starting outlook, the message list is supergrid2 instead of supergrid1
		; if tasks are made visible after starting outlook, the message list stays supergrid1 and tasks becomes supergrid2
		ControlFocus, SUPERGRID1, Microsoft Outlook
		ControlFocus, SUPERGRID2, Microsoft Outlook

		Sleep, 300
		Progress, 45,,,Processing
		Send, ^a
		Sleep, 100
		Progress, 60,,,Processing - Checking for matches
		If (Read = 1)
		{
			Send, ^q
			Sleep, 200
		}
		Progress, 75
		Send, ^+v
		Sleep, 200
		Progress, 83
		Status1 := WinWaitFull("Move Items"),
		If (Status1 = 0) {
			Send, {HOME}{NumpadMult}%Folder%{ENTER}
			Progress, 100
		} Else {
			Progress, 75, ,,Canceling - No Matches Found
			SplashImage, %A_temp%\%AppName%400x64.gif, b1 cwffffff ct000000 fm16 wm550 fs10 ws550 y10, Macro Failed: %Name%`nPlease try again., %AppName% - Macro Failed!, , Arial
			Sleep, 70
			Progress, 60
			Sleep, 70
			Progress, 45
			Sleep, 70
			Progress, 30
			Sleep, 70
			Progress, 15
			Sleep, 70
			Progress, 0
			Sleep, 300
			Progress, Off
			MsgBox,,  Macro Failed,No email matches were found.`n`nIf this happens frequently`, try increasing the CustomWaitTime value in the %ININame% file. `n`nIf still no results are returned`, check to see if your "Windows Search" Service is running. You may need to restart Outlook after starting the service.
		}
		Status2 := WinWaitFull("Microsoft Outlook"),
		If (Status2 = 0)
		{
			Sleep, 200
			Send, ^e{TAB}{ENTER}
		}
		;Progress, 100, ,,Progress
		SplashImage, Off
		;ToolTip
		;TrayTip
		Progress, Off
	} else {
		Send %NormalKey%
	}
}

MoveSelected(Folder, NormalKey) {
	if SafeToRunMacro()
	{
		Send, ^+v
		WinWaitFull("Move Items"),
		Send, {HOME}{NumpadMult}%Folder%{ENTER}
	} else {
		Send, %NormalKey%
	}
}

JumpToFolder(Folder, NormalKey) {
	if SafeToRunMacro()
	{
		Send, ^y
		WinWaitFull("Go to Folder"),
		Send, {HOME}{NumpadMult}%Folder%{ENTER}
	} else {
		Send %NormalKey%
	}
}

FocusOnInbox() {
	WinWaitFull("Microsoft Outlook")
	Send, ^1
	Sleep, 100
	ControlFocus, SUPERGRID1, Microsoft Outlook
	ControlFocus, SUPERGRID2, Microsoft Outlook
}

CreateTaskFromEmail() {
	Static Task
	ActionBoxXY := CenterBox(350, 75)
	Gui, 1:Font, S10 CDefault, Calibri
	Gui, 1:Add, Text, x10 y10 w350 h25, What's the Next Action? (start with a verb)

	Gui, 1:Font, S14 CDefault, Calibri
	Gui, 1:Add, Edit, vTask x10 y40 w330 h30,

	Gui, 1:Font, S10 CDefault w800, Calibri
	Gui, 1:Add, Text, , Suggestions:
	Gui, 1:Font, S9 CDefault w400, Calibri
	Gui, 1:Add, Text, , Call...  Email...  Agenda...  Write...  Research...  `nBrainstorm...  Talk-To...  Schedule...  Plan

	Gui, 1:Font, S10 CDefault w800, Calibri
	Gui, 1:Add, Text, , Avoid:
	Gui, 1:Font, S9 CDefault w400, Calibri
	Gui, 1:Add, Text, , Look into...  Decide...  Vague wording

	Gui, 1:Add, Button, Hidden Default, OK
	Gui, 1:Show, %ActionBoxXY% h225 w350, Creating task from Email
	Return

	GuiEscape:
	GuiClose:
	Gui, 1:Destroy
	;Return

	ButtonOK:
	Gui, 1:Submit
	Gui, 1:Destroy

	Send, ^t
	WinWaitFull("Discussion")
	Send, %task%
	Send, !hwa

	Send, !hg2a
	WinWaitFull("Color Categories")
	WinGetPos, CatX, CatY, , , Color Categories
	Gui 2:-Caption +ToolWindow +AlwaysOnTop +Border
	Gui 2:Color, Yellow
	Gui 2:Font, s12 c000000 Bold, Calibri
	Gui 2:Add, Text, , Select a Context
	Gui 2:Show, % "x" CatX+2 " y" CatY+2 h500 w200
	WinWaitFull("Color Categories")
	WinWaitActive, Discussion

	Send, !s
	Gui 2:Destroy
	WinWaitFull("Outlook")
	Return
}
