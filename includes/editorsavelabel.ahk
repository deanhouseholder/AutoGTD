7ButtonSaveandReload:
Gui, 7:Submit

Category1Hotkey := modifiers_to_strings("Category1Hotkey", Category1Hotkey)
Category2Hotkey := modifiers_to_strings("Category2Hotkey", Category2Hotkey)
Category3Hotkey := modifiers_to_strings("Category3Hotkey", Category3Hotkey)
Category4Hotkey := modifiers_to_strings("Category4Hotkey", Category4Hotkey)
Category5Hotkey := modifiers_to_strings("Category5Hotkey", Category5Hotkey)
Category6Hotkey := modifiers_to_strings("Category6Hotkey", Category6Hotkey)
Category7Hotkey := modifiers_to_strings("Category7Hotkey", Category7Hotkey)
Category8Hotkey := modifiers_to_strings("Category8Hotkey", Category8Hotkey)
Category9Hotkey := modifiers_to_strings("Category9Hotkey", Category9Hotkey)
Category10Hotkey := modifiers_to_strings("Category10Hotkey", Category10Hotkey)
Move1Hotkey := modifiers_to_strings("Move1Hotkey", Move1Hotkey)
Move2Hotkey := modifiers_to_strings("Move2Hotkey", Move2Hotkey)
Move3Hotkey := modifiers_to_strings("Move3Hotkey", Move3Hotkey)
Move4Hotkey := modifiers_to_strings("Move4Hotkey", Move4Hotkey)
Move5Hotkey := modifiers_to_strings("Move5Hotkey", Move5Hotkey)
Move6Hotkey := modifiers_to_strings("Move6Hotkey", Move6Hotkey)
Move7Hotkey := modifiers_to_strings("Move7Hotkey", Move7Hotkey)
Move8Hotkey := modifiers_to_strings("Move8Hotkey", Move8Hotkey)
Move9Hotkey := modifiers_to_strings("Move9Hotkey", Move9Hotkey)
Filter1Hotkey := modifiers_to_strings("Filter1Hotkey", Filter1Hotkey)
Filter2Hotkey := modifiers_to_strings("Filter2Hotkey", Filter2Hotkey)
Filter3Hotkey := modifiers_to_strings("Filter3Hotkey", Filter3Hotkey)
Filter4Hotkey := modifiers_to_strings("Filter4Hotkey", Filter4Hotkey)
Filter5Hotkey := modifiers_to_strings("Filter5Hotkey", Filter5Hotkey)
Filter6Hotkey := modifiers_to_strings("Filter6Hotkey", Filter6Hotkey)
JumpTo1Hotkey := modifiers_to_strings("JumpTo1Hotkey", JumpTo1Hotkey)
JumpTo2Hotkey := modifiers_to_strings("JumpTo2Hotkey", JumpTo2Hotkey)
JumpTo3Hotkey := modifiers_to_strings("JumpTo3Hotkey", JumpTo3Hotkey)
JumpTo4Hotkey := modifiers_to_strings("JumpTo4Hotkey", JumpTo4Hotkey)
JumpTo5Hotkey := modifiers_to_strings("JumpTo5Hotkey", JumpTo5Hotkey)
JumpTo6Hotkey := modifiers_to_strings("JumpTo6Hotkey", JumpTo6Hotkey)
JumpTo7Hotkey := modifiers_to_strings("JumpTo7Hotkey", JumpTo7Hotkey)
JumpTo8Hotkey := modifiers_to_strings("JumpTo8Hotkey", JumpTo8Hotkey)
JumpTo9Hotkey := modifiers_to_strings("JumpTo9Hotkey", JumpTo9Hotkey)
JumpTo0Hotkey := modifiers_to_strings("JumpTo0Hotkey", JumpTo0Hotkey)
SetReminder := modifiers_to_strings("SetReminder", SetReminder)
FlagMessage := modifiers_to_strings("FlagMessage", FlagMessage)
CreateTask := modifiers_to_strings("CreateTask", CreateTask)
NewAppointment := modifiers_to_strings("NewAppointment", NewAppointment)
TaskFromEmail := modifiers_to_strings("TaskFromEmail", TaskFromEmail)
NewTaskInEmail := modifiers_to_strings("NewTaskInEmail", NewTaskInEmail)
ShowUnread := modifiers_to_strings("ShowUnread", ShowUnread)
ShowAllUnread := modifiers_to_strings("ShowAllUnread", ShowAllUnread)
FocusOnSearch := modifiers_to_strings("FocusOnSearch", FocusOnSearch)
SearchAll := modifiers_to_strings("SearchAll", SearchAll)
OpenContextMenu := modifiers_to_strings("OpenContextMenu", OpenContextMenu)
OpenAddressBook := modifiers_to_strings("OpenAddressBook", OpenAddressBook)
CloseWindow := modifiers_to_strings("CloseWindow", CloseWindow)
Remind30mins := modifiers_to_strings("Remind30mins", Remind30mins)
Remind1hour := modifiers_to_strings("Remind1hour", Remind1hour)
Remind2hours := modifiers_to_strings("Remind2hours", Remind2hours)
Remind3hours := modifiers_to_strings("Remind3hours", Remind3hours)
Remind4hours := modifiers_to_strings("Remind4hours", Remind4hours)
Remind5hours := modifiers_to_strings("Remind5hours", Remind5hours)
Remind6hours := modifiers_to_strings("Remind6hours", Remind6hours)
Remind7hours := modifiers_to_strings("Remind7hours", Remind7hours)
Remind8hours := modifiers_to_strings("Remind8hours", Remind8hours)
Remind9hours := modifiers_to_strings("Remind9hours", Remind9hours)
Remind1day := modifiers_to_strings("Remind1day", Remind1day)
Remind2days := modifiers_to_strings("Remind2days", Remind2days)
Remind3days := modifiers_to_strings("Remind3days", Remind3days)
Remind4days := modifiers_to_strings("Remind4days", Remind4days)
Remind5days := modifiers_to_strings("Remind5days", Remind5days)
Remind6days := modifiers_to_strings("Remind6days", Remind6days)
Remind7days := modifiers_to_strings("Remind7days", Remind7days)
RmndAndMoveFoldr := modifiers_to_strings("RmndAndMoveFoldr", RmndAndMoveFoldr)
RmndAndMove1Day := modifiers_to_strings("RmndAndMove1Day", RmndAndMove1Day)
RmndAndMove2Days := modifiers_to_strings("RmndAndMove2Days", RmndAndMove2Days)
RmndAndMove3Days := modifiers_to_strings("RmndAndMove3Days", RmndAndMove3Days)
RmndAndMove4Days := modifiers_to_strings("RmndAndMove4Days", RmndAndMove4Days)
RmndAndMove5Days := modifiers_to_strings("RmndAndMove5Days", RmndAndMove5Days)
RmndAndMove6Days := modifiers_to_strings("RmndAndMove6Days", RmndAndMove6Days)
RmndAndMove7Days := modifiers_to_strings("RmndAndMove7Days", RmndAndMove7Days)

