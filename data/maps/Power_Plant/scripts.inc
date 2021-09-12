Power_Plant_MapScripts::
	.byte 0
	
Power_Plant_Eventscript_Portal::
	lock
	msgbox Power_Plant_Text_Portal_Hoenn, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq Power_Plant_Eventscript_Portal2
	waitse
	playmoncry SPECIES_HOOPA, 2
	delay 40
	waitmoncry
	warp MAP_NEW_MAUVILLE_INSIDE, 21, 16, 0
	release
	end
	
Power_Plant_Eventscript_Portal2::
	release
	end
	
Power_Plant_Text_Portal:
	.string "There is a mysterious portal that\n"
	.string "looks like it leads to somewhere, do\l"
	.string "you want to go inside?$"
	
Power_Plant_Text_Portal_Hoenn:
	.string "There is a mysterious portal that\n"
	.string "looks like it leads to somewhere\l"
	.string "familiar,do you want to go inside?$"
