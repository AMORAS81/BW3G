	const_def 2 ; object constants
	const R7_FRUIT_TREE
	const R7_ULTRA_BALL
	const R7_PP_UP
	const R7_MAX_ETHER
	const R7_AMOONGUSS_1
	const R7_AMOONGUSS_2
	const R7_NURSERY_AIDE
	const R7_SCHOOL_KIDM
	const R7_SCHOOL_KIDF
	const R7_PKMN_BREEDERM
	const R7_PKMN_BREEDERF

Rt7_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R7AmoongussScript1:
	opentext
	writetext R7AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R7_AMOONGUSS_1
	reloadmapafterbattle
	end

R7AmoongussScript2:
	opentext
	writetext R7AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R7_AMOONGUSS_2
	reloadmapafterbattle
	end

TrainerPkmnBreederFR7:
	trainer PKMN_BREEDERF, PKMN_BREEDERF_R7, EVENT_BEAT_PKMN_BREEDERF_R7, PkmnBreederFR7SeenText, PkmnBreederFR7BeatenText, 0, .Script

.Script:
	opentext
	checkjustbattled
	iftrue .RematchText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .RematchText
	writetext PkmnBreederFR7SeenText
	waitbutton
	closetext
	winlosstext PkmnBreederFR7BeatenText, 0
	setlasttalked R7_PKMN_BREEDERF
	loadtrainer PKMN_BREEDERF, PKMN_BREEDERF_R7
	startbattle
	reloadmapafterbattle
	opentext
; fallthrough
.RematchText
	writetext PkmnBreederFR7AfterText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

TrainerSchoolKidMR7:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_R7, EVENT_BEAT_SCHOOL_KIDM_R7, SchoolKidMR7SeenText, SchoolKidMR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidMR7AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidFR7:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_R7, EVENT_BEAT_SCHOOL_KIDF_R7, SchoolKidFR7SeenText, SchoolKidFR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidFR7AfterText
	waitbutton
	closetext
	end

TrainerNurseryAideR7:
	trainer NURSERY_AIDE, NURSERY_AIDE_R7, EVENT_BEAT_NURSERY_AIDE_R7, NurseryAideR7SeenText, NurseryAideR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NurseryAideR7AfterText
	waitbutton
	closetext
	end

TrainerPkmnBreederMR7:
	trainer PKMN_BREEDERM, PKMN_BREEDERM_R7, EVENT_BEAT_PKMN_BREEDERM_R7, PkmnBreederMR7SeenText, PkmnBreederMR7BeatenText, 0, .Script

.Script:
	opentext
	checkjustbattled
	iftrue .RematchText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .RematchText
	writetext PkmnBreederMR7SeenText
	waitbutton
	closetext
	winlosstext PkmnBreederMR7BeatenText, 0
	setlasttalked R7_PKMN_BREEDERM
	loadtrainer PKMN_BREEDERM, PKMN_BREEDERM_R7
	startbattle
	reloadmapafterbattle
	opentext
; fallthrough
.RematchText
	writetext PkmnBreederMR7AfterText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	end
	
R7FruitTree:
	fruittree FRUITTREE_R_7
	
R7HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_7, HIDDENGROTTO_TIER_3
	
R7UltraBall:
	itemball ULTRA_BALL
	
R7PPUp:
	itemball PP_UP
	
R7MaxEther:
	itemball MAX_ETHER

R7Sign:
	jumptext R7SignText

R7TowerSign:
	jumptext R7TowerSignText
	
SchoolKidMR7SeenText:
	text "Can you keep up"
	line "without having"
	cont "your head spin?"
	done

SchoolKidMR7BeatenText:
	text "Oh… My head is"
	line "spinning…"
	done

SchoolKidMR7AfterText:
	text "To have so easily"
	line "emerged from a"
	
	para "battle… You're"
	line "cool! Too cool,"
	cont "in fact!"
	done
	
SchoolKidFR7SeenText:
	text "My victory is"
	line "coming into view!"
	done

SchoolKidFR7BeatenText:
	text "Ahh, how could I"
	line "possibly lose?"
	done

SchoolKidFR7AfterText:
	text "Losing a battle is"
	line "so draining. I"
	
	para "feel really bummed"
	line "out."
	done
	
NurseryAideR7SeenText:
	text "Well, well, well…"
	line "If it isn't a lost"
	cont "#MON!"
	done

NurseryAideR7BeatenText:
	text "Sorry! I mistook"
	line "you for a #MON!"
	done

NurseryAideR7AfterText:
	text "Everyone loves"
	line "playing hide-and-"
	
	para "seek… I have"
	line "trouble finding"
	cont "them!"
	done
	
PkmnBreederMR7SeenText:
	text "I have a request"
	line "for you! Please"
	cont "battle me!"
	done

PkmnBreederMR7BeatenText:
	text "I'm happy my #-"
	line "MON got some good"
	cont "experience."
	done

PkmnBreederMR7AfterText:
	text "Battling you was a"
	line "truly meaningful"
	cont "experience!"
	
	para "Please, if you"
	line "wish to battle"
	
	para "again, come and"
	line "talk to me!"
	done
	
PkmnBreederFR7SeenText:
	text "I'm proud of my"
	line "#MON, which I"
	
	para "raised with love"
	line "and care!"
	done

PkmnBreederFR7BeatenText:
	text "Looks like I lost"
	line "to you in the"
	
	para "love and care"
	line "department!"
	done

PkmnBreederFR7AfterText:
	text "If you don't raise"
	line "your #MON with"
	
	para "love and care,"
	line "they'll grow up to"
	cont "be sad!"
	
	para "Come and see me if"
	line "you'd like to"
	cont "battle again!"
	done

R7AmoongussText:
	text "Ooong!"
	done

R7SignText:
	text "ROUTE 7."
	line "North to"
	cont "CELESTIAL TOWER."
	done

R7TowerSignText:
	text "CELESTIAL TOWER."
	
	para "Purify your"
	line "spirit."
	done

Rt7_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  5, 27, R_7_HOUSE, 1
	warp_event 10,  5, CELESTIAL_TOWER_1F, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 21, 49, BGEVENT_READ, R7Sign
	bg_event  9,  7, BGEVENT_READ, R7TowerSign
	bg_event  9, 27, BGEVENT_UP, R7HiddenGrotto
	bg_event 10, 27, BGEVENT_UP, R7HiddenGrotto

	db 11 ; object events
	object_event 18, 24, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R7FruitTree, -1
	object_event  8, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7UltraBall, EVENT_R_7_ULTRA_BALL
	object_event 23, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7PPUp, EVENT_R_7_PP_UP
	object_event 17, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7MaxEther, EVENT_R_7_MAX_ETHER
	object_event 16, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R7AmoongussScript1, EVENT_R_7_AMOONGUSS_1
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R7AmoongussScript2, EVENT_R_7_AMOONGUSS_2
	object_event 18, 27, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerNurseryAideR7, -1
	object_event 16, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidMR7, -1
	object_event 13, 19, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidFR7, -1
	object_event  4, 39, SPRITE_BREEDER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPkmnBreederMR7, -1
	object_event  9, 45, SPRITE_BREEDER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPkmnBreederFR7, -1
	