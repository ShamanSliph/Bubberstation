/proc/extract_e3d_tag(screen_loc)
	if(!screen_loc)
		return ""
	var/char = length(screen_loc)+1

	while(char > 1)
		var/code = text2ascii(screen_loc, char-1)
		if(code >= 9 && code <= 13)
			char--
		else
			break
	return copytext(screen_loc, char)

/proc/modify_e3d_tag(screen_loc, new_tag)
	if(!screen_loc)
		return new_tag
	var/char = length(screen_loc)+1

	while(char > 1)
		var/code = text2ascii(screen_loc, char-1)
		if(code >= 9 && code <= 13)
			char--
		else
			break
	return "[copytext(screen_loc, 1, char)][new_tag]"

