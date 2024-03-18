	const_def 2 ; object constants
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4
	const PLAYERSHOUSE1F_POKEFAN_F

PlayersHouse1F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

MeetMomLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetMomRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsTowardPlayerMovement
	jump MeetMomScript

.OnRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
MeetMomScript:
	opentext
	writetext MarlonLookingForYouText
	buttonsound
	stringtotext GearName, MEM_BUFFER_1
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	writetext WhatDayIsItText
	buttonsound
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	jump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	setscene SCENE_FINISHED
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	writetext MomGivesXtranText
	waitbutton
	closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromRight
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromLeft
	jump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsBackMovement
	jump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	jump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end

MeetMomTalkedScript:
	playmusic MUSIC_MOM
	jump MeetMomScript

GearName:
	db "XTRANSCEIVER@"

PlayersHouse1FReceiveItemStd:
	jumpstd receiveitem
	end

MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_DEFAULT
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext MarlonIsWaitingText
	waitbutton
	closetext
	end

.GotAPokemon:
	checkevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	iftrue .GotPhoneNumber
	writetext MomPhoneText
	buttonsound
	setevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	
.GotPhoneNumber
	checkflag ENGINE_POKEDEX
	iftrue .GotPokedex
	writetext SoWhatWasMarlonsErrandText
	waitbutton
	closetext
	end
	
.GotPokedex:
	writetext MomHappinessIntroText
	yesorno
	iffalse .refused
	
	special GetFirstPokemonHappiness
	writetext MomHappinessText2
	buttonsound
	ifgreater 250 - 1, .LovesYouALot
	ifgreater 200 - 1, .ReallyTrustsYou
	ifgreater 150 - 1, .SortOfHappy
	ifgreater 100 - 1, .QuiteCute
	ifgreater  50 - 1, .NotUsedToYou
	jump .LooksMean

.LovesYouALot:
	writetext MomHappinessRatingText2_LovesYouALot
	jump .Outro

.ReallyTrustsYou:
	writetext MomHappinessRatingText2_ReallyTrustsYou
	jump .Outro

.SortOfHappy:
	writetext MomHappinessRatingText2_SortOfHappy
	jump .Outro

.QuiteCute:
	writetext MomHappinessRatingText2_QuiteCute
	jump .Outro

.NotUsedToYou:
	writetext MomHappinessRatingText2_NotUsedToYou
	jump .Outro

.LooksMean:
	writetext MomHappinessRatingText2_LooksMean
	
.Outro
	buttonsound
	writetext MomHappinessOutroText
	waitbutton
	closetext
	end
	
.refused
	writetext MomRefusedHappinessText
	waitbutton
	closetext
	end

NeighborScript:
	faceplayer
	opentext
	checktime MORN
	iftrue .MornScript
	checktime DAY
	iftrue .DayScript
	checktime NITE
	iftrue .NiteScript

.MornScript:
	writetext NeighborMornIntroText
	buttonsound
	jump .Main

.DayScript:
	writetext NeighborDayIntroText
	buttonsound
	jump .Main

.NiteScript:
	writetext NeighborNiteIntroText
	buttonsound
	jump .Main

.Main:
	writetext NeighborText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_POKEFAN_F, RIGHT
	end

TVScript:
	jumptext TVText

StoveScript:
	jumptext StoveText

SinkScript:
	jumptext SinkText

FridgeScript:
	jumptext FridgeText

MomTurnsTowardPlayerMovement:
	turn_head RIGHT
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	step_end

MomTurnsBackMovement:
	turn_head LEFT
	step_end

MomWalksBackMovement:
	slow_step LEFT
	step_end

MarlonLookingForYouText:
	text "Oh, <PLAYER>!"
	line "It's about time"
	cont "you got up!"

	para "MARLON, the GYM"
	line "LEADER stopped by"
	cont "asking for you."
	
	para "Go stop by his"
	line "house and see what"
	cont "he needs."

	para "Oh! And before you"
	line "go out, make sure"
	
	para "you take your"
	line "XTRANSCIEVER."
	done

WhatDayIsItText:
	text "You can use the"
	line "XTRANSCIEVER to"
	cont "make phone calls."
	
	para "You can find it"
	line "in the C-GEAR"
	cont "menu."
	
	para "The C-GEAR also"
	line "shows the date"
	cont "and time."
	
	para "Hold on… Today's"
	line "date isn't set."
	done
	
IsItDSTText:
	text "Is it Daylight"
	line "Savings Time now?"
	done

MomGivesXtranText:
	text "Oh, so you can"
	line "adjust the clock"

	para "for Daylight"
	line "Saving Time in the"
	cont "C-GEAR menu!"
	
	para "OK! Now you need"	
	line "to hurry on over"
	cont "to MARLON's house"

	para "and see what he"
	line "wants you for!"
	done

