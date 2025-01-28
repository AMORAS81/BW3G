npctrade: MACRO
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	shift
	dw \7
	db \8, \9, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	npctrade TRADE_DIALOGSET_HAPPY,     CLEFFA,     MAGNEMITE,  "TRON@@@@@@@", $DD, $DD, BERRY,        37460, "HUEY@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_CREEPY,    ZORUA,      SPIRITOMB,  "SOULCASKET@", $FF, $FF, MYSTERYBERRY, 48926, "REGINA@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      CORSOLA,    BELDUM,     "SILVER@@@@@", $FD, $FF, GOLD_BERRY,   29189, "LUCY@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, MARACTUS,   THROH,      "ERNESTO@@@@", $BB, $BB, PROTEIN,      00283, "EMY@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, MARACTUS,   SAWK,       "ROBERTO@@@@", $BB, $BB, PROTEIN,      15616, "KRISSY@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     TROPIUS,    PAWNIARD,   "SHREDDER@@@", $BB, $BB, FOCUS_SASH,   37644, "LAURIE@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      SKARMORY,   LARVITAR,   "FLUFFY@@@@@", $FF, $FF, KINGS_ROCK,   26491, "KIM@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     AXEW,       DEINO,      "VALMONT@@@@", $FF, $FE, DRAGON_FANG,  50082, "DOUG@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, KLINK,      DRATINI,    "SHEN@@@@@@@", $FF, $FE, LIFE_ORB,     26592, "STANLEY@@@@", TRADE_GENDER_EITHER
