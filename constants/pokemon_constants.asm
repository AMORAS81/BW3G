; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - Footprints (see gfx/footprints.asm)
	const_def 1
	const SNIVY      ; 01
	const SERVINE    ; 02
	const SERPERIOR  ; 03
	const TEPIG      ; 04
	const PIGNITE    ; 05
	const EMBOAR     ; 06
	const OSHAWOTT   ; 07
	const DEWOTT     ; 08
	const SAMUROTT   ; 09
	const PATRAT     ; 0a
	const WATCHOG    ; 0b
	const PURRLOIN   ; 0c
	const LIEPARD    ; 0d
	const PIDOVE     ; 0e
	const TRANQUILL  ; 0f
	const UNFEZANT   ; 10
	const IGGLYBUFF  ; 11
	const JIGGLYPUFF ; 12
	const WIGGLYTUFF ; 13
	const AZURILL    ; 14
	const MARILL     ; 15
	const AZUMARILL  ; 16
	const SEWADDLE   ; 17
	const SWADLOON   ; 18
	const LEAVANNY   ; 19
	const VENIPEDE   ; 1a
	const WHIRLIPEDE ; 1b
	const SCOLIPEDE  ; 1c
	const LILLIPUP   ; 1d
	const HERDIER    ; 1e
	const STOUTLAND  ; 1f
	const TYMPOLE    ; 20
	const PALPITOAD  ; 21
	const SEISMITOAD ; 22
	const ZUBAT      ; 23
	const GOLBAT     ; 24
	const CROBAT     ; 25
	const WOOBAT     ; 26
	const SWOOBAT    ; 27
	const ROGGENROLA ; 28
	const BOLDORE    ; 29
	const GIGALITH   ; 2a
	const CLEFFA     ; 2b
	const CLEFAIRY   ; 2c
	const CLEFABLE   ; 2d
	const MUNNA      ; 2e
	const MUSHARNA   ; 2f
	const RUFFLET    ; 30
	const BRAVIARY   ; 31
	const VULLABY    ; 32
	const MANDIBUZZ  ; 33
	const BUDEW      ; 34
	const ROSELIA    ; 35
	const ROSERADE   ; 36
	const FOONGUS    ; 37
	const AMOONGUSS  ; 38
	const RALTS      ; 39
	const KIRLIA     ; 3a
	const GARDEVOIR  ; 3b
	const GALLADE    ; 3c
	const BLITZLE    ; 3d
	const ZEBSTRIKA  ; 3e
	const MAREEP     ; 3f
	const FLAAFFY    ; 40
	const AMPHAROS   ; 41
	const DRILBUR    ; 42
	const EXCADRILL  ; 43
	const SNUBBULL   ; 44
	const GRANBULL   ; 45
	const RIOLU      ; 46
	const LUCARIO    ; 47
	const TIMBURR    ; 48
	const GURDURR    ; 49
	const CONKELDURR ; 4a
	const ARON       ; 4b
	const LAIRON     ; 4c
	const AGGRON     ; 4d
	const ONIX       ; 4e
	const STEELIX    ; 4f
	const NOSEPASS   ; 50
	const PROBOPASS  ; 51
	const MAWILE     ; 52
	const DWEBBLE    ; 53
	const CRUSTLE    ; 54
	const DRIFLOON   ; 55
	const DRIFBLIM   ; 56
	const MEDITITE   ; 57
	const MEDICHAM   ; 58
	const HOUNDOUR   ; 59
	const HOUNDOOM   ; 5a
	const YAMASK     ; 5b
	const COFAGRIGUS ; 5c
	const GASTLY     ; 5d
	const HAUNTER    ; 5e
	const GENGAR     ; 5f
	const LITWICK    ; 60
	const LAMPENT    ; 61
	const CHANDELURE ; 62
	const COTTONEE   ; 63
	const WHIMSICOTT ; 64
	const PETILIL    ; 65
	const LILLIGANT  ; 66
	const YANMA      ; 67
	const YANMEGA    ; 68
	const SHROOMISH  ; 69
	const BRELOOM    ; 6a
	const JOLTIK     ; 6b
	const GALVANTULA ; 6c
	const SPIRITOMB  ; 6d
	const ZORUA      ; 6e
	const ZOROARK    ; 6f
	const TRUBBISH   ; 70
	const GARBODOR   ; 71
	const MAGNEMITE  ; 72
	const MAGNETON   ; 73
	const MAGNEZONE  ; 74
	const GOTHITA    ; 75
	const GOTHORITA  ; 76
	const GOTHITELLE ; 77
	const SOLOSIS    ; 78
	const DUOSION    ; 79
	const REUNICLUS  ; 7a
	const DEERLING   ; 7b
	const SAWSBUCK   ; 7c
	const KARRABLAST ; 7d
	const ESCAVALIER ; 7e
	const SHELMET    ; 7f
	const ACCELGOR   ; 80
	const FERROSEED  ; 81
	const FERROTHORN ; 82
	const BASCULIN   ; 83
	const REMORAID   ; 84
	const OCTILLERY  ; 85
	const DARUMAKA   ; 86
	const DARMANITAN ; 87
	const ELEKID     ; 88
	const ELECTABUZZ ; 89
	const ELECTIVIRE ; 8a
	const MAGBY      ; 8b
	const MAGMAR     ; 8c
	const MAGMORTAR  ; 8d
	const SANDILE    ; 8e
	const KROKOROK   ; 8f
	const KROOKODILE ; 90
	const SKORUPI    ; 91
	const DRAPION    ; 92
	const GIBLE      ; 93
	const GABITE     ; 94
	const GARCHOMP   ; 95
	const SCRAGGY    ; 96
	const SCRAFTY    ; 97
	const NUMEL      ; 98
	const CAMERUPT   ; 99
	const MARACTUS   ; 9a
	const GLIGAR     ; 9b
	const GLISCOR    ; 9c
	const BALTOY     ; 9d
	const CLAYDOL    ; 9e
	const SIGILYPH   ; 9f
	const GOLETT     ; a0
	const GOLURK     ; a1
	const TIRTOUGA   ; a2
	const CARRACOSTA ; a3
	const ARCHEN     ; a4
	const ARCHEOPS   ; a5
	const FRILLISH   ; a6
	const JELLICENT  ; a7
	const EMOLGA     ; a8
	const VULPIX     ; a9
	const NINETALES  ; aa
	const DUCKLETT   ; ab
	const SWANNA     ; ac
	const SWABLU     ; ad
	const ALTARIA    ; ae
	const AUDINO     ; af
	const EEVEE      ; b0
	const VAPOREON   ; b1
	const JOLTEON    ; b2
	const FLAREON    ; b3
	const ESPEON     ; b4
	const UMBREON    ; b5
	const LEAFEON    ; b6
	const GLACEON    ; b7
	const SYLVEON    ; b8
	const CROAGUNK   ; b9
	const TOXICROAK  ; ba
	const HEATMOR    ; bb
	const DURANT     ; bc
	const KOFFING    ; bd
	const WEEZING    ; be
	const CORSOLA    ; bf
	const PINSIR     ; c0
	const HERACROSS  ; c1
	const THROH      ; c2
	const SAWK       ; c3
	const TROPIUS    ; c4
	const PAWNIARD   ; c5
	const BISHARP    ; c6
	const SKARMORY   ; c7
	const MANTYKE    ; c8
	const MANTINE    ; c9
	const AXEW       ; ca
	const FRAXURE    ; cb
	const HAXORUS    ; cc
	const BOUFFALANT ; cd
	const KLINK      ; ce
	const KLANG      ; cf
	const KLINKLANG  ; d0
	const DITTO      ; d1
	const STARYU     ; d2
	const STARMIE    ; d3
	const CUBCHOO    ; d4
	const BEARTIC    ; d5
	const VANILLITE  ; d6
	const VANILLISH  ; d7
	const VANILLUXE  ; d8
	const SNEASEL    ; d9
	const WEAVILE    ; da
	const CORPHISH   ; db
	const CRAWDAUNT  ; dc
	const SWINUB     ; dd
	const PILOSWINE  ; de
	const MAMOSWINE  ; df
	const LARVITAR   ; e0
	const PUPITAR    ; e1
	const TYRANITAR  ; e2
	const LARVESTA   ; e3
	const VOLCARONA  ; e4
	const TYNAMO     ; e5
	const EELEKTRIK  ; e6
	const EELEKTROSS ; e7
	const BELDUM     ; e8
	const METANG     ; e9
	const METAGROSS  ; ea
	const SPHEAL     ; eb
	const SEALEO     ; ec
	const WALREIN    ; ed
	const SNORUNT    ; ee
	const GLALIE     ; ef
	const FROSLASS   ; f0
	const CRYOGONAL  ; f1
	const HORSEA     ; f2
	const SEADRA     ; f3
	const KINGDRA    ; f4
	const STUNFISK   ; f5
	const DRATINI    ; f6
	const DRAGONAIR  ; f7
	const DRAGONITE  ; f8
	const DEINO      ; f9
	const ZWEILOUS   ; fa
	const HYDREIGON  ; fb
	const GENESECT   ; fc
	const GENESIS_MON; fd
JOHTO_POKEMON EQU const_value
NUM_POKEMON EQU const_value + -1
	const EGG        ; fe
	
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
NUM_UNOWN EQU const_value + -1 ; 26

