	db MIMIKYU ; 210

	db  55, 90,  80,  96,  50,  105
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FAIRY ; type
	db 45 ; catch rate
	db 167 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mimikyu/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDER_WAVE, DAZZLINGLEAM, THUNDERBOLT, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, X_SCISSOR, HEX, DREAM_EATER, SHADOW_CLAW, REST, ATTRACT, THIEF, HONE_CLAWS, GIGA_DRAIN, DARK_PULSE, DRAIN_PUNCH
	; end
