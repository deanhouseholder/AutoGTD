;*******************************************************************************
;				Functions
;*******************************************************************************

CustomFilter(Name, Hotkey, Search, Folder, Read, NormalKey) {
	if SafeToRunMacro()
	{
		Global AppName, INIOutlookVersion
		;TrayTip, Timed TrayTip, updated %AppName% Program
		;ToolTip, `n`n`tCurrently Processing Macro: %Name%`t`t`n`n`t`tPress CTRL+Shift+` if the macro fails.`n`n `n, % A_ScreenWidth//2-232, A_ScreenHeight//2-55
		SplashImage, %A_temp%\%AppName%400x64.gif, b1 cwffffff ct000000 fm16 wm550 fs10 ws550, Currently Processing Macro: %Name%`n`nPress CTRL+Shift+`` if the macro fails.`n, %AppName%, , Arial
		Send, ^e%Search%{ENTER}
		Sleep, 2500 ; Give time for the search to finish (might be too short)
		if (INIOutlookVersion = "2007"){
			ControlFocus, SUPERGRID1, Microsoft Outlook
		} else if (INIOutlookVersion = "2010") {
			ControlFocus, SUPERGRID2, Microsoft Outlook
		}
; if tasks are not visible when starting outlook, the message list is supergrid1
; if tasks are visible when starting outlook, the message list is supergrid2 instead of supergrid1
; if tasks are made visible after starting outlook, the message list stays supergrid1 and tasks becomes supergrid2
		ControlFocus, SUPERGRID1, Microsoft Outlook
		ControlFocus, SUPERGRID2, Microsoft Outlook

		Sleep, 300
		Send, ^a
		Sleep, 100
		If (Read = 1)
		{
			Send, ^q
			Sleep, 200
		}
		Send, ^+v
		Sleep, 200
		Status1 := WinWaitFull("Move Items"),
		If (Status1 = 0)
			Send, {HOME}{NumpadMult}%Folder%{ENTER}
		Else {
			SplashImage, %A_temp%\%AppName%400x64.gif, b1 cwffffff ct000000 fm16 wm550 fs10 ws550, Macro Failed: %Name%`nPlease try again.`nPress CTRL+Shift+`` if the macro fails.`n, %AppName% - Macro Failed!, , Arial
			Sleep, 2000
		}
		Status2 := WinWaitFull("Microsoft Outlook"),
		If (Status2 = 0)
		{
			Sleep, 200
			Send, ^e{TAB}{ENTER}
		}
		SplashImage, Off
		;ToolTip
		;TrayTip
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
		Global JumpToRun, INIOutlookVersion
		MsgBox %INIOutlookVersion%
		if (INIOutlookVersion = "2007")
		{
			ControlFocus, NetUIHWND1, Microsoft Outlook
		}
		else if (INIOutlookVersion = "2010")
		{
			ControlFocus, NetUIHWND4, Microsoft Outlook
		}
		Send, {HOME}{NumpadMult}%Folder%{SPACE}
		Sleep, 200
		FocusOnInbox()
	} else {
		Send %NormalKey%
	}
}

JumpToFolder2(Folder, NormalKey) {
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
