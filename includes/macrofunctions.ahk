;*******************************************************************************
;				Functions
;*******************************************************************************


CustomFilter(Name, Hotkey, Search, Folder, Read, NormalKey) {
	if SafeToRunMacro()
	{
		Global AppName
		;TrayTip, Timed TrayTip, updated %AppName% Program
		;ToolTip, `n`n`tCurrently Processing Macro: %Name%`t`t`n`n`t`tPress CTRL+Shift+` if the macro fails.`n`n `n, % A_ScreenWidth//2-232, A_ScreenHeight//2-55
		SplashImage, %temp%\%AppName%400x64.gif, b1 cwffffff ct000000 fm16 wm550 fs10 ws550, Currently Processing Macro: %Name%`n`nPress CTRL+Shift+`` if the macro fails.`n, %AppName%, , Arial
		Send, {F3}%Search%{ENTER}
		Sleep, 1000
		Send, {F6}
		Sleep, 200
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
			Send, {HOME}Inbox{RIGHT}%Folder%{ENTER}
		Else {
			SplashImage, %temp%\%AppName%400x64.gif, b1 cwffffff ct000000 fm16 wm550 fs10 ws550, Macro Failed: %Name%`nPlease try again.`nPress CTRL+Shift+`` if the macro fails.`n, %AppName% - Macro Failed!, , Arial
			Sleep, 2000
		}
		Status2 := WinWaitFull("Microsoft Outlook"),
		If (Status2 = 0)
		{
			Sleep, 200
			Send, {F3}{TAB}{ENTER}
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
		Send, {HOME}inbox{RIGHT}{HOME}%Folder%{ENTER}
	} else {
		Send, %NormalKey%
	}
}

JumpToFolder(Folder, NormalKey) {
	if SafeToRunMacro()
	{
		Global JumpToRun
		Send, ^1{HOME}
		Sleep, 500
		if (JumpToRun = 0)
		{
			Send, {HOME}Inbox{RIGHT}{HOME}
			Sleep, 500
			JumpToRun := 1
		}
		Send, %Folder%{SPACE}
	} else {
		Send %NormalKey%
	}
}

JumpToFolder2(Folder, NormalKey) {
	if SafeToRunMacro()
	{
		Send, ^y
		WinWaitFull("Go to Folder"),
		Send, {HOME}inbox{RIGHT}{HOME}%Folder%{ENTER}
	} else {
		Send %NormalKey%
	}
}
