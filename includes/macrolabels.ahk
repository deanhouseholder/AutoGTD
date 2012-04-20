;*******************************************************************************
;				Macro Labels
;*******************************************************************************

; Outlook Shortcuts
Category1:
	RunMacro("^{F3}", A_ThisHotkey)
Return

Category2:
	RunMacro("^{F4}", A_ThisHotkey)
Return

Category3:
	RunMacro("^{F5}", A_ThisHotkey)
Return

Category4:
	RunMacro("^{F6}", A_ThisHotkey)
Return

Category5:
	RunMacro("^{F7}", A_ThisHotkey)
Return

Category6:
	RunMacro("^{F8}", A_ThisHotkey)
Return

Category7:
	RunMacro("^{F9}", A_ThisHotkey)
Return

Category8:
	RunMacro("^{F10}", A_ThisHotkey)
Return

Category9:
	RunMacro("^{F11}", A_ThisHotkey)
Return

Category10:
	RunMacro("^{F12}", A_ThisHotkey)
Return

OpenCategories:
	if (LatestOutlookVersion <= 2007) {
		RunMacro("!aia", A_ThisHotkey)
	} else {
		RunMacro("!hga", A_ThisHotkey)
	}
Return

Move1ToFolder:
	MoveSelected(Move1Folder, A_ThisHotkey)
Return

Move2ToFolder:
	MoveSelected(Move2Folder, A_ThisHotkey)
Return

Move3ToFolder:
	MoveSelected(Move3Folder, A_ThisHotkey)
Return

Move4ToFolder:
	MoveSelected(Move4Folder, A_ThisHotkey)
Return

Move5ToFolder:
	MoveSelected(Move5Folder, A_ThisHotkey)
Return

Move6ToFolder:
	MoveSelected(Move6Folder, A_ThisHotkey)
Return

Move7ToFolder:
	MoveSelected(Move7Folder, A_ThisHotkey)
Return

Move8ToFolder:
	MoveSelected(Move8Folder, A_ThisHotkey)
Return

Move9ToFolder:
	MoveSelected(Move9Folder, A_ThisHotkey)
Return

CustomFilter1:
	CustomFilter(Filter1Name, Filter1Hotkey, Filter1Search, Filter1Folder, Filter1Read, A_ThisHotkey)
Return

CustomFilter2:
	CustomFilter(Filter2Name, Filter2Hotkey, Filter2Search, Filter2Folder, Filter2Read, A_ThisHotkey)
Return

CustomFilter3:
	CustomFilter(Filter3Name, Filter3Hotkey, Filter3Search, Filter3Folder, Filter3Read, A_ThisHotkey)
Return

CustomFilter4:
	CustomFilter(Filter4Name, Filter4Hotkey, Filter4Search, Filter4Folder, Filter4Read, A_ThisHotkey)
Return

CustomFilter5:
	CustomFilter(Filter5Name, Filter5Hotkey, Filter5Search, Filter5Folder, Filter5Read, A_ThisHotkey)
Return

CustomFilter6:
	CustomFilter(Filter6Name, Filter6Hotkey, Filter6Search, Filter6Folder, Filter6Read, A_ThisHotkey)
Return

JumpToFolder1:
	JumpToFolder(JumpTo1Folder, A_ThisHotkey)
Return

JumpToFolder2:
	JumpToFolder(JumpTo2Folder, A_ThisHotkey)
Return

JumpToFolder3:
	JumpToFolder(JumpTo3Folder, A_ThisHotkey)
Return

JumpToFolder4:
	JumpToFolder(JumpTo4Folder, A_ThisHotkey)
Return

JumpToFolder5:
	JumpToFolder(JumpTo5Folder, A_ThisHotkey)
Return

JumpToFolder6:
	JumpToFolder(JumpTo6Folder, A_ThisHotkey)
Return

JumpToFolder7:
	JumpToFolder(JumpTo7Folder, A_ThisHotkey)
Return

