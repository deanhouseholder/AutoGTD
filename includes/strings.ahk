Category1HotkeyMap := ConvertModifiers(Category1Hotkey)
Category2HotkeyMap := ConvertModifiers(Category2Hotkey)
Category3HotkeyMap := ConvertModifiers(Category3Hotkey)
Category4HotkeyMap := ConvertModifiers(Category4Hotkey)
Category5HotkeyMap := ConvertModifiers(Category5Hotkey)
Category6HotkeyMap := ConvertModifiers(Category6Hotkey)
Category7HotkeyMap := ConvertModifiers(Category7Hotkey)
Category8HotkeyMap := ConvertModifiers(Category8Hotkey)
Category9HotkeyMap := ConvertModifiers(Category9Hotkey)
Category10HotkeyMap := ConvertModifiers(Category10Hotkey)
OpenCategoriesMap := ConvertModifiers(OpenCategories)

Move1HotkeyMap := ConvertModifiers(Move1Hotkey)
Move2HotkeyMap := ConvertModifiers(Move2Hotkey)
Move3HotkeyMap := ConvertModifiers(Move3Hotkey)
Move4HotkeyMap := ConvertModifiers(Move4Hotkey)
Move5HotkeyMap := ConvertModifiers(Move5Hotkey)
Move6HotkeyMap := ConvertModifiers(Move6Hotkey)
Move7HotkeyMap := ConvertModifiers(Move7Hotkey)
Move8HotkeyMap := ConvertModifiers(Move8Hotkey)
Move9HotkeyMap := ConvertModifiers(Move9Hotkey)

Filter1HotkeyMap := ConvertModifiers(Filter1Hotkey)
Filter2HotkeyMap := ConvertModifiers(Filter2Hotkey)
Filter3HotkeyMap := ConvertModifiers(Filter3Hotkey)
Filter4HotkeyMap := ConvertModifiers(Filter4Hotkey)
Filter5HotkeyMap := ConvertModifiers(Filter5Hotkey)
Filter6HotkeyMap := ConvertModifiers(Filter6Hotkey)

JumpTo1HotkeyMap := ConvertModifiers(JumpTo1Hotkey)
JumpTo2HotkeyMap := ConvertModifiers(JumpTo2Hotkey)
JumpTo3HotkeyMap := ConvertModifiers(JumpTo3Hotkey)
JumpTo4HotkeyMap := ConvertModifiers(JumpTo4Hotkey)
JumpTo5HotkeyMap := ConvertModifiers(JumpTo5Hotkey)
JumpTo6HotkeyMap := ConvertModifiers(JumpTo6Hotkey)
JumpTo7HotkeyMap := ConvertModifiers(JumpTo7Hotkey)
JumpTo8HotkeyMap := ConvertModifiers(JumpTo8Hotkey)
JumpTo9HotkeyMap := ConvertModifiers(JumpTo9Hotkey)
JumpTo0HotkeyMap := ConvertModifiers(JumpTo0Hotkey)

SetReminderMap    := ConvertModifiers(SetReminder)
CreateTaskMap     := ConvertModifiers(CreateTask)
NewAppointmentMap := ConvertModifiers(NewAppointment)
TaskFromEmailMap  := ConvertModifiers(TaskFromEmail)
NewTaskInEmailMap := ConvertModifiers(NewTaskInEmail)
ShowUnreadMap     := ConvertModifiers(ShowUnread)
FocusOnSearchMap  := ConvertModifiers(FocusOnSearch)

CheatSheet1 =
(
Category Assignment Hotkeys
%Category1HotkeyMap%`t%Category1Name%`t(Maps to: CTRL+F3)
%Category2HotkeyMap%`t%Category2Name%`t(Maps to: CTRL+F4)
%Category3HotkeyMap%`t%Category3Name%`t(Maps to: CTRL+F5)
%Category4HotkeyMap%`t%Category4Name%`t(Maps to: CTRL+F6)
%Category5HotkeyMap%`t%Category5Name%`t(Maps to: CTRL+F7)
%Category6HotkeyMap%`t%Category6Name%`t(Maps to: CTRL+F8)
%Category7HotkeyMap%`t%Category7Name%`t(Maps to: CTRL+F9)
%Category8HotkeyMap%`t%Category8Name%`t(Maps to: CTRL+F10)
%Category9HotkeyMap%`t%Category9Name%`t(Maps to: CTRL+F11)
%Category10HotkeyMap%`t%Category10Name%`t(Maps to: CTRL+F12)
%OpenCategoriesMap%`tOpen Categories Menu
_______________________________________

Move Selected Emails to a Folder Hotkeys
%Move1HotkeyMap%`tMove message(s) to %Move1Folder%
%Move2HotkeyMap%`tMove message(s) to %Move2Folder%
%Move3HotkeyMap%`tMove message(s) to %Move3Folder%
%Move4HotkeyMap%`tMove message(s) to %Move4Folder%
%Move5HotkeyMap%`tMove message(s) to %Move5Folder%
%Move6HotkeyMap%`tMove message(s) to %Move6Folder%
%Move7HotkeyMap%`tMove message(s) to %Move7Folder%
%Move8HotkeyMap%`tMove message(s) to %Move8Folder%
%Move9HotkeyMap%`tMove message(s) to %Move9Folder%
_______________________________________

Bulk-Move Emails to Folders Hotkeys
%Filter1HotkeyMap%`t%Filter1Name%
%Filter2HotkeyMap%`t%Filter2Name%
%Filter3HotkeyMap%`t%Filter3Name%
%Filter4HotkeyMap%`t%Filter4Name%
%Filter5HotkeyMap%`t%Filter5Name%
%Filter6HotkeyMap%`t%Filter6Name%
)

CheatSheet2 =
(
Jump to Folder Hotkeys
%JumpTo1HotkeyMap%`tSwitch to %JumpTo1Folder%
%JumpTo2HotkeyMap%`tSwitch to %JumpTo2Folder%
%JumpTo3HotkeyMap%`tSwitch to %JumpTo3Folder%
%JumpTo4HotkeyMap%`tSwitch to %JumpTo4Folder%
%JumpTo5HotkeyMap%`tSwitch to %JumpTo5Folder%
%JumpTo6HotkeyMap%`tSwitch to %JumpTo6Folder%
%JumpTo7HotkeyMap%`tSwitch to %JumpTo7Folder%
%JumpTo8HotkeyMap%`tSwitch to %JumpTo8Folder%
%JumpTo9HotkeyMap%`tSwitch to %JumpTo9Folder%
%JumpTo0HotkeyMap%`tSwitch to %JumpTo0Folder%
_______________________________________

Other Helpful Shortcut Hotkeys
%SetReminderMap%`tSet a Reminder
%CreateTaskMap%`tCreate a Task
%NewAppointmentMap%`tCreate a new Appointment
%TaskFromEmailMap%`tCreate a new Task from an email
%NewTaskInEmailMap%`tCreate a new Task in email folder
%ShowUnreadMap%`tFilter for unread emails
%FocusOnSearchMap%`tFocus on search bar
)
; example of how to replace modifiers with human readable versions
;  x := RegExReplace(x, "(?i)^(.+\.ahk) - Notepad$","$1")


HelpProgramText =
(
AutoGTD Help
This program helps you implement the Getting Things Done (GTD) 
methodology in Outlook 2007 by giving macros with hotkeys that 
you can use to quickly organize your email messages to folders 
under your Inbox.

To view the full help, please visit:
)

Copyright =
(
%AppName% Copyright (C) 2010  %AuthorName%
This program comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to 
redistribute it under certain conditions.
)
