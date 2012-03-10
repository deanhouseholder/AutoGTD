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

SafeToRunMacro() {
	IfWinActive, - Microsoft Outlook ahk_class rctrl_renwnd32, NUIDocumentWindow
	{
		ControlGetFocus, CurrentCtrl
		;MsgBox, Current focus: %CurrentCtrl%
		CtrlList = Acrobat Preview Window1,AfxWndW5,AfxWndW6,EXCEL71,MsoCommandBar1,OlkPicturePreviewer1,paneClassDC1,RichEdit20WPT2,RichEdit20WPT4,RichEdit20WPT5,RICHEDIT50W1,SUPERGRID1,SUPERGRID2,_WwG1,AfxWndW16
		; removed RichEdit20WPT2 to make Outlook GTD work
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

ConvertModifiers(x){
	StringReplace, y, x, ^, <CTRL>, All
	StringReplace, y, y, !, <ALT>, All
	StringReplace, y, y, +, <SHIFT>, All
	Return y
}

CheckOutlookVersion() {
	Loop, %ProgramFiles%\Microsoft Office\*.exe, 0, 1 ; Loop through all of the Microsoft Office location Skipping folders looking for exe files only
	{
		IfEqual, A_LoopFilename, outlook.exe
		{
			outlookloc=%A_LoopFileLongPath%

			FileGetVersion, outlookver, %outlookloc% ; Get the file version number of Outlook.exe
			StringSplit, mainver, outlookver, . ; Turn the version number into a set of arrays as we are only interested in the first part of this number
			OutlookVersion := mainver1
			;MsgBox, %OutlookVersion%

			If mainver1 = 8
				OutlookYear := 1997
			If mainver1 = 9
				OutlookYear := 2000
			If mainver1 = 10
				OutlookYear := 2002
			If mainver1 = 11
				OutlookYear := 2003
			If mainver1 = 12
				OutlookYear := 2007
			If mainver1 = 14
				OutlookYear := 2010
			If OutlookYear =
				OutlookYear := 2007
		}
	}
	;MsgBox, OutlookVersion: %OutlookVersion%`nMainVersion: %outlookver%`nOutlookYear: %OutlookYear%
	Return %OutlookYear%
}

