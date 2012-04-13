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
	RunMacro("!aia", A_ThisHotkey)
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

JumpToFolder:
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

SetReminder:
	If (LatestOutlookVersion < 2010)
		RunMacro("!aur", A_ThisHotkey)
	Else
		RunMacro("!hur", A_ThisHotkey)
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
