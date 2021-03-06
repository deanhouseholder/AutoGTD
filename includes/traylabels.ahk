;*******************************************************************************
;				Labels
;*******************************************************************************

CheatSheetHelper:
	;Header
	Gui, 1:Add, Picture, x290 y15 w400, %A_ScriptDir%\AutoGTDLogoGray.png
	Gui, 1:Font, s2, Arial Black
	Gui, 1:Add, Text, x+35, `n
	Gui, 1:Font, s22, Arial Black
	;Gui, 1:Add, Text, , %AppName%`nShortcuts

	;Text below Header
	Gui, 1:Font, s10, Tahoma
	Gui, 1:Add, Text, x340 y125, Your current Outlook Hotkeys are mapped to:
	Gui, 1:Add,Text,y+0,`t


	;Column 1a
	Gui, 1:Font, s8 bold underline, Tahoma
	Gui, 1:Add, Text, x30 section, You Press
	Gui, 1:Font, normal

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs, Category Assignment Hotkeys
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet1a1%

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs, Move Selected Emails to a Folder Hotkeys
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet1b1%

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs, Bulk-Move Emails to Folders Hotkeys
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet1c1%

	;Column 1b
	Gui, 1:Font, s8 bold underline, Tahoma
	Gui, 1:Add, Text, x110 ys section, Description
	Gui, 1:Font, normal

	Gui, 1:Add, text, xs y+25, %CheatSheet1a2%
	Gui, 1:Add, text, xs y+25, %CheatSheet1b2%
	Gui, 1:Add, text, xs y+25, %CheatSheet1c2%


	;Column 2a
	Gui, 1:Font, s8 bold underline, Tahoma
	Gui, 1:Add, Text, x350 ys section, You Press
	Gui, 1:Font, normal

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs, Jump to Folder Hotkeys
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet2a1%

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs, Other Helpful Shortcut Hotkeys
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet2b1%

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs,
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet2c1%

	;Column 2b
	Gui, 1:Font, s8 bold underline, Tahoma
	Gui, 1:Add, Text, x440 ys section, Description
	Gui, 1:Font, normal

	Gui, 1:Add, text, xs y+25, %CheatSheet2a2%
	Gui, 1:Add, text, xs y+25, %CheatSheet2b2%
	Gui, 1:Add, text, xs y+25, %CheatSheet2c2%


	;Column 3a
	Gui, 1:Font, s8 bold underline, Tahoma
	Gui, 1:Add, Text, x650 ys section, You Press
	Gui, 1:Font, normal

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs, Reminders by Hours
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet3a1%

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs, Reminders by Days
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet3b1%

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, text, xs, Reminders by Days and Archive
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet3c1%

	;Column 3b
	Gui, 1:Font, s8 bold underline, Tahoma
	Gui, 1:Add, Text, x750 ys section, Description
	Gui, 1:Font, normal

	Gui, 1:Add, text, xs y+25, %CheatSheet3a2%
	Gui, 1:Add, text, xs y+25, %CheatSheet3b2%
	Gui, 1:Add, text, xs y+25, %CheatSheet3c2%


	;Footer
	Gui, 1:Font, s10, Tahoma
	Gui, 1:Add, Text, x300, Use CTRL+SHIFT+SPACE to open this Cheat Sheet
	Gui, 1:Add, Text, x150, `nRemember to reload %AppName% after you make changes to %ININame% in order for the changes to take effect!

	Gui, 1:Font, bold, Tahoma
	Gui, 1:Add, Button, x200 y660 w150 h35 Default, %A_Space% %A_Space% %A_Space% Close %A_Space% %A_Space% %A_Space%
	Gui, 1:Add, Button, x400 y660 w150 h35, Change Hotkeys
	Gui, 1:Add, Button, x600 y660 w150 h35, Print

	Gui, 1:Show, h710 w975, %AppName% Cheat Sheet
Return

ButtonClose:
	Gui 1:Destroy
Return

ButtonChangeHotkeys:
	Gosub, DisplayEditor
Return

