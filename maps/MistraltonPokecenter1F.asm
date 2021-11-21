	const_def 2 ; object constants
	const MISTRALTONPOKECENTER_NURSE
	const MISTRALTONPOKECENTER_CLERK
	const MISTRALTONPOKECENTER_COOLTRAINER_M
	const MISTRALTONPOKECENTER_COOLTRAINER_F
	const MISTRALTONPOKECENTER_BUG_CATCHER

MistraltonPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MistraltonPokecenterNurseScript:
	jumpstd pokecenternurse

MistraltonPokecenterClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MISTRALTON
	closetext
	end

MistraltonPokecenterCooltrainerMScript:
	faceplayer
	opentext
	checkevent EVENT_SKYLA_RETURNED
	iftrue .SkylaReturned
	writetext MistraltonPokecenterCooltrainerMText
	waitbutton
	closetext
	end

.SkylaReturned:
	writetext MistraltonPokecenterCooltrainerMText_SkylaReturned
	waitbutton
	closetext
	end

MistraltonPokecenterCooltrainerFScript:
	jumptextfaceplayer MistraltonPokecenterCooltrainerFText

MistraltonPokecenterBugCatcherScript:
	jumptextfaceplayer MistraltonPokecenterBugCatcherText

MistraltonPokecenterCooltrainerMText:
	text "Where in the world"
	line "is MISTRALTON's"

	para "GYM LEADER? I want"
	line "to challenge her."
	done

MistraltonPokecenterCooltrainerMText_SkylaReturned:
	text "The GYM here in"
	line "MISTRALTON CITY"
	cont "is wild!"

	para "You'll be flying"
	line "through the air!"
	done

MistraltonPokecenterCooltrainerFText:
	text "I heard that the"
	line "path to TWIST"
	cont "MOUNTAIN is gone."

	para "I wonder what"
	line "happened to it."
	done

MistraltonPokecenterBugCatcherText:
	text "My dream is to be-"
	line "come a GYM LEADER."
	done

MistraltonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, MISTRALTON_CITY, 3
	warp_event  5,  9, MISTRALTON_CITY, 3

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenterClerkScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenterCooltrainerMScript, -1
	object_event  1,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenterCooltrainerFScript, -1
	object_event  0,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenterBugCatcherScript, -1
