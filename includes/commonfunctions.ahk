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
