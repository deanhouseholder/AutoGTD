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

SafeToRunMacroOther() {
	IfWinActive, - ahk_class rctrl_renwnd32
	{
		IfWinNotActive - Microsoft Outlook ahk_class rctrl_renwnd32, NUIDocumentWindow
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
	StringReplace, y, x, +, SHIFT+, All
	StringReplace, y, y, ^, CTRL+, All
	StringReplace, y, y, !, ALT+, All
	StringReplace, y, y, #, WIN+, All
	Return y
}

; Check the Outlook Version via the Registry
CheckOutlookVersionRegistry() {
	RegRead,OutlookVer8,HKEY_LOCAL_MACHINE,SOFTWARE\Microsoft\Office\8.0\Outlook\InstallRoot,path ; 1997
	RegRead,OutlookVer9,HKEY_LOCAL_MACHINE,SOFTWARE\Microsoft\Office\9.0\Outlook\InstallRoot,path ; 2000
	RegRead,OutlookVer10,HKEY_LOCAL_MACHINE,SOFTWARE\Microsoft\Office\10.0\Outlook\InstallRoot,path ; 2002
	RegRead,OutlookVer11,HKEY_LOCAL_MACHINE,SOFTWARE\Microsoft\Office\11.0\Outlook\InstallRoot,path ; 2003
	RegRead,OutlookVer12,HKEY_LOCAL_MACHINE,SOFTWARE\Microsoft\Office\12.0\Outlook\InstallRoot,path ; 2007
	RegRead,OutlookVer14,HKEY_LOCAL_MACHINE,SOFTWARE\Microsoft\Office\14.0\Outlook\InstallRoot,path ; 2010

	IfExist,%OutlookVer8%
	{
		OutlookVersion := 8
		OutlookYear := 1997
	}
	IfExist,%OutlookVer9%
	{
		OutlookVersion := 9
		OutlookYear := 2000
	}
	IfExist,%OutlookVer10%
	{
		OutlookVersion := 10
		OutlookYear := 2002
	}
	IfExist,%OutlookVer11%
	{
		OutlookVersion := 11
		OutlookYear := 2003
	}
	IfExist,%OutlookVer12%
	{
		OutlookVersion := 12
		OutlookYear := 2007
	}
	IfExist,%OutlookVer14%
	{
		OutlookVersion := 14
		OutlookYear := 2010
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

AddTimeDays(i) {
	var1 =
	var1 += %i%, days
	FormatTime, var2,%var1%,dddd, MMMM d, yyyy
	Return %var2%
}

AddTimeHours(i) {
	var1 = 
	var1 += %i%, hours
	FormatTime, var2,%var1%,h:mm tt
	Return %var2%
}

Screenshot(outfile, screen) ; Save screenshot from defined coordinates.
{
   pToken := Gdip_Startup()
   raster := 0x40000000 + 0x00CC0020

   pBitmap := Gdip_BitmapFromScreen(screen,raster)

   Gdip_SaveBitmapToFile(pBitmap, outfile, 100)
   Gdip_DisposeImage(pBitmap)
   Gdip_Shutdown(pToken)
}
