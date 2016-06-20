LittlerootTown_BrendansHouse_2F_MapScripts:: @ 81527A4
	map_script 3, LittlerootTown_BrendansHouse_2F_MapScript1_1527AF
	map_script 4, LittlerootTown_BrendansHouse_2F_MapScript2_1527DA
	.byte 0

LittlerootTown_BrendansHouse_2F_MapScript1_1527AF:: @ 81527AF
	checkflag 130
	callif 0, LittlerootTown_BrendansHouse_2F_EventScript_1527CE
	compare 0x4092, 4
	callif 1, LittlerootTown_BrendansHouse_2F_EventScript_1B6950
	call LittlerootTown_BrendansHouse_2F_EventScript_1A2F3D
	setvar 0x4089, 0
	end

LittlerootTown_BrendansHouse_2F_EventScript_1527CE:: @ 81527CE
	movespriteperm 1, 1, 2
	spritebehave 1, 7
	return

LittlerootTown_BrendansHouse_2F_MapScript2_1527DA:: @ 81527DA
	map_script_2 0x4089, 0, LittlerootTown_BrendansHouse_2F_EventScript_1527E4
	.2byte 0

LittlerootTown_BrendansHouse_2F_EventScript_1527E4:: @ 81527E4
	checkgender
	compare RESULT, 0
	jumpeq LittlerootTown_BrendansHouse_2F_EventScript_1A2F68
	end

	.incbin "baserom.gba", 0x1527f1, 0x2d

	.global gUnknown_0815281E
gUnknown_0815281E: @ 815281E

LittlerootTown_BrendansHouse_2F_EventScript_15281E:: @ 815281E
	lockall
	checkgender
	compare RESULT, 0
	jumpeq LittlerootTown_BrendansHouse_2F_EventScript_152837
	compare RESULT, 1
	jumpeq LittlerootTown_BrendansHouse_2F_EventScript_15285D
	end

LittlerootTown_BrendansHouse_2F_EventScript_152837:: @ 8152837
	setvar 0x8004, 1
	special 214
	playsfx 4
	msgbox LittlerootTown_BrendansHouse_2F_Text_1A10D6, 4
	special 249
	waitstate
	releaseall
	end

	.global gUnknown_08152850
gUnknown_08152850: @ 8152850

	.incbin "baserom.gba", 0x152850, 0xd

LittlerootTown_BrendansHouse_2F_EventScript_15285D:: @ 815285D
	msgbox LittlerootTown_BrendansHouse_2F_Text_1A100C, 4
	releaseall
	end

LittlerootTown_BrendansHouse_2F_EventScript_152867:: @ 8152867
LittlerootTown_MaysHouse_2F_EventScript_152867:: @ 8152867
	msgbox LittlerootTown_BrendansHouse_2F_Text_172F9A, 3
	end

LittlerootTown_BrendansHouse_2F_EventScript_152870:: @ 8152870
LittlerootTown_MaysHouse_2F_EventScript_152870:: @ 8152870
	msgbox LittlerootTown_BrendansHouse_2F_Text_17306C, 3
	end

	.include "data/maps/scripts/LittlerootTown_MaysHouse_1F.s"
	.include "data/maps/scripts/LittlerootTown_MaysHouse_2F.s"
LittlerootTown_BrendansHouse_2F_Movement_152C11:: @ 8152C11
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_13
	step_end

LittlerootTown_BrendansHouse_2F_Movement_152C1C:: @ 8152C1C
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_13
	step_end

LittlerootTown_BrendansHouse_2F_Movement_152C25:: @ 8152C25
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_up
	step_13
	step_end

LittlerootTown_BrendansHouse_2F_Movement_152C30:: @ 8152C30
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_13
	step_end

	.global gUnknown_08152C39
gUnknown_08152C39: @ 8152C39

LittlerootTown_MaysHouse_2F_EventScript_152C39:: @ 8152C39
	lockall
	checkgender
	compare RESULT, 0
	jumpeq LittlerootTown_MaysHouse_2F_EventScript_152C52
	compare RESULT, 1
	jumpeq LittlerootTown_MaysHouse_2F_EventScript_152C5C
	end

LittlerootTown_MaysHouse_2F_EventScript_152C52:: @ 8152C52
	msgbox LittlerootTown_MaysHouse_2F_Text_1A100C, 4
	releaseall
	end

LittlerootTown_MaysHouse_2F_EventScript_152C5C:: @ 8152C5C
	setvar 0x8004, 2
	special 214
	playsfx 4
	msgbox LittlerootTown_MaysHouse_2F_Text_1A10D6, 4
	special 249
	waitstate
	releaseall
	end

	.global gUnknown_08152C75
gUnknown_08152C75: @ 8152C75

	.incbin "baserom.gba", 0x152c75, 0xd