ButtonPrint:
	;MsgBox, This will open Microsoft Paint and set up the printer for optimal settings.`n%AppName% will make a few changes first, then you may select your printer and press Print.
	file := A_Temp "\" A_Now ".bmp"
	CaptureScreen(1, 0, file)
	If (FileExist(file)) {
		Run, %A_WinDir%\system32\mspaint.exe %file%
		WinWait, ahk_class MSPaintApp
		WinActivate, ahk_class MSPaintApp
		SendInput, ^p
		WinWait, Print
		WinActivate, Print
		SendInput, !r
		WinWait, Printing Preferences
		WinActivate, Printing Preferences
		SendInput, {CTRL Down}{Tab 2}{Ctrl Up}!r
		Sleep, 500
		SendInput, {ALT Down}uo{Alt Up}{Tab}{Home}{Enter}
	} Else {
		; This method is a bit less reliable
		SendInput, {ALT Down}PrintScreen{ALT Up}
		Sleep, 500
		Run, %A_WinDir%\system32\mspaint.exe
		WinWait, ahk_class MSPaintApp
		WinActivate, ahk_class MSPaintApp
		SendInput, ^v
		Sleep, 500
		SendInput, ^p
		WinWait, Print
		WinActivate, Print
		SendInput, !r
		WinWait, Printing Preferences
		WinActivate, Printing Preferences
		SendInput, {CTRL Down}{Tab 2}{Ctrl Up}!r
		Sleep, 500
		SendInput, {ALT Down}uo{Alt Up}{Tab}{Home}{Enter}
	}
	Gui 1:Destroy
Return


HelpProgram:
	Gui, 2:Color, White
	Gui, 2:Add, Picture, w400 h-1, %A_ScriptDir%\AutoGTDLogoWhite.png
	Gui, 2:Add, Text, , %HelpProgramText%
	Gui, 2:Font, underline
	Gui, 2:Add, Text, cBlue gWebSiteLinkHelp, %AuthorWebsiteHelp%
	Gui, 2:Font, normal
	Gui, 2:Add, Text, ,`nOr please click below to open the local Help Documentation.`n
	Gui, 2:Add, Button, Default x65 y310 w100, Close
	Gui, 2:Add, Button, Default x190 y310 w160, Open Local Help File
	Gui, 2:Show, w410, %AppNameFull% - Help

	;Load the cursor and start the "hook"
	hCurs := DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt") ;IDC_HAND
	OnMessage(0x200,"WM_MOUSEMOVE2")
	Return

	;The "hook"
	WM_MOUSEMOVE2(wParam,lParam)
	{
	  Global hCurs
	  MouseGetPos,,,,ctrl
	  ;Only change over certain controls, use Windows Spy to find them.
	  If ctrl in Static3
		DllCall("SetCursor","UInt",hCurs)
	  Return
	}
Return

2ButtonClose:
	Gui 2:Destroy
	OnMessage(0x200,"")
	DllCall("DestroyCursor","Uint",hCurs)
Return

2ButtonOpenHelp:
	Run, "%A_ScriptDir%\AutoGTD Help.pdf"
Return


AboutProgram:
	Gui, 3:Add, Picture, w400 h-1, %A_ScriptDir%\AutoGTDLogoGray.png
	Gui, 3:Add, Text, x100 , %AppNameFull% %AppVersion%`n by %AuthorName%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, x100 cBlue gEmailMe, %AuthorEmail%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, x100 cBlue gWebSiteLink, %AuthorWebsite%
	Gui, 3:Font, normal
	Gui, 3:Add, Text, x100, %Copyright%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, x100 cBlue gCopyrightConditions, Click Here for license details.`n
	Gui, 3:Font, normal
	Gui, 3:Add, Button, Default x180, &Close
	Gui, 3:Show,, %AppNameFull% - About

	;Load the cursor and start the "hook"
	hCurs := DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt") ;IDC_HAND
	OnMessage(0x200,"WM_MOUSEMOVE3")
	Return

	;The "hook"
	WM_MOUSEMOVE3(wParam,lParam)
	{
	  Global hCurs
	  MouseGetPos,,,,ctrl
	  ;Only change over certain controls, use Windows Spy to find them.
	  If ctrl in Static3,Static4,Static6
		DllCall("SetCursor","UInt",hCurs)
	  Return
	}
Return

3ButtonClose:
	Gui 3:Destroy
	OnMessage(0x200,"")
	DllCall("DestroyCursor","Uint",hCurs)
Return


ShowGuiFailed:
	WinGetPos, x, y, w, h, Outlook ahk_class rctrl_renwnd32
	CenterX := x+(w/2)-340
	CenterY := y+(h/2)-122

	Gui, 4:-Caption +AlwaysOnTop +Border
	Gui, 4:Color, White
	Gui, 4:Add, Picture, x65 y0 h122 w400, %A_ScriptDir%\AutoGTDLogoWhite.png
	Gui, 4:Font, s16 bold, Arial
	Gui, 4:Add, Text, x165, Macro Failed
	Gui, 4:Font, x10 s10 normal, Arial
	Gui, 4:Add, Text, x10 y+15, %MacroFailed%
	Gui, 4:Add, Button, g4OK w100 x125 y275, OK
	Gui, 4:Add, Button, g4ChangeHotkeys x275 y275, Change CustomWaitTime
	Gui, 4:Font, s2 bold, Arial
	Gui, 4:Add, Text, x10 y+6 hidden,
	Gui, 4:Show, x%CenterX% y%CenterY%, Macro Failed
Return

4OK:
	Gui, 4: Destroy
Return

4ChangeHotkeys:
	Run, %A_WinDir%\notepad.exe %A_WorkingDir%\%ININame%
Return


ReloadProgram:
	Reload
Return

EmailMe:
	Run mailto:%AuthorEmail%
Return

WebSiteLink:
	Run %AuthorWebsite%,,UseErrorLevel
Return

WebSiteLinkHelp:
	Run %AuthorWebsiteHelp%,,UseErrorLevel
Return

CopyrightConditions:
	Run, http://www.gnu.org/licenses/gpl.txt,,UseErrorLevel
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
		FileCreateShortcut %A_ScriptFullPath%, %ShortcutFile%, %A_WorkingDir%,, AutoGTD - Outlook Hotkeys, %A_WorkingDir%\AutoGTD.ico

	Gosub CheckStartupState
Return
