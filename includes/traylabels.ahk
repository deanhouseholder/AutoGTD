;*******************************************************************************
;				Labels
;*******************************************************************************

CheatSheetHelper:
	;Height := % A_ScreenHeight-320 > 700 ? 700 : A_ScreenHeight-320
	Height := 440
	Gui, 1:Add, Picture, x150 y-5 w128, %A_temp%\AutoGTD128.png
	Gui, 1:Font, s2, Arial Black
	Gui, 1:Add, Text, x+35, `n
	Gui, 1:Font, s22, Arial Black
	Gui, 1:Add, Text, , %AppName%`nShortcuts

	Gui, 1:Font, s10, Tahoma
	Gui, 1:Add, Text, x200 y125, Your current Outlook Hotkeys are mapped to:

	Gui, 1:Add,Text,y+0,`t

	Gui, 1:Font, s8 bold underline, Tahoma
	Gui, 1:Add, Text, x60 section, You Press                Description %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space%
	Gui, 1:Font, normal
	Gui, 1:Add, text, xs, %CheatSheet1%

	Gui, 1:Font, s8 bold underline, Tahoma
	Gui, 1:Add, Text, ys, You Press                Description %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space% %A_Space%
	Gui, 1:Font, normal
	Gui, 1:Add, text, y+6 , %CheatSheet2%

	Gui, 1:Font, s10, Tahoma
	Gui, 1:Add, Text, xm center, `nRemember to reload %AppName% after you make changes to %ININame% in order for the changes to take effect!

	Gui, 1:Add, Button, x175 y660 w150 h35 Default, %A_Space% %A_Space% %A_Space% Close %A_Space% %A_Space% %A_Space%
	Gui, 1:Add, Button, x375 y660 w150 h35, Change Hotkeys

	Gui, 1:Show, h710 w650, %AppName% Cheat Sheet
Return

ButtonClose:
	Gui 1:Destroy
Return

ButtonChangeHotkeys:
	Run, %A_WinDir%\notepad.exe %A_ScriptDir%\%ININame%
Return

; Once help is complete, restore the original Help
;HelpProgram:
;	ContentHeight := 575
;	WindowHeight := % A_ScreenHeight-300 > ContentHeight ? ContentHeight : A_ScreenHeight-300
;	Gui, 2:Add, Picture, w200 h-1, %A_temp%\AutoGTDLogo.png
;	if (WindowHeight < ContentHeight) {
;		Gui, 2:Add, Edit, w765 h%WindowHeight% +VScroll +Resize +Readonly -TabStop, %HelpProgramText%
;		Gui, 2:Add, Button, Default x345, %A_Space% %A_Space% %A_Space% Close %A_Space% %A_Space% %A_Space%
;		GuiControl,, Edit1, %HelpProgramText%
;	} Else {
;		Gui, 2:Add, Text, w765 h%WindowHeight%, %HelpProgramText%
;		Gui, 2:Add, Button, Default x345, %A_Space% %A_Space% %A_Space% Close %A_Space% %A_Space% %A_Space%
;	}
;	Gui, 2:Show,, %AppNameFull% - Help
;Return


HelpProgram:
	Gui, 2:Add, Picture, w200 h-1, %A_temp%\AutoGTDLogo.png
	Gui, 2:Add, Text, , %HelpProgramText%
	Gui, 2:Font, underline
	Gui, 2:Add, Text, cBlue gWebSiteLinkHelp, %AuthorWebsiteHelp%
	Gui, 2:Font, normal
	Gui, 2:Add, Text, ,`nOr please click below to open the Help Documentation.`n
	Gui, 2:Add, Button, Default x50 y350 w100, Close
	Gui, 2:Add, Button, Default x175 y350 w100, Open Help
	Gui, 2:Show, w350, %AppNameFull% - Help

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

	2ButtonClose:
		Gui 2:Destroy
		OnMessage(0x200,"")
		DllCall("DestroyCursor","Uint",hCurs)
	Return

	2ButtonOpenHelp:
		Run, "%A_ScriptDir%\AutoGTD Help.pdf"
	Return
Return


AboutProgram:
	Gui, 3:Add, Picture, w200 h-1, %A_temp%\AutoGTDLogo.png
	Gui, 3:Add, Text, , %AppNameFull% %AppVersion%`n by %AuthorName%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, cBlue gEmailMe, %AuthorEmail%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, cBlue gWebSiteLink, %AuthorWebsite%
	Gui, 3:Font, normal
	Gui, 3:Add, Text, , %Copyright%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, cBlue gCopyrightConditions, Click Here for license details.`n
	Gui, 3:Font, normal
	Gui, 3:Add, Button, Default x100, &Close
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

	3ButtonClose:
		Gui 3:Destroy
		OnMessage(0x200,"")
		DllCall("DestroyCursor","Uint",hCurs)
	Return
Return


; Not yet referenced
; Use this to open the directory to edit .ini or open Help PDF
OpenDirectory:
	Run, %A_WinDir%\explorer.exe %A_ScriptDir%, , Max
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
		FileCreateShortcut %A_ScriptFullPath%, %ShortcutFile%, %A_WorkingDir%,, AutoGTD - Outlook Hotkeys, %A_WorkingDir%\%AppName%.exe

	Gosub CheckStartupState
Return
