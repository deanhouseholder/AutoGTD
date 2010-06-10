;*******************************************************************************
;				Information
;*******************************************************************************
;Title:			AutoGTD v0.9
;Date:			6 Jun 2010
;Author:		Dean Householder <deanhouseholder@gmail.com>
; AutoGTD is a set of Outlook Macros to help implement the Getting Things Done 
; concepts into Outlook.  It provides configurable shortcuts which are able to 
; move emails to folders, add categories, reminders, and flags to emails.  It 
; can perform customized searches and then move all remaining emails to a folder.  
; All of these types of actions can be mapped to single character shortcuts that 
; you choose.


;*******************************************************************************
;				Version History
;*******************************************************************************
;6 June 2010 - 0.9 Initial Release

;*******************************************************************************
;				Variables
;*******************************************************************************
VersionString = 0.9
AppName       = AutoGTD
AppNameFull   = AutoGTD - Outlook Hotkeys
AppFileName   = AutoGTD
ININame       = AutoGTD.ini
AuthorName    = Dean Householder
AuthorEmail   = deanhouseholder@gmail.com
AuthorWebsite = http://www.deanhouseholder.com/AutoGTD
JumpToRun := 0
ShortcutFile := A_Startup . "\" . AppName . ".lnk"

;*******************************************************************************
;				Settings
;*******************************************************************************
#SingleInstance ,Force
SetTitleMatchMode 2
#Persistent
SetWorkingDir %A_ScriptDir%

;*******************************************************************************
;				Extract Files
;*******************************************************************************
FileInstall, src\AutoGTD16.ico, %temp%\AutoGTD16.ico, 1
FileInstall, src\AutoGTD128.png, %temp%\AutoGTD128.png, 1
FileInstall, src\AutoGTD400x64.gif, %temp%\AutoGTD400x64.gif, 1

;Check for first run
IfNotExist, %A_ScriptDir%\%ININame%
{
	FileInstall, src\AutoGTDDefault.ini, %A_ScriptDir%\%ININame%, 0
	Msgbox, 4, Welcome to %AppName%, It looks like this is your first time running %AppName%.  Would you like to read the Help?
	IfMsgbox, Yes
	{
		Gosub, LoadStrings
		Gosub, HelpProgram
	}
}

;*******************************************************************************
;				Menu
;*******************************************************************************
Menu, Tray, Icon, %temp%\%AppFileName%16.ico
Menu, Tray, NoStandard
Menu, tray, add, Show Cheat Sheet, HotkeysHelper
Menu, Tray, Add
Menu, Tray, Add, Help, HelpProgram
Menu, Tray, Add, Run %AppName% on Startup, ToggleStartup
Menu, Tray, Add, Reload, ReloadProgram
Menu, Tray, Add, About, AboutProgram
Menu, Tray, Add
Menu, Tray, Add, Exit, CloseProgram
Menu, Tray, Default, Show Cheat Sheet
Menu, Tray, Tip, %AppNameFull%`nDouble-click for current hotkey mappings

;*******************************************************************************
;				Load Subroutines
;*******************************************************************************
Gosub, CheckStartupState
Gosub, LoadPreferences
Gosub, LoadHotkeys
Gosub, LoadStrings

;*******************************************************************************
;				Mapped Hotkeys
;*******************************************************************************

; Press CTRL+Shift+` to reload the script
^+`::
	SplashImage, %temp%\%AppName%400x64.gif, b1 cwffffff ct000000 fm16 wm550 fs12 ws550, Script Reloaded`n, %AppName%, , Arial
	Sleep, 300
	SplashImage, Off
	Reload
Return

^!+w::
	if SafeToRunMacro()
		MsgBox, JumpToRun value: %JumpToRun%
Return

~^s::
	IfWinActive, %A_ScriptName%
		Reload
Return

Return

;*******************************************************************************
;				Functions
;*******************************************************************************

