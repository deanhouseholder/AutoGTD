;*******************************************************************************
;				Settings
;*******************************************************************************
#SingleInstance Ignore
#Persistent
#NoEnv
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%
SendMode Input


;*******************************************************************************
;				Extract Files
;*******************************************************************************
FileInstall, src\AutoGTD16.ico, %temp%\AutoGTD16.ico, 1
FileInstall, src\AutoGTD128.png, %temp%\AutoGTD128.png, 1
FileInstall, src\AutoGTD400x64.gif, %temp%\AutoGTD400x64.gif, 1
FileInstall, src\AutoGTDLogo.png, %temp%\AutoGTDLogo.png, 1
FileInstall, src\license.txt, %A_ScriptDir%\license.txt, 1
FileInstall, src\AutoGTD Help.pdf, %A_ScriptDir%\AutoGTD Help.pdf, 1


;*******************************************************************************
;				Menu
;*******************************************************************************
Menu, Tray, Icon, %temp%\%AppFileName%16.ico
Menu, Tray, NoStandard
Menu, tray, add, Show Cheat Sheet, CheatSheetHelper
Menu, Tray, Add
Menu, Tray, Add, Help, HelpProgram
Menu, Tray, Add, Run %AppName% on Startup, ToggleStartup
Menu, Tray, Add, Reload, ReloadProgram
Menu, Tray, Add, About, AboutProgram
Menu, Tray, Add
Menu, Tray, Add, Exit, CloseProgram
Menu, Tray, Default, Show Cheat Sheet
Menu, Tray, Tip, %AppNameFull%`nDouble-click for current hotkey mappings
Gosub, CheckStartupState


;*******************************************************************************
;				Check for First Run
;*******************************************************************************
IfNotExist, %A_ScriptDir%\%ININame%
{
	FileInstall, src\AutoGTDDefault.ini, %A_ScriptDir%\%ININame%, 0
	Msgbox, 4, Welcome to %AppName% %AppVersion%, It looks like this is your first time running %AppName%.  Would you like to read the Help which describes how to set out Outlook for use with this program?
	IfMsgbox, Yes
	{
		Gosub, HelpProgram
	}
}
