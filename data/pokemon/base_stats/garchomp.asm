	db GARCHOMP ; 183

	db  68,  90,  65,  82,  50,  55
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GROUND ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/garchomp/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, TOXIC, SWORD_DANCE, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, STONE_EDGE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, SHADOW_CLAW, REST, ROCK_SLIDE, CUT, FLY, SURF, STRENGHT, IRON_TAIL, OUTRAGE, HONE_CLAWS, AQUA_TAIL, DRAGON_PULSE, EARTH_POWER
	; end