; Function to simplify window activating
WinWaitFull(win) {
	SetWinDelay, 2
	WinWait, %win%, , 2
	If ErrorLevel {
		Return 1
	} else {
		IfWinNotActive, %win%, , WinActivate, %win%
		WinWaitActive, %win%, , 2
		Return 0
	}
}

SafeToRunMacro() {
	IfWinActive, - Microsoft Outlook ahk_class rctrl_renwnd32, NUIDocumentWindow
	{
		ControlGetFocus, CurrentCtrl
		;MsgBox, Current focus: %CurrentCtrl%
		CtrlList = Acrobat Preview Window1,AfxWndW5,AfxWndW6,EXCEL71,MsoCommandBar1,OlkPicturePreviewer1,paneClassDC1, RichEdit20WPT2,RichEdit20WPT4,RichEdit20WPT5,RICHEDIT50W1,SUPERGRID1,_WwG1
		if CurrentCtrl in %CtrlList%
		{
			Return, True
		} else {
			Return, False
		}
	}
}

RunMacro(SpecialKey, NormalKey) {
	if SafeToRunMacro()
	{
		Send %SpecialKey%
	} else {
		Send %NormalKey%
	}
}

CustomFilter(Name, Hotkey, Search, Folder, Read, NormalKey) {
	if SafeToRunMacro()
	{
		Global AppName
		;TrayTip, Timed TrayTip, updated AutoHotkey script
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
			Sleep, 5000
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

;*******************************************************************************
;				Hotkey Labels
;*******************************************************************************

; Outlook Shortcuts
Category1:
	RunMacro("^{F3}", A_ThisHotkey)
Return

Category2:
	RunMacro("^{F4}", A_ThisHotkey)
Return

Category3:
	RunMacro("^{F5}", A_ThisHotkey)
Return

Category4:
	RunMacro("^{F6}", A_ThisHotkey)
Return

Category5:
	RunMacro("^{F7}", A_ThisHotkey)
Return

Category6:
	RunMacro("^{F8}", A_ThisHotkey)
Return

Category7:
	RunMacro("^{F9}", A_ThisHotkey)
Return

Category8:
	RunMacro("^{F10}", A_ThisHotkey)
Return

Category9:
	RunMacro("^{F11}", A_ThisHotkey)
Return

Category10:
	RunMacro("^{F12}", A_ThisHotkey)
Return

OpenCategories:
	RunMacro("!aia", A_ThisHotkey)
Return

Move1ToFolder:
	MoveSelected(Move1Folder, A_ThisHotkey)
Return

Move2ToFolder:
	MoveSelected(Move2Folder, A_ThisHotkey)
Return

Move3ToFolder:
	MoveSelected(Move3Folder, A_ThisHotkey)
Return

Move4ToFolder:
	MoveSelected(Move4Folder, A_ThisHotkey)
Return

Move5ToFolder:
	MoveSelected(Move5Folder, A_ThisHotkey)
Return

Move6ToFolder:
	MoveSelected(Move6Folder, A_ThisHotkey)
Return

Move7ToFolder:
	MoveSelected(Move7Folder, A_ThisHotkey)
Return

Move8ToFolder:
	MoveSelected(Move8Folder, A_ThisHotkey)
Return

Move9ToFolder:
	MoveSelected(Move9Folder, A_ThisHotkey)
Return

CustomFilter1:
	CustomFilter(Filter1Name, Filter1Hotkey, Filter1Search, Filter1Folder, Filter1Read, A_ThisHotkey)
Return

CustomFilter2:
	CustomFilter(Filter2Name, Filter2Hotkey, Filter2Search, Filter2Folder, Filter2Read, A_ThisHotkey)
Return

CustomFilter3:
	CustomFilter(Filter3Name, Filter3Hotkey, Filter3Search, Filter3Folder, Filter3Read, A_ThisHotkey)
Return

CustomFilter4:
	CustomFilter(Filter4Name, Filter4Hotkey, Filter4Search, Filter4Folder, Filter4Read, A_ThisHotkey)
Return

CustomFilter5:
	CustomFilter(Filter5Name, Filter5Hotkey, Filter5Search, Filter5Folder, Filter5Read, A_ThisHotkey)
Return

CustomFilter6:
	CustomFilter(Filter6Name, Filter6Hotkey, Filter6Search, Filter6Folder, Filter6Read, A_ThisHotkey)
Return

JumpToFolder1:
	JumpToFolder(JumpTo1Folder, A_ThisHotkey)
Return

JumpToFolder2:
	JumpToFolder(JumpTo2Folder, A_ThisHotkey)
Return

JumpToFolder3:
	JumpToFolder(JumpTo3Folder, A_ThisHotkey)
Return

JumpToFolder4:
	JumpToFolder(JumpTo4Folder, A_ThisHotkey)
Return

JumpToFolder5:
	JumpToFolder(JumpTo5Folder, A_ThisHotkey)
Return

JumpToFolder6:
	JumpToFolder(JumpTo6Folder, A_ThisHotkey)
Return

JumpToFolder7:
	JumpToFolder(JumpTo7Folder, A_ThisHotkey)
Return

JumpToFolder8:
	JumpToFolder(JumpTo8Folder, A_ThisHotkey)
Return

JumpToFolder9:
	JumpToFolder(JumpTo9Folder, A_ThisHotkey)
Return

JumpToFolder0:
	JumpToFolder(JumpTo0Folder, A_ThisHotkey)
Return

SetReminder:
	RunMacro("!aur", A_ThisHotkey)
Return

CreateTask:
	RunMacro("^+k", A_ThisHotkey)
Return

NewAppointment:
	RunMacro("^+a", A_ThisHotkey)
Return

;*******************************************************************************
;				Labels
;*******************************************************************************

HotkeysHelper:
	MsgBox, 64, %AppNameFull% Cheat Sheet, %CheatSheet%
return

ReloadProgram:
	Reload
Return

HelpProgram:
	Gui, Add, Picture, w128 h-1, %temp%\%AppName%128.png
;   Gui, Add, Text, x5 y30 w20 h16 , %AppName%
	Gui, Add, Text, w800 h600, %HelpProgramText%
	Gui, Show,, %AppNameFull% - Help
Return

AboutProgram:
;	MsgBox %AppNameFull%`nby %AuthorName%`n`n%AuthorEmail%`n`n%AuthorWebsite%`n
   Gui, Add, Text, , %AppNameFull%`n by %AuthorName%
   Gui, Font, underline
   Gui, Add, Text, cBlue gEmailMe, %AuthorEmail%
   Gui, Font, underline
   Gui, Add, Text, cBlue gWebSiteLink, %AuthorWebsite%`n
   Gui, Show,, %AppNameFull% - About
Return

EmailMe:
	Run mailto:%AuthorEmail%
Return

WebSiteLink:
	Run %AuthorWebsite%
Return

CloseProgram:
	ExitApp
Return

CheckStartupState:
	If( FileExist( ShortcutFile ) )
		Menu Tray, Check, Run %AppName% on Startup
	Else
		Menu Tray, Uncheck, Run %AppName% on Startup
Return

ToggleStartup:
	If( FileExist( ShortcutFile ) )
		FileDelete %ShortcutFile%
	Else
		FileCreateShortcut %A_ScriptFullPath%, %ShortcutFile%

	Gosub CheckStartupState
Return

LoadPreferences:
	IniRead, Category1Hotkey,  %ININame%, %AppName%, Category1Hotkey
	IniRead, Category1Name,    %ININame%, %AppName%, Category1Name
	IniRead, Category2Hotkey,  %ININame%, %AppName%, Category2Hotkey
	IniRead, Category2Name,    %ININame%, %AppName%, Category2Name
	IniRead, Category3Hotkey,  %ININame%, %AppName%, Category3Hotkey
	IniRead, Category3Name,    %ININame%, %AppName%, Category3Name
	IniRead, Category4Hotkey,  %ININame%, %AppName%, Category4Hotkey
	IniRead, Category4Name,    %ININame%, %AppName%, Category4Name
	IniRead, Category5Hotkey,  %ININame%, %AppName%, Category5Hotkey
	IniRead, Category5Name,    %ININame%, %AppName%, Category5Name
	IniRead, Category6Hotkey,  %ININame%, %AppName%, Category6Hotkey
	IniRead, Category6Name,    %ININame%, %AppName%, Category6Name
	IniRead, Category7Hotkey,  %ININame%, %AppName%, Category7Hotkey
	IniRead, Category7Name,    %ININame%, %AppName%, Category7Name
	IniRead, Category8Hotkey,  %ININame%, %AppName%, Category8Hotkey
	IniRead, Category8Name,    %ININame%, %AppName%, Category8Name
	IniRead, Category9Hotkey,  %ININame%, %AppName%, Category9Hotkey
	IniRead, Category9Name,    %ININame%, %AppName%, Category9Name
	IniRead, Category10Hotkey, %ININame%, %AppName%, Category10Hotkey
	IniRead, Category10Name,   %ININame%, %AppName%, Category10Name
	IniRead, OpenCategories,   %ININame%, %AppName%, OpenCategories
	IniRead, MoveToAction,     %ININame%, %AppName%, MoveToAction
	IniRead, SetReminder,      %ININame%, %AppName%, SetReminder
	IniRead, CreateTask,       %ININame%, %AppName%, CreateTask
	IniRead, NewAppointment,   %ININame%, %AppName%, NewAppointment
	IniRead, JumpTo1Hotkey,    %ININame%, %AppName%, JumpTo1Hotkey
	IniRead, JumpTo1Folder,    %ININame%, %AppName%, JumpTo1Folder
	IniRead, JumpTo2Hotkey,    %ININame%, %AppName%, JumpTo2Hotkey
	IniRead, JumpTo2Folder,    %ININame%, %AppName%, JumpTo2Folder
	IniRead, JumpTo3Hotkey,    %ININame%, %AppName%, JumpTo3Hotkey
	IniRead, JumpTo3Folder,    %ININame%, %AppName%, JumpTo3Folder
	IniRead, JumpTo4Hotkey,    %ININame%, %AppName%, JumpTo4Hotkey
	IniRead, JumpTo4Folder,    %ININame%, %AppName%, JumpTo4Folder
	IniRead, JumpTo5Hotkey,    %ININame%, %AppName%, JumpTo5Hotkey
	IniRead, JumpTo5Folder,    %ININame%, %AppName%, JumpTo5Folder
	IniRead, JumpTo6Hotkey,    %ININame%, %AppName%, JumpTo6Hotkey
	IniRead, JumpTo6Folder,    %ININame%, %AppName%, JumpTo6Folder
	IniRead, JumpTo7Hotkey,    %ININame%, %AppName%, JumpTo7Hotkey
	IniRead, JumpTo7Folder,    %ININame%, %AppName%, JumpTo7Folder
	IniRead, JumpTo8Hotkey,    %ININame%, %AppName%, JumpTo8Hotkey
	IniRead, JumpTo8Folder,    %ININame%, %AppName%, JumpTo8Folder
	IniRead, JumpTo9Hotkey,    %ININame%, %AppName%, JumpTo9Hotkey
	IniRead, JumpTo9Folder,    %ININame%, %AppName%, JumpTo9Folder
	IniRead, JumpTo0Hotkey,    %ININame%, %AppName%, JumpTo0Hotkey
	IniRead, JumpTo0Folder,    %ININame%, %AppName%, JumpTo0Folder
	IniRead, Move1Folder,      %ININame%, %AppName%, Move1Folder
	IniRead, Move1Hotkey,      %ININame%, %AppName%, Move1Hotkey
	IniRead, Move2Folder,      %ININame%, %AppName%, Move2Folder
	IniRead, Move2Hotkey,      %ININame%, %AppName%, Move2Hotkey
	IniRead, Move3Folder,      %ININame%, %AppName%, Move3Folder
	IniRead, Move3Hotkey,      %ININame%, %AppName%, Move3Hotkey
	IniRead, Move4Folder,      %ININame%, %AppName%, Move4Folder
	IniRead, Move4Hotkey,      %ININame%, %AppName%, Move4Hotkey
	IniRead, Move5Folder,      %ININame%, %AppName%, Move5Folder
	IniRead, Move5Hotkey,      %ININame%, %AppName%, Move5Hotkey
	IniRead, Move6Folder,      %ININame%, %AppName%, Move6Folder
	IniRead, Move6Hotkey,      %ININame%, %AppName%, Move6Hotkey
	IniRead, Move7Folder,      %ININame%, %AppName%, Move7Folder
	IniRead, Move7Hotkey,      %ININame%, %AppName%, Move7Hotkey
	IniRead, Move8Folder,      %ININame%, %AppName%, Move8Folder
	IniRead, Move8Hotkey,      %ININame%, %AppName%, Move8Hotkey
	IniRead, Move9Folder,      %ININame%, %AppName%, Move9Folder
	IniRead, Move9Hotkey,      %ININame%, %AppName%, Move9Hotkey
	IniRead, Filter1Name,      %ININame%, %AppName%, Filter1Name
	IniRead, Filter1Hotkey,    %ININame%, %AppName%, Filter1Hotkey
	IniRead, Filter1Search,    %ININame%, %AppName%, Filter1Search
	IniRead, Filter1Folder,    %ININame%, %AppName%, Filter1Folder
	IniRead, Filter1Read,      %ININame%, %AppName%, Filter1Read
	IniRead, Filter2Name,      %ININame%, %AppName%, Filter2Name
	IniRead, Filter2Hotkey,    %ININame%, %AppName%, Filter2Hotkey
	IniRead, Filter2Search,    %ININame%, %AppName%, Filter2Search
	IniRead, Filter2Folder,    %ININame%, %AppName%, Filter2Folder
	IniRead, Filter2Read,      %ININame%, %AppName%, Filter2Read
	IniRead, Filter3Name,      %ININame%, %AppName%, Filter3Name
	IniRead, Filter3Hotkey,    %ININame%, %AppName%, Filter3Hotkey
	IniRead, Filter3Search,    %ININame%, %AppName%, Filter3Search
	IniRead, Filter3Folder,    %ININame%, %AppName%, Filter3Folder
	IniRead, Filter3Read,      %ININame%, %AppName%, Filter3Read
	IniRead, Filter4Name,      %ININame%, %AppName%, Filter4Name
	IniRead, Filter4Hotkey,    %ININame%, %AppName%, Filter4Hotkey
	IniRead, Filter4Search,    %ININame%, %AppName%, Filter4Search
	IniRead, Filter4Folder,    %ININame%, %AppName%, Filter4Folder
	IniRead, Filter4Read,      %ININame%, %AppName%, Filter4Read
	IniRead, Filter5Name,      %ININame%, %AppName%, Filter5Name
	IniRead, Filter5Hotkey,    %ININame%, %AppName%, Filter5Hotkey
	IniRead, Filter5Search,    %ININame%, %AppName%, Filter5Search
	IniRead, Filter5Folder,    %ININame%, %AppName%, Filter5Folder
	IniRead, Filter5Read,      %ININame%, %AppName%, Filter5Read
	IniRead, Filter6Name,      %ININame%, %AppName%, Filter6Name
	IniRead, Filter6Hotkey,    %ININame%, %AppName%, Filter6Hotkey
	IniRead, Filter6Search,    %ININame%, %AppName%, Filter6Search
	IniRead, Filter6Folder,    %ININame%, %AppName%, Filter6Folder
	IniRead, Filter6Read,      %ININame%, %AppName%, Filter6Read
Return

LoadHotkeys:
	Hotkey, IfWinActive, - Microsoft Outlook ahk_class rctrl_renwnd32, NUIDocumentWindow
	Hotkey, %Category1Hotkey%, Category1, UseErrorLevel
	Hotkey, %Category2Hotkey%, Category2, UseErrorLevel
	Hotkey, %Category3Hotkey%, Category3, UseErrorLevel
	Hotkey, %Category4Hotkey%, Category4, UseErrorLevel
	Hotkey, %Category5Hotkey%, Category5, UseErrorLevel
	Hotkey, %Category6Hotkey%, Category6, UseErrorLevel
	Hotkey, %Category7Hotkey%, Category7, UseErrorLevel
	Hotkey, %Category8Hotkey%, Category8, UseErrorLevel
	Hotkey, %Category9Hotkey%, Category9, UseErrorLevel
	Hotkey, %Category10Hotkey%, Category10, UseErrorLevel
	Hotkey, %OpenCategories%, OpenCategories, UseErrorLevel
	Hotkey, %Move1Hotkey%, Move1ToFolder, UseErrorLevel
	Hotkey, %Move2Hotkey%, Move2ToFolder, UseErrorLevel
	Hotkey, %Move3Hotkey%, Move3ToFolder, UseErrorLevel
	Hotkey, %Move4Hotkey%, Move4ToFolder, UseErrorLevel
	Hotkey, %Move5Hotkey%, Move5ToFolder, UseErrorLevel
	Hotkey, %Move6Hotkey%, Move6ToFolder, UseErrorLevel
	Hotkey, %Move7Hotkey%, Move7ToFolder, UseErrorLevel
	Hotkey, %Move8Hotkey%, Move8ToFolder, UseErrorLevel
	Hotkey, %Move9Hotkey%, Move9ToFolder, UseErrorLevel
	Hotkey, %JumpTo1Hotkey%, JumpToFolder1, UseErrorLevel
	Hotkey, %JumpTo2Hotkey%, JumpToFolder2, UseErrorLevel
	Hotkey, %JumpTo3Hotkey%, JumpToFolder3, UseErrorLevel
	Hotkey, %JumpTo4Hotkey%, JumpToFolder4, UseErrorLevel
	Hotkey, %JumpTo5Hotkey%, JumpToFolder5, UseErrorLevel
	Hotkey, %JumpTo6Hotkey%, JumpToFolder6, UseErrorLevel
	Hotkey, %JumpTo7Hotkey%, JumpToFolder7, UseErrorLevel
	Hotkey, %JumpTo8Hotkey%, JumpToFolder8, UseErrorLevel
	Hotkey, %JumpTo9Hotkey%, JumpToFolder9, UseErrorLevel
	Hotkey, %JumpTo0Hotkey%, JumpToFolder0, UseErrorLevel
	Hotkey, %SetReminder%, SetReminder, UseErrorLevel
	Hotkey, %CreateTask%, CreateTask, UseErrorLevel
	Hotkey, %NewAppointment%, NewAppointment, UseErrorLevel
	Hotkey, %Filter1Hotkey%, CustomFilter1, UseErrorLevel
	Hotkey, %Filter2Hotkey%, CustomFilter2, UseErrorLevel
	Hotkey, %Filter3Hotkey%, CustomFilter3, UseErrorLevel
	Hotkey, %Filter4Hotkey%, CustomFilter4, UseErrorLevel
	Hotkey, %Filter5Hotkey%, CustomFilter5, UseErrorLevel
	Hotkey, %Filter6Hotkey%, CustomFilter6, UseErrorLevel
	Hotkey, IfWinActive
Return

LoadStrings:
CheatSheet =
(
Your current Outlook Hotkeys are mapped to:`n
Mapped Hotkeys`tDescription
%Category1Hotkey%`t`t%Category1Name%`t(Maps to: CTRL+F3)
%Category2Hotkey%`t`t%Category2Name%`t(Maps to: CTRL+F4)
%Category3Hotkey%`t`t%Category3Name%`t(Maps to: CTRL+F5)
%Category4Hotkey%`t`t%Category4Name%`t(Maps to: CTRL+F6)
%Category5Hotkey%`t`t%Category5Name%`t(Maps to: CTRL+F7)
%Category6Hotkey%`t`t%Category6Name%`t(Maps to: CTRL+F8)
%Category7Hotkey%`t`t%Category7Name%`t(Maps to: CTRL+F9)
%Category8Hotkey%`t`t%Category8Name%`t(Maps to: CTRL+F10)
%Category9Hotkey%`t`t%Category9Name%`t(Maps to: CTRL+F11)
%Category10Hotkey%`t`t%Category10Name%`t(Maps to: CTRL+F12)
%OpenCategories%`t`tOpen Categories Menu
%SetReminder%`t`tSet a Reminder
%CreateTask%`t`tCreate a Task
%NewAppointment%`t`tCreate a new Appointment

%Move1Hotkey%`t`tMove selected messages to %Move1Folder%
%Move2Hotkey%`t`tMove selected messages to %Move2Folder%
%Move3Hotkey%`t`tMove selected messages to %Move3Folder%
%Move4Hotkey%`t`tMove selected messages to %Move4Folder%
%Move5Hotkey%`t`tMove selected messages to %Move5Folder%
%Move6Hotkey%`t`tMove selected messages to %Move6Folder%
%Move7Hotkey%`t`tMove selected messages to %Move7Folder%
%Move8Hotkey%`t`tMove selected messages to %Move8Folder%
%Move9Hotkey%`t`tMove selected messages to %Move9Folder%

%JumpTo1Hotkey%`t`tSwitch to %JumpTo1Folder%
%JumpTo2Hotkey%`t`tSwitch to %JumpTo2Folder%
%JumpTo3Hotkey%`t`tSwitch to %JumpTo3Folder%
%JumpTo4Hotkey%`t`tSwitch to %JumpTo4Folder%
%JumpTo5Hotkey%`t`tSwitch to %JumpTo5Folder%
%JumpTo6Hotkey%`t`tSwitch to %JumpTo6Folder%
%JumpTo7Hotkey%`t`tSwitch to %JumpTo7Folder%
%JumpTo8Hotkey%`t`tSwitch to %JumpTo8Folder%
%JumpTo9Hotkey%`t`tSwitch to %JumpTo9Folder%
%JumpTo0Hotkey%`t`tSwitch to %JumpTo0Folder%

%Filter1Hotkey%`t`t%Filter1Name%
%Filter2Hotkey%`t`t%Filter2Name%
%Filter3Hotkey%`t`t%Filter3Name%
%Filter4Hotkey%`t`t%Filter4Name%
%Filter5Hotkey%`t`t%Filter5Name%
%Filter6Hotkey%`t`t%Filter6Name%
`nHotKey Legend:`n^ Control`n! Alt`n+ Shift`n# Windows key`n
To change these hotkeys, edit the %ININame% file.
Press CTRL+c to copy this page to your clipboard.
)
; example of how to replace modifiers with human readable versions
;  x := RegExReplace(x, "(?i)^(.+\.ahk) - Notepad$","$1")

HelpProgramText =
(
This utility helps you implement the Getting Things Done (GTD) methodology in Outlook 2007 by giving macros with hotkeys that you can use to quickly organize your email messages to folders under your Inbox.

There are four main types of macro hotkeys available in this script:
 • Archiving Messages - quickly selecting groups of messages and moving them to various folders
 • Jumping to Folders - quickly moving to common folders without needing to use the mouse
 • Categorizing Messages - quickly assign categories using the number keys 0-9 only
 • Shortcuts to Common Tasks - other nice to have shortcuts

Getting Started:

In order to use the Archiving and Jump To macros, you will need to create the following folders under your Inbox:
Action (the folder to which you move all your "to do" emails)
Alerts (if you want to use Nagios alert filtering)
Archive (the folder to which you move all the other emails you want to archive)

In order to use the Categorizing macros you will need to 1) create Categories and then 2) map them to the CTRL+F3-F12 hotkeys that Outlook allows, then 3) edit the %ININame% file to define/customize them (optional).

