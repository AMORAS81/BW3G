prob: MACRO
prob_total = prob_total + (\1)
	dw prob_total * $ffff / 100
ENDM

OddEggProbabilities:
prob_total = 0
; Cleffa
	prob 13
	prob 12
; Igglybuff
	prob 13
	prob 12
; Magby
	prob 13
	prob 12
; Elekid
	prob 13
	prob 12

OddEggs:

	db CLEFFA
	db NO_ITEM
	db CHARM, DIZZY_PUNCH, AURA_SPHERE, 0
	dw 04096 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 13, 15, 15 ; DVs
	db 35, 20, 10, 20 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 21 ; Max HP
	bigdw 9 ; Atk
	bigdw 9 ; Def
	bigdw 8 ; Spd
	bigdw 11 ; SAtk
	bigdw 12 ; SDef
	db "EGG@@@@@@@@"

	db CLEFFA
	db NO_ITEM
	db CHARM, DIZZY_PUNCH, AURA_SPHERE, 0
	dw 00768 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 13, 15, 14 ; DVs
	db 35, 20, 10, 20 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 21 ; Max HP
	bigdw 9 ; Atk
	bigdw 9 ; Def
	bigdw 8 ; Spd
	bigdw 10 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db IGGLYBUFF
	db NO_ITEM
	db SING, CHARM, DIZZY_PUNCH, CALM_MIND
	dw 04096 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 13, 15, 15 ; DVs
	db 15, 20, 10, 20 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 25 ; Max HP
	bigdw 9 ; Atk
	bigdw 7 ; Def
	bigdw 8 ; Spd
	bigdw 10 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

	db IGGLYBUFF
	db NO_ITEM
	db SING, CHARM, DIZZY_PUNCH, CALM_MIND
	dw 00768 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 13, 15, 14 ; DVs
	db 15, 20, 10, 20 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 25 ; Max HP
	bigdw 9 ; Atk
	bigdw 7 ; Def
	bigdw 8 ; Spd
	bigdw 10 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

	db MAGBY
	db NO_ITEM
	db EMBER, DIZZY_PUNCH, NASTY_PLOT, 0
	dw 02560 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 13, 15, 15 ; DVs
	db 25, 10, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 21 ; Max HP
	bigdw 14 ; Atk
	bigdw 10 ; Def
	bigdw 14 ; Spd
	bigdw 13 ; SAtk
	bigdw 12 ; SDef
	db "EGG@@@@@@@@"

	db MAGBY
	db NO_ITEM
	db EMBER, DIZZY_PUNCH, NASTY_PLOT, 0
	dw 00512 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 13, 15, 14 ; DVs
	db 25, 10, 20, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 21 ; Max HP
	bigdw 14 ; Atk
	bigdw 10 ; Def
	bigdw 14 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db ELEKID
	db NO_ITEM
	db QUICK_ATTACK, LEER, DIZZY_PUNCH, DRAIN_PUNCH
	dw 03072 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 13, 15, 15 ; DVs
	db 30, 30, 10, 10 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 21 ; Max HP
	bigdw 12 ; Atk
	bigdw 10 ; Def
	bigdw 16 ; Spd
	bigdw 13 ; SAtk
	bigdw 12 ; SDef
	db "EGG@@@@@@@@"

	db ELEKID
	db NO_ITEM
	db QUICK_ATTACK, LEER, DIZZY_PUNCH, DRAIN_PUNCH
	dw 00512 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 13, 15, 14 ; DVs
	db 30, 30, 10, 10 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 12 ; Atk
	bigdw 10 ; Def
	bigdw 16 ; Spd
	bigdw 12 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"
