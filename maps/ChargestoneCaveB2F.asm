	const_def 2 ; object constants
	const CHARGESTONECAVEB2F_REVIVE
	const CHARGESTONECAVEB2F_RARE_CANDY
	const CHARGESTONECAVEB2F_TM_WILD_CHARGE
	const CHARGESTONECAVEB2F_GUITARIST
	const CHARGESTONECAVEB2F_HIKER
	const CHARGESTONECAVEB2F_ACE_TRAINERM

ChargestoneCaveB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerGuitarist2Chargestone:
	trainer GUITARIST, GUITARIST_CHARGESTONE_2, EVENT_BEAT_GUITARIST_CHARGESTONE_2, Guitarist2ChargestoneSeenText, Guitarist2ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Guitarist2ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerHiker3Chargestone:
	trainer HIKER_D, HIKER_CHARGESTONE_3, EVENT_BEAT_HIKER_CHARGESTONE_3, Hiker3ChargestoneSeenText, Hiker3ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker3ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerM2Chargestone:
	trainer ACE_TRAINERM_D, ACE_TRAINERM_CHARGESTONE_2, EVENT_BEAT_ACE_TRAINERM_CHARGESTONE_2, AceTrainerM2ChargestoneSeenText, AceTrainerM2ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerM2ChargestoneAfterText
	waitbutton
	closetext
	end
	
ChargestoneRevive:
	itemball REVIVE
	
ChargestoneRareCandy:
	itemball RARE_CANDY
	
ChargestoneTMWildCharge:
	itemball TM_WILD_CHARGE
	
ChargestoneElixir:
	hiddenitem ELIXIR, EVENT_CHARGESTONE_ELIXIR
	
Guitarist2ChargestoneSeenText:
	text "Here I go!"
	done

Guitarist2ChargestoneBeatenText:
	text "Your style is"
	line "electrifying!"
	done

Guitarist2ChargestoneAfterText:
	text "You know what? At"
	line "first I would"
	
	para "practice real"
	line "quiet so I"
	
	para "wouldn't bother"
	line "the #MON living"
	
	para "here… But then"
	line "guess what! The"
	
	para "#MON come and"
	line "listen to me play!"
	done
	
Hiker3ChargestoneSeenText:
	text "It is the way of"
	line "greeting high in"
	
	para "the mountains and"
	line "down in the caves."
	
	para "That's right! We"
	line "each get our #-"
	cont "MON, and begin!"
	done

Hiker3ChargestoneBeatenText:
	text "Farewell…"
	line "Farewell, my"
	cont "victory…"
	done

Hiker3ChargestoneAfterText:
	text "I should have"
	line "brought an ESCAPE"
	cont "ROPE!"
	done
	
AceTrainerM2ChargestoneSeenText:
	text "I researched on"
	line "the PC the best"
	
	para "way to battle, and"
	line "now I'm sure to"
	cont "win!"
	done

AceTrainerM2ChargestoneBeatenText:
	text "Seriously?"
	done

AceTrainerM2ChargestoneAfterText:
	text "What I found on"
	line "the PC was just"
	
	para "someone else's"
	line "idea and not an"
	
	para "answer that I had"
	line "come up with"
	cont "myself…"
	done

ChargestoneCaveB2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  5,  3, CHARGESTONE_CAVE_B1F, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event  3, 19, BGEVENT_ITEM, ChargestoneElixir

	db 6 ; object events
	object_event  2, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneRevive, EVENT_CHARGESTONE_REVIVE
	object_event 15, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneRareCandy, EVENT_CHARGESTONE_RARE_CANDY
	object_event 18,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, ChargestoneTMWildCharge, EVENT_CHARGESTONE_TM_WILD_CHARGE
	object_event  6,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGuitarist2Chargestone, -1
	object_event  8, 21, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerHiker3Chargestone, -1
	object_event 18, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerM2Chargestone, -1
	