1) To Create Macros:
`tGo to the Actions Menu -> Categorize -> All Categories. (Or just press F2 when %AppFileName%.exe is running)
2) Create each Category and map it to a CTRL+Fx key.  Here is a list of suggested category names following the GTD methodology:
`t!Next
`t@Computer
`t@Read/Review
`t@Someday
`t@Waiting
`t@Phone
`t@Errands
`t@Reference
`t@Agenda
`t@KillingTime
`tYou can of course, customize this list with whatever categories you want.
3) Edit the %ININame% file to configure the list of categories and hotkeys.  By default, the %ININame% file contains configuration pairs such as:
`tCategory1`t= 1
`tCategory1Name`t= !Next
`tCategory2`t= 2
`tCategory2Name`t= @Computer
`n`tWith this format, you can customize which number on the keyboard will set which category.
)

Return

;*******************************************************************************
;				To Do
;*******************************************************************************
/*

x Make multiple custom-built filters (get rid of nagios-specific filter and make it customizable)
Allow for customizable macros in Outlook
 - Set flag
 - ?
Macros for Compose window
Macros for Tasks window
Macros for Calendar window
x Create a function for moving matched messages to a folder
x Create a function for moving selected messages to a folder
Mark Message as expired?
X Time out MoveToFolder function
X Customizable JumpToFolder's
X Reload hotkey (for convenience)
X Try to hide the "Move Items" and "Go to Folder" windows
Gui to Edit shortcuts
o Intro screen explaining program (open help window for initial view?)
X Try using keyboard keys to move to different folders instead of CTRL+y
X Fail gracefully if hotkeys are not defined.

Help Additions:
Insert key to create a task

The title claims it's a full GTD solution.  Find other ways to tie it in:
 X Process your email and define next step
 X Convert email to task (Insert Key)
 X Reach "Inbox Zero"
 - Collection?
 - Delegate emails (Waiting for?)
 - What should I do right now? (Time/Energy/Context)
 - Weekly planning?
 - Context filters for Action folder
 - Projects?
 - Subtasks?
 - Tickle Folder?
 - Suggestion to add a task with verbs besides "Look into..." or "Decide..."
   - Suggestions: Call/Email/Agenda/Write/Web-Research/Brainstorm/Talk-To/Schedule/Plan

What is GTD?
* Capturing anything and everything that has your attention
* Defining actionable things discretely into outcomes and concrete next steps
* Organizing reminders and information in the most streamlined way, in appropriate categories, based on how and when you need to access them
* Keeping current and "on your game" with appropriately frequent reviews of the six horizons of your commitments (purpose, vision, goals, areas of focus, projects, and actions)

There are macros here for both kinds of Inbox processing:
1) Touch every email only once and determine if it's actionable (Delete/File/Do/Delegate/Defer)
2) Plow through reading and just quickly flag which ones need action.  Then mass-move the read-unflagged emails out.  Return to process only the flagged emails.
This is sometimes helpful for clearing out dozens of emails and making sure you don't miss something critical hidden in the stack.
- if you never clear your inbox and get yourself to work out of your Action folder, this will backfire.
*/
