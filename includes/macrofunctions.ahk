;*******************************************************************************
;				Functions
;*******************************************************************************

CustomFilter(Name, Hotkey, Search, Folder, Read, NormalKey) {
	if SafeToRunMacro()	{
		Global AppName, INIOutlookVersion, CustomWaitTime, ININame, INIScript

		WinGetPos, x, y, w, h, Outlook ahk_class rctrl_renwnd32
		GuiX := x+(w/2)-211
		GuiY := y+(h/2)-85
		SleepMSecs = 7
		SleepTime := CustomWaitTime * 1000

		Gui, 5:Show, X%GuiX% Y%GuiY%

		ControlFocus, SUPERGRID1, Outlook ahk_class rctrl_renwnd32
		ControlFocus, SUPERGRID2, Outlook ahk_class rctrl_renwnd32
		ControlFocus, OutlookGrid1, Outlook ahk_class rctrl_renwnd32

		GuiControl, 5:, CustomMacroText, Processing...
		Loop, 15 { ; 1-15%
			GuiControl, 5:, ProgressBar, %A_Index%
			Sleep, %SleepMSecs%
		}

		SendInput, ^e{F3} ; Added F3 for safe measure because sometimes it wouldn't focuse on the search bar

		if (INIOutlookVersion >= "2010"){
			SendInput, {TAB 2}{SPACE}{HOME}{ENTER}
		}

		SendInput, %Search%{ENTER}

		GuiControl, 5:, CustomMacroText, Processing - Waiting for %CustomWaitTime% seconds for search results
		Loop, 15 { ; 16-30%
			GuiControl, 5:, ProgressBar, % 15+A_Index
			Sleep, %SleepMSecs%
		}

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
		ControlFocus, SUPERGRID1, Outlook ahk_class rctrl_renwnd32
		ControlFocus, SUPERGRID2, Outlook ahk_class rctrl_renwnd32
		ControlFocus, OutlookGrid1, Outlook ahk_class rctrl_renwnd32

		; http://blogs.msdn.com/b/thomsven/archive/2013/03/01/how-to-get-complete-search-results-in-outlook-2013.aspx

		Sleep, 300

		GuiControl, 5:, CustomMacroText, Processing...
		Loop, 15 { ; 31-45%
			GuiControl, 5:, ProgressBar, % 30+A_Index
			Sleep, %SleepMSecs%
		}
		SendInput, ^a
		Sleep, 100

		GuiControl, 5:, CustomMacroText, Processing - Checking for matches
		Loop, 15 { ; 46-60%
			GuiControl, 5:, ProgressBar, % 45+A_Index
			Sleep, %SleepMSecs%
		}
		If (Read = 1)
		{
			SendInput, ^q
			Sleep, 200
		}

		GuiControl, 5:, CustomMacroText, Selecting messages
		Loop, 15 { ; 61-75%
			GuiControl, 5:, ProgressBar, % 60+A_Index
			Sleep, %SleepMSecs%
		}
		SendInput, ^+v
		Sleep, 200

		GuiControl, 5:, CustomMacroText, Verifying selected messages
		Loop, 15 { ; 76-90%
			GuiControl, 5:, ProgressBar, % 75+A_Index
			Sleep, %SleepMSecs%
		}

		; If the "Move Items" window doesn't show up, then roll back
		Status1 := WinWaitFullFast("Move Items")

		If (!ErrorLevel) {
			SendInput, {HOME}{NumpadMult}%Folder%{ENTER}
			GuiControl, 5:, CustomMacroText, Finishing
			Loop, 10 { ; 90-100%
				GuiControl, 5:, ProgressBar, % 90+A_Index
				Sleep, %SleepMSecs%
			}
			worked := 1
			Gui, 5:Cancel
		} Else {
			GuiControl, 5:, CustomMacroText, Canceling - No Matches Found
			Loop, 90 { ; 90-0%
				GuiControl, 5:, ProgressBar, % 90-A_Index
				Sleep, %SleepMSecs%
			}

			GuiControl, 5:, CustomMacroText, Macro Failed:`n%Name%`n`nPlease try again.
			Sleep, 200

			Gui, 5:Cancel
			GoSub, ShowGuiFailed
			worked := 0
		}
		Status2 := WinWaitFull("Outlook ahk_class rctrl_renwnd32"),
		If (Status2 = 0)
		{
			Sleep, 200
			SendInput, ^e{ESC}
		}
		If (worked == 0) {
			WinWaitFull("Macro Failed")
		}
	} else {
		Send %NormalKey%
	}
}

ShortFilter(Search, NormalKey) {
	if SafeToRunMacro()	{
		SendInput, ^e%Search%{ENTER}
		Sleep, 750
		ControlFocus, SUPERGRID1, Outlook ahk_class rctrl_renwnd32
		ControlFocus, SUPERGRID2, Outlook ahk_class rctrl_renwnd32
		ControlFocus, OutlookGrid1, Outlook ahk_class rctrl_renwnd32
	} else {
		Send %NormalKey%
	}
}

ShortFilterAll(Search, NormalKey) {
	if SafeToRunMacro()	{
		SendInput, ^!a
		SendInput, ^e%Search%{ENTER}
		Sleep, 750
		ControlFocus, SUPERGRID1, Outlook ahk_class rctrl_renwnd32
		ControlFocus, SUPERGRID2, Outlook ahk_class rctrl_renwnd32
		ControlFocus, OutlookGrid1, Outlook ahk_class rctrl_renwnd32
	} else {
		Send %NormalKey%
	}
}

MoveSelected(Folder, NormalKey) {
	if SafeToRunMacro()	{
		SendInput, ^+v
		WinWaitFull("Move Items"),
		SendInput, {HOME}{NumpadMult}%Folder%{ENTER}
	} else {
		SendInput, %NormalKey%
	}
}

JumpToFolder(Folder, NormalKey) {
	if SafeToRunMacro()	{
		SendInput, ^y
		WinWaitFull("Go to Folder"),
		SendInput, {HOME}{NumpadMult}%Folder%{ENTER}
	} else {
		Send %NormalKey%
	}
}

FocusOnInbox() {
	WinWaitFull("Outlook")
	SendInput, ^1
	Sleep, 100
	ControlFocus, SUPERGRID1, Outlook ahk_class rctrl_renwnd32
	ControlFocus, SUPERGRID2, Outlook ahk_class rctrl_renwnd32
		ControlFocus, OutlookGrid1, Outlook ahk_class rctrl_renwnd32
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
		Reload
	Return

	ButtonOK:
	Gui, 1:Submit
	Gui, 1:Destroy

	SendInput, ^t
	WinWaitFull("Discussion")
	SendInput, %task%
	SendInput, !hwa

	SendInput, !hg2a
	WinWaitFull("Color Categories")
	WinGetPos, CatX, CatY, , , Color Categories
	Gui 2:-Caption +ToolWindow +AlwaysOnTop +Border
	Gui 2:Color, Yellow
	Gui 2:Font, s12 c000000 Bold, Calibri
	Gui 2:Add, Text, , Select a Context
	Gui 2:Show, % "x" CatX+2 " y" CatY+2 h500 w200
	WinWaitFull("Color Categories")
	WinWaitActive, Discussion

	SendInput, !s
	Gui 2:Destroy
	WinWaitFull("Outlook ahk_class rctrl_renwnd32")
	FocusOnInbox()
	Return
}

SafeClose() {
	if SafeToRunMacroClose()	{
		SendInput, !{F4}
	}
}

RemindHour(i, NormalKey) {
	if SafeToRunMacro()	{
		CheckTime := A_Hour + i
		if (CheckTime >= 24) {
			NewDate := AddTimeDays(1)
		} else {
			NewDate := AddTimeDays(0)
		}
		NewTime := AddTimeHours(i)
		ToolTip, `n`n`tSetting Reminder for %NewDate% %NewTime%`t`t`n`n `n, % A_ScreenWidth//2-175, A_ScreenHeight//2-300
		Sleep, 1000
		FocusOnInbox()
		SendInput, ^+g
		WinWaitFull("Custom")
		if ErrorLevel {
			MsgBox, Failed to set reminder
		} else {
			SendInput, !r{TAB}%NewDate%{TAB}%NewTime%
			Sleep, 100
			SendInput, {ENTER}
		}
		ToolTip
		FocusOnInbox()
	} else {
		Send %NormalKey%
	}
}

RemindDay(i, NormalKey) {
	if SafeToRunMacro()	{
		NewDate := AddTimeDays(i)
		NewTime := AddTimeHours(0)
		FocusOnInbox()
		SendInput, ^+g
		WinWaitFull("Custom")
		if ErrorLevel {
			MsgBox, Failed to set reminder
		} else {
			SendInput, !r{TAB}%NewDate%{TAB}%NewTime%^a
			WinGetPos, X, Y, W, H, Custom
			ToolTip, `n`n`tSetting Reminder for %NewDate% %NewTime%`t`t`n`n`t       Change the time if you prefer and press ENTER.`n, % (W//2)-200, -100
			WinWaitFull("Outlook ahk_class rctrl_renwnd32")
		}
		ToolTip
		FocusOnInbox()
	} else {
		Send %NormalKey%
	}
}

RemindDayAuto(i, NormalKey) {
	if SafeToRunMacro()	{
		NewDate := AddTimeDays(i)
		NewTime := AddTimeHours(0)
		FocusOnInbox()
		SendInput, ^+g
		WinWaitFull("Custom")
		if ErrorLevel {
			MsgBox, Failed to set reminder
		} else {
			SendInput, !r{TAB}%NewDate%{TAB}%NewTime%^a{ENTER}
		}
		FocusOnInbox()
	} else {
		Send %NormalKey%
	}
}