IniWrite, %Category1Name%, %ININame%, %AppName%, Category1Name
IniWrite, %Category1Hotkey%, %ININame%, %AppName%, Category1Hotkey
IniWrite, %Category2Name%, %ININame%, %AppName%, Category2Name
IniWrite, %Category2Hotkey%, %ININame%, %AppName%, Category2Hotkey
IniWrite, %Category3Name%, %ININame%, %AppName%, Category3Name
IniWrite, %Category3Hotkey%, %ININame%, %AppName%, Category3Hotkey
IniWrite, %Category4Name%, %ININame%, %AppName%, Category4Name
IniWrite, %Category4Hotkey%, %ININame%, %AppName%, Category4Hotkey
IniWrite, %Category5Name%, %ININame%, %AppName%, Category5Name
IniWrite, %Category5Hotkey%, %ININame%, %AppName%, Category5Hotkey
IniWrite, %Category6Name%, %ININame%, %AppName%, Category6Name
IniWrite, %Category6Hotkey%, %ININame%, %AppName%, Category6Hotkey
IniWrite, %Category7Name%, %ININame%, %AppName%, Category7Name
IniWrite, %Category7Hotkey%, %ININame%, %AppName%, Category7Hotkey
IniWrite, %Category8Name%, %ININame%, %AppName%, Category8Name
IniWrite, %Category8Hotkey%, %ININame%, %AppName%, Category8Hotkey
IniWrite, %Category9Name%, %ININame%, %AppName%, Category9Name
IniWrite, %Category9Hotkey%, %ININame%, %AppName%, Category9Hotkey
IniWrite, %Category10Name%, %ININame%, %AppName%, Category10Name
IniWrite, %Category10Hotkey%, %ININame%, %AppName%, Category10Hotkey
IniWrite, %OpenCategories%, %ININame%, %AppName%, OpenCategories
IniWrite, %Move1Name%, %ININame%, %AppName%, Move1Name
IniWrite, %Move1Hotkey%, %ININame%, %AppName%, Move1Hotkey
IniWrite, %Move2Name%, %ININame%, %AppName%, Move2Name
IniWrite, %Move2Hotkey%, %ININame%, %AppName%, Move2Hotkey
IniWrite, %Move3Name%, %ININame%, %AppName%, Move3Name
IniWrite, %Move3Hotkey%, %ININame%, %AppName%, Move3Hotkey
IniWrite, %Move4Name%, %ININame%, %AppName%, Move4Name
IniWrite, %Move4Hotkey%, %ININame%, %AppName%, Move4Hotkey
IniWrite, %Move5Name%, %ININame%, %AppName%, Move5Name
IniWrite, %Move5Hotkey%, %ININame%, %AppName%, Move5Hotkey
IniWrite, %Move6Name%, %ININame%, %AppName%, Move6Name
IniWrite, %Move6Hotkey%, %ININame%, %AppName%, Move6Hotkey
IniWrite, %Move7Name%, %ININame%, %AppName%, Move7Name
IniWrite, %Move7Hotkey%, %ININame%, %AppName%, Move7Hotkey
IniWrite, %Move8Name%, %ININame%, %AppName%, Move8Name
IniWrite, %Move8Hotkey%, %ININame%, %AppName%, Move8Hotkey
IniWrite, %Move9Name%, %ININame%, %AppName%, Move9Name
IniWrite, %Move9Hotkey%, %ININame%, %AppName%, Move9Hotkey
IniWrite, %Filter1Name%, %ININame%, %AppName%, Filter1Name
IniWrite, %Filter1Hotkey%, %ININame%, %AppName%, Filter1Hotkey
IniWrite, %Filter1Search%, %ININame%, %AppName%, Filter1Search
IniWrite, %Filter1Folder%, %ININame%, %AppName%, Filter1Folder
IniWrite, %Filter1Read%, %ININame%, %AppName%, Filter1Read
IniWrite, %Filter2Name%, %ININame%, %AppName%, Filter2Name
IniWrite, %Filter2Hotkey%, %ININame%, %AppName%, Filter2Hotkey
IniWrite, %Filter2Search%, %ININame%, %AppName%, Filter2Search
IniWrite, %Filter2Folder%, %ININame%, %AppName%, Filter2Folder
IniWrite, %Filter2Read%, %ININame%, %AppName%, Filter2Read
IniWrite, %Filter3Name%, %ININame%, %AppName%, Filter3Name
IniWrite, %Filter3Hotkey%, %ININame%, %AppName%, Filter3Hotkey
IniWrite, %Filter3Search%, %ININame%, %AppName%, Filter3Search
IniWrite, %Filter3Folder%, %ININame%, %AppName%, Filter3Folder
IniWrite, %Filter3Read%, %ININame%, %AppName%, Filter3Read
IniWrite, %Filter4Name%, %ININame%, %AppName%, Filter4Name
IniWrite, %Filter4Hotkey%, %ININame%, %AppName%, Filter4Hotkey
IniWrite, %Filter4Search%, %ININame%, %AppName%, Filter4Search
IniWrite, %Filter4Folder%, %ININame%, %AppName%, Filter4Folder
IniWrite, %Filter4Read%, %ININame%, %AppName%, Filter4Read
IniWrite, %Filter5Name%, %ININame%, %AppName%, Filter5Name
IniWrite, %Filter5Hotkey%, %ININame%, %AppName%, Filter5Hotkey
IniWrite, %Filter5Search%, %ININame%, %AppName%, Filter5Search
IniWrite, %Filter5Folder%, %ININame%, %AppName%, Filter5Folder
IniWrite, %Filter5Read%, %ININame%, %AppName%, Filter5Read
IniWrite, %Filter6Name%, %ININame%, %AppName%, Filter6Name
IniWrite, %Filter6Hotkey%, %ININame%, %AppName%, Filter6Hotkey
IniWrite, %Filter6Search%, %ININame%, %AppName%, Filter6Search
IniWrite, %Filter6Folder%, %ININame%, %AppName%, Filter6Folder
IniWrite, %Filter6Read%, %ININame%, %AppName%, Filter6Read
IniWrite, %JumpTo1Hotkey%, %ININame%, %AppName%, JumpTo1Hotkey
IniWrite, %JumpTo1Folder%, %ININame%, %AppName%, JumpTo1Folder
IniWrite, %JumpTo2Hotkey%, %ININame%, %AppName%, JumpTo2Hotkey
IniWrite, %JumpTo2Folder%, %ININame%, %AppName%, JumpTo2Folder
IniWrite, %JumpTo3Hotkey%, %ININame%, %AppName%, JumpTo3Hotkey
IniWrite, %JumpTo3Folder%, %ININame%, %AppName%, JumpTo3Folder
IniWrite, %JumpTo4Hotkey%, %ININame%, %AppName%, JumpTo4Hotkey
IniWrite, %JumpTo4Folder%, %ININame%, %AppName%, JumpTo4Folder
IniWrite, %JumpTo5Hotkey%, %ININame%, %AppName%, JumpTo5Hotkey
IniWrite, %JumpTo5Folder%, %ININame%, %AppName%, JumpTo5Folder
IniWrite, %JumpTo6Hotkey%, %ININame%, %AppName%, JumpTo6Hotkey
IniWrite, %JumpTo6Folder%, %ININame%, %AppName%, JumpTo6Folder
IniWrite, %JumpTo7Hotkey%, %ININame%, %AppName%, JumpTo7Hotkey
IniWrite, %JumpTo7Folder%, %ININame%, %AppName%, JumpTo7Folder
IniWrite, %JumpTo8Hotkey%, %ININame%, %AppName%, JumpTo8Hotkey
IniWrite, %JumpTo8Folder%, %ININame%, %AppName%, JumpTo8Folder
IniWrite, %JumpTo9Hotkey%, %ININame%, %AppName%, JumpTo9Hotkey
IniWrite, %JumpTo9Folder%, %ININame%, %AppName%, JumpTo9Folder
IniWrite, %JumpTo0Hotkey%, %ININame%, %AppName%, JumpTo0Hotkey
IniWrite, %JumpTo0Folder%, %ININame%, %AppName%, JumpTo0Folder
IniWrite, %FlagMessage%, %ININame%, %AppName%, FlagMessage
IniWrite, %SetReminder%, %ININame%, %AppName%, SetReminder
IniWrite, %CreateTask%, %ININame%, %AppName%, CreateTask
IniWrite, %NewAppointment%, %ININame%, %AppName%, NewAppointment
IniWrite, %TaskFromEmail%, %ININame%, %AppName%, TaskFromEmail
IniWrite, %NewTaskInEmail%, %ININame%, %AppName%, NewTaskInEmail
IniWrite, %ShowUnread%, %ININame%, %AppName%, ShowUnread
IniWrite, %ShowAllUnread%, %ININame%, %AppName%, ShowAllUnread
IniWrite, %FocusOnSearch%, %ININame%, %AppName%, FocusOnSearch
IniWrite, %SearchAll%, %ININame%, %AppName%, SearchAll
IniWrite, %OpenContextMenu%, %ININame%, %AppName%, OpenContextMenu
IniWrite, %OpenAddressBook%, %ININame%, %AppName%, OpenAddressBook
IniWrite, %CloseWindow%, %ININame%, %AppName%, CloseWindow
IniWrite, %Remind30mins%, %ININame%, %AppName%, Remind30mins
IniWrite, %Remind1hour%, %ININame%, %AppName%, Remind1hour
IniWrite, %Remind2hours%, %ININame%, %AppName%, Remind2hours
IniWrite, %Remind3hours%, %ININame%, %AppName%, Remind3hours
IniWrite, %Remind4hours%, %ININame%, %AppName%, Remind4hours
IniWrite, %Remind5hours%, %ININame%, %AppName%, Remind5hours
IniWrite, %Remind6hours%, %ININame%, %AppName%, Remind6hours
IniWrite, %Remind7hours%, %ININame%, %AppName%, Remind7hours
IniWrite, %Remind8hours%, %ININame%, %AppName%, Remind8hours
IniWrite, %Remind9hours%, %ININame%, %AppName%, Remind9hours
IniWrite, %Remind1day%, %ININame%, %AppName%, Remind1day
IniWrite, %Remind2days%, %ININame%, %AppName%, Remind2days
IniWrite, %Remind3days%, %ININame%, %AppName%, Remind3days
IniWrite, %Remind4days%, %ININame%, %AppName%, Remind4days
IniWrite, %Remind5days%, %ININame%, %AppName%, Remind5days
IniWrite, %Remind6days%, %ININame%, %AppName%, Remind6days
IniWrite, %Remind7days%, %ININame%, %AppName%, Remind7days
IniWrite, %RmndAndMoveFoldr%, %ININame%, %AppName%, RmndAndMoveFoldr
IniWrite, %RmndAndMove1Day%, %ININame%, %AppName%, RmndAndMove1Day
IniWrite, %RmndAndMove2Days%, %ININame%, %AppName%, RmndAndMove2Days
IniWrite, %RmndAndMove3Days%, %ININame%, %AppName%, RmndAndMove3Days
IniWrite, %RmndAndMove4Days%, %ININame%, %AppName%, RmndAndMove4Days
IniWrite, %RmndAndMove5Days%, %ININame%, %AppName%, RmndAndMove5Days
IniWrite, %RmndAndMove6Days%, %ININame%, %AppName%, RmndAndMove6Days
IniWrite, %RmndAndMove7Days%, %ININame%, %AppName%, RmndAndMove7Days

Reload

Return
