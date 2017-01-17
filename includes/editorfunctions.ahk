; Check for modifiers and Set separate variables to either 1 or 0
check_set_modifiers(prefix, key) {
	global
	; Check for CTRL
	if (RegExMatch(key,"(\^)", match))
	{
		%prefix%CTRL := 1
	} Else {
		%prefix%CTRL := 0
	}
	; Check for ALT
	if (RegExMatch(key,"(!)", match))
	{
		%prefix%ALT := 1
	} Else {
		%prefix%ALT := 0
	}
	; Check for SHIFT
	if (RegExMatch(key,"(\+)", match))
	{
		%prefix%SHIFT := 1
	} Else {
		%prefix%SHIFT := 0
	}
	; Check for WIN
	if (RegExMatch(key,"(#)", match))
	{
		%prefix%WIN := 1
	} Else {
		%prefix%WIN := 0
	}
}

; Strip off modifiers for display
strip_modifiers(prefix, key) {
	global
	%prefix% := RegExReplace(key, "(\^?!?\+?#?)", "")
}

; Add modifiers back to strings
modifiers_to_strings(prefix, key) {
	global
	If (%prefix%CTRL == 1) {
		prepend := "^"
	} Else {
		prepend := ""
	}
	If (%prefix%ALT == 1) {
		prepend .= "!"
	} Else {
		prepend .= ""
	}
	If (%prefix%SHIFT == 1) {
		prepend .= "+"
	} Else {
		prepend .= ""
	}
	If (%prefix%WIN == 1) {
		prepend .= "#"
	} Else {
		prepend .= ""
	}
	Return prepend . key
}
