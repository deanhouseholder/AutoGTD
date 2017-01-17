; Function to simplify window activating
WinWaitFull(win) {
	SetWinDelay, 10
	WinWait, %win%, , 4
	If ErrorLevel {
		Return 1
	} else {
		IfWinNotActive, %win%, , WinActivate, %win%
		WinWaitActive, %win%, , 4
		Return 0
	}
}

; Function to simplify window activating
WinWaitFullFast(win) {
	SetWinDelay, 3
	WinWait, %win%, , 1
	If ErrorLevel {
		Return 1
	} else {
		IfWinNotActive, %win%, , WinActivate, %win%
		WinWaitActive, %win%, , 1
		Return 0
	}
}

; Determine if it's safe to execute a macro, or whether the user intends to type into a message interface
SafeToRunMacro() {
	IfWinActive, ahk_class rctrl_renwnd32
	{
		ControlGetFocus, CurrentCtrl
		; MsgBox, Current focus: %CurrentCtrl%
		; The following is a list of Controls that should allow triggering of macros
		CtrlList = Acrobat Preview Window1,AfxWndW5,AfxWndW6,EXCEL71,MsoCommandBar1,OlkPicturePreviewer1,paneClassDC1,RichEdit20WPT2,RichEdit20WPT4,RichEdit20WPT5,RICHEDIT50W1,SUPERGRID1,SUPERGRID2,AfxWndW16,OutlookGrid1,NetUIHWND4
		; removed RichEdit20WPT2 to make Outlook GTD work
		; removed _WwG1 and _WwG2 to work with Outlook 2013
		if CurrentCtrl in %CtrlList%
		{
			Return, True
		} else {
			Return, False
		}
	}
}

; Determine if it's safe to close the current window (as opposed to the Main Outlook window)
SafeToRunMacroClose() {
	IfWinActive, - ahk_class rctrl_renwnd32
	{
		IfWinNotActive Outlook ahk_class rctrl_renwnd32, NUIDocumentWindow
		{
			Return, True
		} else {
			Return, False
		}
	}
}

; Check if safe before executing macro, else send what they actually pressed
RunMacro(SpecialKey, NormalKey) {
	if SafeToRunMacro()
	{
		Send %SpecialKey%
	} else {
		Send %NormalKey%
	}
}

; Display macro hotkeys as "human-readable" version for Cheat Sheet page
ConvertModifiers(x){
	StringReplace, y, x, +, SHIFT+, All
	StringReplace, y, y, ^, CTRL+, All
	StringReplace, y, y, !, ALT+, All
	StringReplace, y, y, #, WIN+, All
	Return y
}

; Check the Outlook Version via the Registry
CheckOutlookVersionRegistry() {
	RegRead, OutlookVer8,  HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Office\8.0\Outlook\InstallRoot,  path        ; 1997
	RegRead, OutlookVer9,  HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Office\9.0\Outlook\InstallRoot,  path        ; 2000
	RegRead, OutlookVer10, HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Office\10.0\Outlook\InstallRoot, path        ; 2002
	RegRead, OutlookVer11, HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Office\11.0\Outlook\InstallRoot, path        ; 2003
	RegRead, OutlookVer12, HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Office\12.0\Outlook\InstallRoot, path        ; 2007
	RegRead, OutlookVer14, HKEY_CURRENT_USER,  Software\Microsoft\Office\14.0\Outlook\,            OutlookName ; 2010
	RegRead, OutlookVer15, HKEY_CURRENT_USER,  Software\Microsoft\Office\15.0\Outlook\,            OutlookName ; 2013
	RegRead, OutlookVer16, HKEY_CURRENT_USER,  Software\Microsoft\Office\16.0\Outlook\,            OutlookName ; 2016

	; Find the latest version of Outlook and set variables to it
	If (%OutlookVer8% != "")
	{
		OutlookVersion := 8
		OutlookYear := 1997
	}
	If (%OutlookVer9% != "")
	{
		OutlookVersion := 9
		OutlookYear := 2000
	}
	If (%OutlookVer10% != "")
	{
		OutlookVersion := 10
		OutlookYear := 2002
	}
	If (%OutlookVer11% != "")
	{
		OutlookVersion := 11
		OutlookYear := 2003
	}
	If (%OutlookVer12% != "")
	{
		OutlookVersion := 12
		OutlookYear := 2007
	}
	If (OutlookVer14 != "")
	{
		OutlookVersion := 14
		OutlookYear := 2010
	}
	If (OutlookVer15 != "")
	{
		OutlookVersion := 15
		OutlookYear := 2013
	}
	If (OutlookVer16 != "")
	{
		OutlookVersion := 16
		OutlookYear := 2016
	}

	Return %OutlookYear%
}

; Pass in the X and Y size of the box you want to show.
; Function will return a string in the format of: x50 y100
CenterBox(BoxX, BoxY) {
	CenterX := A_ScreenWidth//2-(BoxX//2)
	CenterY := A_ScreenHeight//2-(BoxY//2)
	Return "x" CenterX " y" CenterY
}

; Format time in days
AddTimeDays(i) {
	var1 =
	var1 += %i%, days
	FormatTime, var2,%var1%,dddd, MMMM d, yyyy
	Return %var2%
}

; Format time in hours
AddTimeHours(i) {
	var1 =
	var1 += %i%, hours
	FormatTime, var2,%var1%,h:mm tt
	Return %var2%
}

; Check to see if the currently used .ini file is writable
CheckWritableIni(ini) {
	Global AppName
	IniWrite, writable, %ini%, %AppName%, WriteTest
	If ErrorLevel {
		Return, false
	} else {
		IniDelete, %ini%, %AppName%, WriteTest
		Return, true
	}
}

; Extract a copy of the default .ini file and restart
ExtractIniFile(path, replace=0) {
	FileInstall, src\AutoGTDDefault.ini, %path%, %replace%
	Reload
	Sleep, 100000 ; Prevent continuing running script
}
