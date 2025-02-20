	db GLISCOR ; 207

	db  75,  95, 125,  95,  45,  75
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 30 ; catch rate
	db 192 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gliscor/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, STONE_EDGE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, ACROBATICS, REST, ATTRACT, THIEF, ROCK_SLIDE, STRUGGLE_BUG, CUT, FLY, STRENGTH, STEEL_WING, IRON_TAIL, HONE_CLAWS, BUG_BITE, DARK_PULSE, EARTH_POWER
	; end
