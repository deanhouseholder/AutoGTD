;*******************************************************************************
;				Information
;*******************************************************************************
; Title:		AutoGTD v1.1
; Date:			14 Aug 2015
; Author:		Dean Householder <deanhouseholder@gmail.com>
; AutoGTD is a set of Outlook Macros to help implement the Getting Things Done
; concepts into Outlook.  It provides configurable shortcuts which are able to
; move emails to folders, add categories, reminders, and flags to emails.  It
; can perform customized searches and then move all remaining emails to a folder.
; All of these types of actions can be mapped to single character shortcuts that
; you choose.

;*******************************************************************************
;				License
;*******************************************************************************
; AutoGTD - Outlook Hotkeys
; Copyright (C) 2012  Dean Householder
;
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY;  without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;
; You can contact the author by email at deanhouseholder@gmail.com


;*******************************************************************************
;				Variables
;*******************************************************************************
AppVersion    = 1.2
AppName       = AutoGTD
AppNameFull   = AutoGTD - Outlook Hotkeys
AppFileName   = AutoGTD
ININame       = AutoGTD.ini
AuthorName    = Dean Householder
AuthorEmail   = deanhouseholder@gmail.com
AuthorWebsite = http://www.autogtd.com/
AuthorWebsiteHelp = http://www.autogtd.com/help
ShortcutFile  = %A_Startup%\%AppName%.lnk

;*******************************************************************************
;				Load Includes
;*******************************************************************************
#Include %A_ScriptDir%\includes\commonfunctions.ahk
#Include %A_ScriptDir%\includes\macrofunctions.ahk
#Include %A_ScriptDir%\includes\editorfunctions.ahk
#Include %A_ScriptDir%\includes\top.ahk
#Include %A_ScriptDir%\includes\iniread.ahk
#Include %A_ScriptDir%\includes\runchecks.ahk
#Include %A_ScriptDir%\includes\strings.ahk
#Include %A_ScriptDir%\includes\editorhotkeymath.ahk
#Include %A_ScriptDir%\includes\macrolabels.ahk
#Include %A_ScriptDir%\includes\editor.ahk
#Include %A_ScriptDir%\includes\Gdip.ahk
#Include %A_ScriptDir%\includes\mappedhotkeys.ahk
#Include %A_ScriptDir%\includes\traylabels.ahk
#Include %A_ScriptDir%\includes\editorsavelabel.ahk
#Include %A_ScriptDir%\includes\scrollbar.ahk
