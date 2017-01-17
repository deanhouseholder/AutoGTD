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
;
; Scenarios for AutoGTD.ini file:
; 1) File doesn't exist anywhere
;	Try Portable first
; 2) File exists in script dir and is good
;	Use Portable
; 3) File exists in script dir but isn't good
;	Test if it's writable, Prompt to replace file, replace file, use Portable
;	If not writable, write to AppData, use AppData
; 4) File exists in script dir and is good but not writable
;	Use Portable
; 5) File exists in script dir but isn't good & not writable
;	Write to AppData, use AppData
; 6) File doesn't exist in script dir or AppData
;	Test if it's writable, use Portable
;	If not writable, write to AppData, use AppData
; 7) File doesn't exist in script dir or AppData & script dir isn't writable
;	Write to Appdata, use AppData
; 8) File doesn't exist in script dir but does in AppData & AppData file is good
;	Use AppData
; 9) File doesn't exist in script dir but does in AppData & AppData file isn't good
;	Prompt to replace file, write to AppData, use AppData
;10) File exists nowhere and AppData is not writable??? (Should never happen)
;	MsgBox to tell user the problem
;	TODO: Prompt for writable location?

; Script won't always have write-access to the ScriptDir, so use AppData as needed
INI = %A_ScriptDir%\%ININame%

If (FileExist(INI)) { ; INI file exists in script/executable directory
	IniRead, IniReadTest, %INI%, %AppName%, Category1Hotkey ; Try to read from it before extracting
	If (IniReadTest != "" && IniReadTest != "ERROR") { ; Could read the value from the file
		Writable := CheckWritableIni(INI)
		If (Writable = true) {
			PortableMode := true
		} Else { ; Could read the value but not write to it: Use AppData location instead
			PortableMode := false
		}
	} Else { ; Couldn't read the value from the file: blank or corrupt
		Writable := CheckWritableIni(INI)
		If (Writable = true) { ; Can write to it so extract working file over it
			PortableMode := true
			MsgBox, Fixing broken %ININame% file. ; TODO: Change to Prompt user if they want to overwrite it
			ExtractIniFile(INI, 1)
		} Else { ; Can't write to the file: Use AppData location instead
			PortableMode := false
		}
	}
} Else { ; INI file didn't exist in script directory
	Writable := CheckWritableIni(INI)
	If (Writable = true) { ; First time running
		PortableMode := true
		ExtractIniFile(INI,1)
	} Else { ; Could not write to the file: Use AppData location instead
		PortableMode := false
	}
}

If (PortableMode = false) { ; Use AddData location instead
	SetWorkingDir, %A_AppData%\%AppName%
	INI = %A_AppData%\%AppName%\%ININame%
	FileCreateDir, %A_AppData%\%AppName%

	If (FileExist(INI)) { ; The ini file does exist in AppData
		IniRead, IniReadTest, %INI%, %AppName%, Category1Hotkey ; Try to read from it before extracting
		If (IniReadTest != "" && IniReadTest != "ERROR") { ; Could read the value from the file
			; Use it
			Sleep 1
		} Else { ; File exists but not readable
			Writable := CheckWritableIni(INI)
			If (Writable = true) { ; File is not readable but is writable
				MsgBox, Fixing broken %ININame% file. ; TODO: Change to Prompt user if they want to overwrite it
				ExtractIniFile(INI, 1)
			} Else { ; This should never happen
				MsgBox, Could not write to main executable directory or to AppData.`n`nAutoGTD will now close.
				ExitApp
			}
		}
	} Else { ; First time running
		ExtractIniFile(INI)
	}
} Else { ; PortableMode = true
	SetWorkingDir, %A_ScriptDir%
}

; Default extracted ini file has FirstTimeRunning defined within
IniRead, FirstTimeRunning, %INI%, %AppName%, FirstTimeRunning ; Try to read from it before extracting
If (FirstTimeRunning != "" && FirstTimeRunning != "ERROR") { ; Could read the value from the file
	IniDelete, %ini%, %AppName%, FirstTimeRunning
	Msgbox, 4, Welcome to %AppName% %AppVersion%, It looks like this is your first time running %AppName%.  Would you like to read the Help which describes how to set out Outlook for use with this program?
	IfMsgbox, Yes
	{
		Gosub, HelpProgram
	}
}

;*******************************************************************************
;				Define Macro GUI
;*******************************************************************************
Gui, 5:-Caption +AlwaysOnTop +Border
Gui, 5:Color, White
Gui, 5:Add, Picture, x10 y0 h122G w400, %A_ScriptDir%\AutoGTDLogoWhite.png
Gui, 5:Add, Progress, vProgressBar w380 x10
Gui, 5:Add, Text, vCustomMacroText wp x10  ; wp means "use width of previous".