MarlonIsWaitingText:
	text "MARLON is wait-"
	line "ing for you."
	
	para "You remember where"
	line "he lives, right?"
	
	para "It's the house"
	line "closest to shore."

	para "Hurry up, baby!"
	done
	
MomPhoneText:
	text "Well, <PLAY_G>,"
	line "did you talk to"
	cont "MARLON?"
	
	para "Oh, what's this?"
	line "A #MON?"
	cont "Oh, how cute!"
	
	para "You know, I spent"
	line "a lot of time"
	
	para "around #MON"
	line "when I was"
	cont "younger."
	
	para "I'm pretty good at"
	line "knowing how happy"
	
	para "a #MON is with"
	line "its trainer."
	
	para "Give me a call if"
	line "you want me to"
	
	para "tell you how"
	line "friendly your"
	
	para "#MON is toward"
	line "you!"
	done

SoWhatWasMarlonsErrandText:
	text "So, what did"
	line "MARLON want?"

	para "…"

	para "Oh, he wasn't at"
	line "home?"

	para "That's just like"
	line "him to wander off"
	cont "somewhere"
	
	para "You'd better go"
	line "and find him."
	done

MomHappinessIntroText:
	text "Hi baby! Welcome"
	line "home!"

	para "I hope you've been"
	line "treating your"
	cont "#MON well."

	para "Would you like me"
	line "to check how"

	para "friendly your"
	line "#MON is toward"
	cont "you?"
	done
	
MomRefusedHappinessText:
	text "Oh, okay. Well,"
	line "you stay safe, and"
	cont "have fun."
	
	para "You got this,"
	line "sweetheart!"
	done
	
MomHappinessText2:
	text "Oh, let me see"
	line "your @"
	text_ram wStringBuffer3
	text "…"
	done

MomHappinessRatingText2_LovesYouALot:
	text "It looks really"
	line "happy! It must"
	cont "love you a lot."
	done

MomHappinessRatingText2_ReallyTrustsYou:
	text "I get the feeling"
	line "that it really"
	cont "trusts you."
	done

MomHappinessRatingText2_SortOfHappy:
	text "It's friendly to-"
	line "ward you. It looks"
	cont "sort of happy."
	done

MomHappinessRatingText2_QuiteCute:
	text "It hasn't yet"
	line "formed a meaning-"
	cont "ful bond. Give it"
	cont "time."
	done

MomHappinessRatingText2_NotUsedToYou:
	text "You should treat"
	line "it better. It's"
	cont "not used to you."
	done

MomHappinessRatingText2_LooksMean:
	text "It doesn't seem to"
	line "like you at all."
	cont "It looks mean."
	done
	
MomHappinessOutroText:
	text "Now, be safe and"
	line "have fun on your"
	cont "travels, <PLAY_G>."
	
	para "You got this,"
	line "sweetheart!"
	done

NeighborMornIntroText:
	text "Good morning,"
	line "<PLAY_G>!"

	para "Your mom and I"
	line "have a date at"
	
	para "the MARINE TUBE"
	line "later today!"
	done

NeighborDayIntroText:
	text "Hello, <PLAY_G>!"

	para "Your mom and I"
	line "have a date at"
	
	para "the MARINE TUBE"
	line "soon. I'm excited!"
	done

NeighborNiteIntroText:
	text "Good evening,"
	line "<PLAY_G>!"

	para "Your mom and I"
	line "went on a date to"
	
	para "the MARINE TUBE"
	line "earlier today!"
	done

NeighborText:
	text "Oh, and have you"
	line "heard?"

	para "Your mom is"
	line "adamant about"

	para "becoming MARLON's"
	line "assistant."

	para "She really loves"
	line "#MON!"
	done

StoveText:
	text "Mom's specialty!"

	para "REVERSAL VOLCANO"
	line "BAKE MEAT!"
	done

SinkText:
	text "The sink is spot-"
	line "less. Mom likes it"
	cont "clean."
	done

FridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER and"
	line "CASTELIACONEs!"
	done

TVText:
	text "There's a movie on"
	line "TV: Stars dot the"

	para "sky as two boys"
	line "ride on a train"
	cont "to ANVILLE TOWN…"

	para "I'd better get"
	line "rolling too!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  6,  7, HUMILAU_CITY, 1
	warp_event  7,  7, HUMILAU_CITY, 1
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	db 2 ; coord events
	coord_event  8,  4, SCENE_DEFAULT, MeetMomLeftScript
	coord_event  9,  4, SCENE_DEFAULT, MeetMomRightScript

	db 4 ; bg events
	bg_event  0,  1, BGEVENT_READ, StoveScript
	bg_event  1,  1, BGEVENT_READ, SinkScript
	bg_event  2,  1, BGEVENT_READ, FridgeScript
	bg_event  4,  1, BGEVENT_READ, TVScript

	db 5 ; object events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  2,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  0,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  4,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NeighborScript, EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
