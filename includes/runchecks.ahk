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


;*******************************************************************************
;				Check Outlook Version
;*******************************************************************************
if (VersionAskAgain != "N") ; If previously set to "N" then don't check for updated Outlook versions
{
	LatestOutlookVersion := CheckOutlookVersion()
	If (LatestOutlookVersion != INIOutlookVersion)
	{
		MsgBox, 4, Outlook Version Check, %AppName% has detected that Outlook %LatestOutlookVersion% installed but the %ININame% file is set to use the Outlook %INIOutlookVersion% hotkey shortcuts.`n`nWould you like to use Outlook %LatestOutlookVersion% hotkey shortcuts?
		IfMsgBox, Yes
		{
			IniWrite, %LatestOutlookVersion%, %ININame%, %AppName%, OutlookVersion ; Write detected version to ini file
			MsgBox, Updated %ININame% file to use %LatestOutlookVersion% hotkey shortcuts.
		} Else {
			MsgBox, 4, Ask again?, So you prefer to use Outlook %INIOutlookVersion%'s hotkey shortcuts.  No problem.  One more question.`n`nDo you want %AppName% to ask again next time it starts?`n`n--------------------------------------------------------------------`nNote:`nIf you select No and decide to change the version later, you can edit the %ININame% file located here %A_ScriptDir%\%ININame%`nand change the line:`n`nOutlookVersion  = %INIOutlookVersion%`n`nTo show:`n`nOutlookVersion  = %LatestOutlookVersion%`n--------------------------------------------------------------------
			IfMsgBox, No
			{
				IniWrite, N, %ININame%, %AppName%, VersionAskAgain ; Do not ask again
			}
		}
	}
	IniRead, INIOutlookVersion,%ININame%, %AppName%, OutlookVersion
	IniRead, VersionAskAgain,  %ININame%, %AppName%, VersionAskAgain
}
