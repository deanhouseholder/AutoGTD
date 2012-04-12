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
