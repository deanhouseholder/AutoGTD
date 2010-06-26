;*******************************************************************************
;				Labels
;*******************************************************************************

CheatSheetHelper:
;	MsgBox, 64, %AppNameFull% Cheat Sheet, %CheatSheet%

	;Height := % A_ScreenHeight-320 > 700 ? 700 : A_ScreenHeight-320
	Height := 440
	Gui, 1:Add, Picture, x200 y-5 w128, %temp%\AutoGTD128.png
	Gui, 1:Font, s2, Arial Black
	Gui, 1:Add, Text, x+35, `n
	Gui, 1:Font, s22, Arial Black
	Gui, 1:Add, Text, , %AppName%`nShortcuts

	Gui, 1:Font, s10, Tahoma
	Gui, 1:Add, Text, x200 y125, Your current Outlook Hotkeys are mapped to:

	Gui, 1:Font, s8 bold, Tahoma
	Gui, 1:Add, Text, x5 y150, You Press                Description
	Gui, 1:Add, Text, x360 y150, You Press                Description

	Gui, 1:Font, normal
	Gui, 1:Add, Edit, x5 y165 w350 h%Height% +VScroll +ReadOnly +Resize -TabStop, %CheatSheet1%
	Gui, 1:Add, Edit, x360 y165 w350 h%Height% +VScroll +ReadOnly +Resize -TabStop, %CheatSheet2%

	Gui, 1:Font, s10, Tahoma
	Gui, 1:Add, Text, x25 y610, Remember to reload %AppName% after you make changes to %ININame% in order for the changes to take effect!

	Gui, 1:Add, Button, x175 y630 w150 h35 Default, %A_Space% %A_Space% %A_Space% Close %A_Space% %A_Space% %A_Space%
	Gui, 1:Add, Button, x375 y630 w150 h35, Change Hotkeys

	Gui, 1:Show, h680 w710, New GUI Window
Return

; Once help is complete, restore the original Help
;HelpProgram:
;	ContentHeight := 575
;	WindowHeight := % A_ScreenHeight-300 > ContentHeight ? ContentHeight : A_ScreenHeight-300
;	Gui, 2:Add, Picture, w200 h-1, %temp%\AutoGTDLogo.png
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
	Gui, 2:Add, Picture, w200 h-1, %temp%\AutoGTDLogo.png
	Gui, 2:Add, Text, , %HelpProgramText%
	Gui, 2:Font, underline
	Gui, 2:Add, Text, cBlue gWebSiteLinkHelp, http://www.deanhouseholder.com/AutoGTD/help
	Gui, 2:Font, normal
	Gui, 2:Add, Text, ,`nOr please click below to open the Help Documentation.`n
	Gui, 2:Add, Button, Default x50 y350 w100, Close
	Gui, 2:Add, Button, Default x175 y350 w100, Open Help
	Gui, 2:Show, w350, %AppNameFull% - Help
Return


AboutProgram:
;	MsgBox %AppNameFull%`nby %AuthorName%`n`n%AuthorEmail%`n`n%AuthorWebsite%`n
	Gui, 3:Add, Picture, w200 h-1, %temp%\AutoGTDLogo.png
	Gui, 3:Add, Text, , %AppNameFull% %AppVersion%`n by %AuthorName%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, cBlue gEmailMe, %AuthorEmail%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, cBlue gWebSiteLink, %AuthorWebsite%
	Gui, 3:Font, normal
	Gui, 3:Add, Text, , %Copyright%
	Gui, 3:Font, underline
	Gui, 3:Add, Text, cBlue gCopyrightConditions, Click Here for details.`n
	Gui, 3:Font, normal
	Gui, 3:Add, Button, Default x100, Close
	Gui, 3:Show,, %AppNameFull% - About
Return

ButtonClose:
	Gui 1:Destroy
Return

2ButtonClose:
	Gui 2:Destroy
Return

3ButtonClose:
	Gui 3:Destroy
Return

ButtonChangeHotkeys:
	;Gui 1:Destroy
	Run, %A_WinDir%\notepad.exe %A_ScriptDir%\%ININame%
Return

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
	Run %AuthorWebsite%
Return

WebSiteLinkHelp:
	Run http://www.deanhouseholder.com/AutoGTD/help
Return

2ButtonOpenHelp:
	Run, "%A_ScriptDir%\AutoGTD Help.pdf"
Return

CopyrightConditions:
	Run, http://www.gnu.org/licenses/gpl.txt
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
