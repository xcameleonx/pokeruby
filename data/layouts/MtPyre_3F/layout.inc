MtPyre_3F_MapBorder:: @ 82DB604
	.incbin "data/layouts/MtPyre_3F/border.bin"

MtPyre_3F_MapBlockdata:: @ 82DB60C
	.incbin "data/layouts/MtPyre_3F/map.bin"

	.align 2
MtPyre_3F_Layout:: @ 82DB760
	.4byte 0xd
	.4byte 0xd
	.4byte MtPyre_3F_MapBorder
	.4byte MtPyre_3F_MapBlockdata
	.4byte gTileset_General
	.4byte gTileset_Facility
