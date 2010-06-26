;*******************************************************************************
;				Information
;*******************************************************************************
;Title:			AutoGTD v0.5
;Date:			11 Jun 2010
;Author:		Dean Householder <deanhouseholder@gmail.com>
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
; Copyright (C) 2010  Dean Householder
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
;				Version History
;*******************************************************************************
;11 June 2010 - 0.5 Initial Release

;*******************************************************************************
;				Variables
;*******************************************************************************
AppVersion    = 0.6
AppName       = AutoGTD
AppNameFull   = AutoGTD - Outlook Hotkeys
AppFileName   = AutoGTD
ININame       = AutoGTD.ini
AuthorName    = Dean Householder
AuthorEmail   = deanhouseholder@gmail.com
AuthorWebsite = http://www.deanhouseholder.com/AutoGTD
JumpToRun := 0
ShortcutFile := A_Startup . "\" . AppName . ".lnk"


;*******************************************************************************
;				Load Includes
;*******************************************************************************
#Include includes\top.ahk
#Include includes\iniread.ahk
#Include includes\strings.ahk
#Include includes\commonfunctions.ahk
#Include includes\mappedhotkeys.ahk
#Include includes\labels.ahk
#Include includes\macrofunctions.ahk
#Include includes\macrolabels.ahk

Return
