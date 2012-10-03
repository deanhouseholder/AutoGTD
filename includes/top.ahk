;*******************************************************************************
;				Settings
;*******************************************************************************
#SingleInstance Ignore
#Persistent
#NoEnv
#InstallKeybdHook
#HotkeyInterval,100
SetKeyDelay, -1
SetTitleMatchMode 2
SendMode Input
SetWorkingDir %A_ScriptDir%
SplashImage, Off
Progress, Off


;*******************************************************************************
;				Menu
;*******************************************************************************
IfEqual, A_IsCompiled, , Menu, Tray, Icon, %A_ScriptDir%\AutoGTD.ico
Menu, Tray, NoStandard
Menu, tray, add, Show Cheat Sheet, CheatSheetHelper
Menu, Tray, Add
Menu, Tray, Add, Edit Hotkeys, ButtonChangeHotkeys
Menu, Tray, Add, Run %AppName% on Startup, ToggleStartup
Menu, Tray, Add, Reload, ReloadProgram
Menu, Tray, Add
Menu, Tray, Add, Website, WebSiteLink
Menu, Tray, Add, Help, HelpProgram
Menu, Tray, Add, About, AboutProgram
Menu, Tray, Add
Menu, Tray, Add, Exit, CloseProgram
Menu, Tray, Default, Show Cheat Sheet
Menu, Tray, Tip, %AppNameFull%`nDouble-click for current hotkey mappings
Gosub, CheckStartupState


;*******************************************************************************
;				Check for First Run
;*******************************************************************************
IfExist, %A_ScriptDir%\%ININame%
{
	PortableMode := 1
	SetWorkingDir, %A_ScriptDir%
} else {
	PortableMode := 0
	SetWorkingDir, %A_AppData%\%AppName%
	IfNotExist, %A_AppData%\%AppName%\%ININame%
	{
		; First time running
		FileCreateDir, %A_AppData%\%AppName%
		FileInstall, src\AutoGTDDefault.ini, %A_AppData%\%AppName%\%ININame%, 0
		Msgbox, 4, Welcome to %AppName% %AppVersion%, It looks like this is your first time running %AppName%.  Would you like to read the Help which describes how to set out Outlook for use with this program?
		IfMsgbox, Yes
		{
			Gosub, HelpProgram
		}
	}
}
