	const_def 2 ; object constants
	const VICTORYROADENTRANCE_BADGE_1_UPPER
	const VICTORYROADENTRANCE_BADGE_1_LOWER
	const VICTORYROADENTRANCE_BADGE_2_UPPER
	const VICTORYROADENTRANCE_BADGE_2_LOWER
	const VICTORYROADENTRANCE_BADGE_3_UPPER
	const VICTORYROADENTRANCE_BADGE_3_LOWER
	const VICTORYROADENTRANCE_BADGE_4_UPPER
	const VICTORYROADENTRANCE_BADGE_4_LOWER
	const VICTORYROADENTRANCE_BADGE_5_UPPER
	const VICTORYROADENTRANCE_BADGE_5_LOWER
	const VICTORYROADENTRANCE_BADGE_6_UPPER
	const VICTORYROADENTRANCE_BADGE_6_LOWER
	const VICTORYROADENTRANCE_BADGE_7_UPPER
	const VICTORYROADENTRANCE_BADGE_7_LOWER
	const VICTORYROADENTRANCE_BADGE_8_UPPER
	const VICTORYROADENTRANCE_BADGE_8_LOWER

VictoryRoadEntrance_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .Clear_R23_Flag
	
.Clear_R23_Flag:
	clearevent EVENT_R23_WEST_UPPER_LEVEL
	return
	
VictoryRoadEntranceBadge1Script:
	checkevent EVENT_BADGE_GATES_1
	iffalse .done
	disappear VICTORYROADENTRANCE_BADGE_7_UPPER
	disappear VICTORYROADENTRANCE_BADGE_7_LOWER
	disappear VICTORYROADENTRANCE_BADGE_8_UPPER
	disappear VICTORYROADENTRANCE_BADGE_8_LOWER
	appear VICTORYROADENTRANCE_BADGE_2_UPPER
	appear VICTORYROADENTRANCE_BADGE_2_LOWER
	appear VICTORYROADENTRANCE_BADGE_3_UPPER
	appear VICTORYROADENTRANCE_BADGE_3_LOWER
.done
	end
	
VictoryRoadEntranceBadge2Script:
	checkevent EVENT_BADGE_GATES_2
	iffalse .done
	disappear VICTORYROADENTRANCE_BADGE_2_UPPER
	disappear VICTORYROADENTRANCE_BADGE_2_LOWER
	disappear VICTORYROADENTRANCE_BADGE_3_UPPER
	disappear VICTORYROADENTRANCE_BADGE_3_LOWER
	appear VICTORYROADENTRANCE_BADGE_7_UPPER
	appear VICTORYROADENTRANCE_BADGE_7_LOWER
	appear VICTORYROADENTRANCE_BADGE_8_UPPER
	appear VICTORYROADENTRANCE_BADGE_8_LOWER
.done
	end

VictoryRoadEntrance_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 46, 35, R_23_WEST, 7
	warp_event 47, 35, R_23_WEST, 8

	db 10 ; coord events
	coord_event 46, 34, -1, VictoryRoadEntranceBadge1Script
	coord_event 47, 34, -1, VictoryRoadEntranceBadge1Script
	coord_event 27, 28, -1, VictoryRoadEntranceBadge1Script
	coord_event 27, 29, -1, VictoryRoadEntranceBadge1Script
	coord_event 26, 28, -1, VictoryRoadEntranceBadge2Script
	coord_event 26, 29, -1, VictoryRoadEntranceBadge2Script
	coord_event  6, 20, -1, VictoryRoadEntranceBadge2Script
	coord_event  7, 20, -1, VictoryRoadEntranceBadge2Script
	coord_event  8, 20, -1, VictoryRoadEntranceBadge2Script
	coord_event  9, 20, -1, VictoryRoadEntranceBadge2Script

	db 0 ; bg events
	
	db 16 ; object events
	object_event 42, 26, SPRITE_BADGE_1, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 42, 30, SPRITE_BADGE_1, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 38, 26, SPRITE_BADGE_2, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, EVENT_BADGE_GATES_1
	object_event 38, 30, SPRITE_BADGE_2, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, EVENT_BADGE_GATES_1
	object_event 34, 26, SPRITE_BADGE_3, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, EVENT_BADGE_GATES_1
	object_event 34, 30, SPRITE_BADGE_3, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, EVENT_BADGE_GATES_1
	object_event 30, 26, SPRITE_BADGE_4, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 30, 30, SPRITE_BADGE_4, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 26, 26, SPRITE_BADGE_5, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 26, 30, SPRITE_BADGE_5, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 22, 26, SPRITE_BADGE_6, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 22, 30, SPRITE_BADGE_6, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 18, 26, SPRITE_BADGE_7, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, EVENT_BADGE_GATES_2
	object_event 18, 30, SPRITE_BADGE_7, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, EVENT_BADGE_GATES_2
	object_event 14, 26, SPRITE_BADGE_8, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, EVENT_BADGE_GATES_2
	object_event 14, 30, SPRITE_BADGE_8, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, EVENT_BADGE_GATES_2
	