JumpToFolder8:
	JumpToFolder(JumpTo8Folder, A_ThisHotkey)
Return

JumpToFolder9:
	JumpToFolder(JumpTo9Folder, A_ThisHotkey)
Return

JumpToFolder0:
	JumpToFolder(JumpTo0Folder, A_ThisHotkey)
Return

FlagMessage:
	RunMacro("{INS}", A_ThisHotkey)
Return

SetReminder:
	RunMacro("^+g", A_ThisHotkey)
Return

CreateTask:
	RunMacro("^+k", A_ThisHotkey)
Return

NewAppointment:
	RunMacro("^+a", A_ThisHotkey)
Return

TaskFromEmail:
	CreateTaskFromEmail()
Return

NewTaskInEmail:
	RunMacro("^+s", A_ThisHotkey)
Return

ShowUnread:
	ShortFilter("read:no", A_ThisHotkey)
Return

ShowAllUnread:
	ShortFilterAll("read:no", A_ThisHotkey)
Return

FocusOnSearch:
	RunMacro("^e", A_ThisHotkey)
Return

SearchAll:
	RunMacro("^!a", A_ThisHotkey)
Return

OpenContextMenu:
	RunMacro("+{F10}", A_ThisHotkey)
Return

OpenAddressBook:
	RunMacro("^+b", A_ThisHotkey)
Return

CloseWindow:
	SafeClose()
Return

Remind30Mins:
	RemindHour(.5, A_ThisHotkey)
Return

Remind1Hour:
	RemindHour(1, A_ThisHotkey)
Return

Remind2Hours:
	RemindHour(2, A_ThisHotkey)
Return

Remind3Hours:
	RemindHour(3, A_ThisHotkey)
Return

Remind4Hours:
	RemindHour(4, A_ThisHotkey)
Return

Remind5Hours:
	RemindHour(5, A_ThisHotkey)
Return

Remind6Hours:
	RemindHour(6, A_ThisHotkey)
Return

Remind7Hours:
	RemindHour(7, A_ThisHotkey)
Return

Remind8Hours:
	RemindHour(8, A_ThisHotkey)
Return

Remind9Hours:
	RemindHour(9, A_ThisHotkey)
Return

Remind1Day:
	RemindDay(1, A_ThisHotkey)
Return

Remind2Days:
	RemindDay(2, A_ThisHotkey)
Return

Remind3Days:
	RemindDay(3, A_ThisHotkey)
Return

Remind4Days:
	RemindDay(4, A_ThisHotkey)
Return

Remind5Days:
	RemindDay(5, A_ThisHotkey)
Return

Remind6Days:
	RemindDay(6, A_ThisHotkey)
Return

Remind7Days:
	RemindDay(7, A_ThisHotkey)
Return

RmndAndMove1Day:
	RemindDayAuto(1, A_ThisHotkey)
	MoveSelected(RmndAndMoveFoldr, A_ThisHotkey)
Return

RmndAndMove2Days:
	RemindDayAuto(2, A_ThisHotkey)
	MoveSelected(RmndAndMoveFoldr, A_ThisHotkey)
Return

RmndAndMove3Days:
	RemindDayAuto(3, A_ThisHotkey)
	MoveSelected(RmndAndMoveFoldr, A_ThisHotkey)
Return

RmndAndMove4Days:
	RemindDayAuto(4, A_ThisHotkey)
	MoveSelected(RmndAndMoveFoldr, A_ThisHotkey)
Return

RmndAndMove5Days:
	RemindDayAuto(5, A_ThisHotkey)
	MoveSelected(RmndAndMoveFoldr, A_ThisHotkey)
Return

RmndAndMove6Days:
	RemindDayAuto(6, A_ThisHotkey)
	MoveSelected(RmndAndMoveFoldr, A_ThisHotkey)
Return

RmndAndMove7Days:
	RemindDayAuto(7, A_ThisHotkey)
	MoveSelected(RmndAndMoveFoldr, A_ThisHotkey)
Return

