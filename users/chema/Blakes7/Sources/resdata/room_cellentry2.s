;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OASIS resource data file
;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Common header
#include "..\params.h"
#include "..\object.h"
#include "..\script.h"
#include "..\resource.h"
#include "..\verbs.h"

#include "..\gameids.h"

#include "..\language.h"

*=$500

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Room: Cell zone
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 54
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 1
	.byt <(zplane0_data-res_start), >(zplane0_data-res_start), <(zplane0_tiles-res_start), >(zplane0_tiles-res_start)	
; No. Walkboxes and offsets to wb data and matrix
	.byt 6, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt 0, 0	; No palette information
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 1,200
; Room name (null terminated)
	.asc "Cells", 0
; Room tile map
column_data
	.byt 001, 001, 001, 001, 001, 059, 085, 079, 079, 140, 149, 149, 194, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 038, 060, 071, 079, 079, 141, 148, 148, 195, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 039, 061, 086, 079, 079, 142, 149, 149, 196, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 002, 062, 087, 079, 079, 143, 161, 148, 197, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 001, 063, 072, 090, 090, 090, 090, 090, 198, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 002, 002, 002, 002, 002, 144, 162, 002, 199, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 040, 064, 064, 064, 010, 145, 113, 183, 200, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 041, 065, 065, 103, 122, 146, 163, 184, 137, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 042, 066, 066, 066, 123, 079, 164, 185, 137, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 002, 067, 088, 088, 088, 147, 165, 186, 137, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 001, 068, 089, 089, 124, 089, 089, 187, 137, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 043, 069, 079, 079, 125, 148, 148, 188, 137, 137, 137, 137, 137
	.byt 001, 001, 001, 026, 044, 070, 079, 079, 126, 149, 166, 189, 137, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 045, 071, 079, 079, 127, 148, 167, 137, 137, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 046, 072, 090, 090, 090, 090, 168, 190, 137, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 002, 002, 002, 104, 088, 150, 169, 137, 137, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 001, 001, 001, 105, 079, 151, 170, 137, 137, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 002, 002, 002, 106, 079, 152, 171, 137, 137, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 001, 001, 001, 107, 079, 153, 172, 137, 137, 137, 137, 137, 137
	.byt 003, 003, 003, 003, 003, 003, 003, 108, 128, 154, 137, 137, 137, 137, 137, 137, 137
	.byt 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 173, 137, 137, 137, 137, 137, 137
	.byt 004, 004, 018, 027, 047, 004, 004, 004, 004, 004, 174, 137, 137, 137, 137, 137, 137
	.byt 005, 012, 019, 028, 048, 073, 091, 004, 004, 004, 175, 137, 137, 137, 137, 137, 137
	.byt 006, 013, 007, 029, 049, 074, 048, 109, 129, 004, 176, 137, 137, 137, 137, 137, 137
	.byt 007, 014, 020, 030, 050, 075, 092, 074, 130, 155, 177, 191, 137, 137, 137, 137, 137
	.byt 008, 015, 021, 031, 051, 076, 093, 110, 131, 156, 178, 192, 137, 137, 137, 137, 137
	.byt 009, 016, 001, 001, 001, 077, 094, 111, 132, 157, 179, 137, 137, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 002, 002, 095, 112, 133, 158, 180, 137, 137, 137, 137, 137, 137
	.byt 001, 001, 001, 001, 001, 001, 096, 113, 134, 159, 181, 137, 137, 137, 137, 137, 137
	.byt 002, 002, 002, 002, 002, 002, 097, 114, 119, 137, 137, 137, 137, 137, 137, 137, 137
	.byt 001, 001, 001, 032, 052, 052, 052, 052, 135, 137, 137, 137, 137, 137, 137, 137, 137
	.byt 002, 002, 002, 033, 053, 078, 078, 115, 136, 137, 137, 137, 137, 137, 137, 137, 137
	.byt 001, 001, 022, 034, 054, 079, 098, 116, 137, 137, 137, 137, 137, 137, 137, 137, 137
	.byt 002, 002, 023, 035, 055, 080, 099, 117, 137, 137, 137, 193, 201, 137, 137, 137, 137
	.byt 010, 001, 001, 036, 056, 081, 056, 118, 137, 137, 182, 121, 202, 137, 137, 137, 137
	.byt 011, 017, 024, 003, 003, 082, 100, 119, 138, 160, 004, 004, 203, 137, 137, 137, 137
	.byt 004, 004, 025, 037, 057, 083, 101, 120, 139, 004, 004, 004, 204, 191, 137, 137, 137
	.byt 004, 004, 004, 004, 058, 084, 102, 121, 004, 004, 004, 004, 004, 173, 137, 137, 137

; Room tile set
tiles_start
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $7F	; tile #1
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $7F	; tile #2
	.byt $5C, $7E, $76, $7E, $5C, $7E, $76, $7E	; tile #3
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $6A	; tile #4
	.byt $40, $6A, $40, $6A, $40, $69, $41, $69	; tile #5
	.byt $5F, $55, $7F, $55, $7F, $55, $7F, $55	; tile #6
	.byt $7C, $54, $7C, $50, $78, $50, $70, $50	; tile #7
	.byt $47, $45, $47, $45, $4F, $45, $5F, $55	; tile #8
	.byt $7F, $54, $7E, $55, $7D, $53, $79, $53	; tile #9
	.byt $76, $7F, $5D, $7F, $77, $7F, $5D, $7F	; tile #10
	.byt $40, $4A, $40, $6A, $40, $6A, $70, $72	; tile #11
	.byt $43, $69, $43, $65, $47, $65, $4F, $65	; tile #12
	.byt $7F, $55, $7F, $55, $7F, $55, $7E, $54	; tile #13
	.byt $70, $40, $60, $41, $41, $41, $43, $41	; tile #14
	.byt $5F, $55, $7F, $55, $7F, $55, $7F, $54	; tile #15
	.byt $77, $57, $6D, $4F, $57, $5F, $5D, $7F	; tile #16
	.byt $58, $7A, $70, $7C, $5C, $7C, $76, $7E	; tile #17
	.byt $40, $6A, $40, $6A, $40, $6A, $41, $69	; tile #18
	.byt $5F, $55, $5F, $55, $7F, $55, $7F, $55	; tile #19
	.byt $43, $45, $47, $45, $4F, $45, $5F, $55	; tile #20
	.byt $7E, $55, $7D, $55, $79, $53, $77, $57	; tile #21
	.byt $77, $7F, $5E, $7F, $7B, $7F, $5E, $7F	; tile #22
	.byt $7D, $5F, $57, $5F, $5D, $5F, $4F, $7F	; tile #23
	.byt $5D, $7F, $77, $7E, $5C, $7E, $76, $7E	; tile #24
	.byt $40, $6A, $40, $4A, $60, $6A, $70, $72	; tile #25
	.byt $77, $7F, $5D, $7F, $63, $5D, $7D, $63	; tile #26
	.byt $41, $69, $43, $69, $47, $65, $4F, $60	; tile #27
	.byt $7F, $55, $7F, $55, $7F, $55, $60, $55	; tile #28
	.byt $60, $40, $60, $41, $41, $41, $40, $41	; tile #29
	.byt $5F, $55, $7F, $55, $7F, $40, $7F, $55	; tile #30
	.byt $6D, $4F, $67, $5F, $5D, $5F, $57, $5F	; tile #31
	.byt $77, $7F, $5D, $7F, $77, $7E, $5D, $7D	; tile #32
	.byt $5D, $7F, $77, $60, $5F, $5F, $5C, $59	; tile #33
	.byt $77, $7F, $5C, $41, $7F, $7F, $40, $7F	; tile #34
	.byt $5D, $7F, $40, $7F, $7F, $40, $7F, $7F	; tile #35
	.byt $77, $7F, $41, $7E, $7E, $46, $72, $72	; tile #36
	.byt $78, $7D, $7C, $7D, $7C, $7C, $7C, $7C	; tile #37
	.byt $58, $7F, $7F, $7C, $5F, $7B, $7C, $7F	; tile #38
	.byt $4F, $6F, $5D, $5F, $6F, $6F, $5D, $7F	; tile #39
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $7E	; tile #40
	.byt $5D, $7F, $77, $7F, $5D, $7F, $40, $C2	; tile #41
	.byt $77, $7F, $5D, $7F, $77, $7F, $7D, $5F	; tile #42
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $78	; tile #43
	.byt $5F, $41, $7F, $7F, $77, $7F, $5D, $40	; tile #44
	.byt $5D, $7F, $77, $7F, $5D, $7F, $60, $5F	; tile #45
	.byt $77, $7F, $5D, $7F, $77, $7F, $41, $7E	; tile #46
	.byt $47, $65, $43, $69, $41, $69, $41, $6A	; tile #47
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $55	; tile #48
	.byt $60, $40, $70, $50, $78, $50, $78, $54	; tile #49
	.byt $7F, $55, $7F, $55, $5F, $45, $4F, $45	; tile #50
	.byt $5D, $4F, $67, $57, $75, $53, $7B, $53	; tile #51
	.byt $75, $7D, $5D, $7D, $75, $7D, $5D, $7D	; tile #52
	.byt $5A, $5B, $5B, $5B, $5B, $5B, $5B, $5B	; tile #53
	.byt $7F, $5F, $6F, $73, $7D, $7E, $7F, $7F	; tile #54
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $4F, $77	; tile #55
	.byt $72, $72, $72, $72, $72, $72, $72, $72	; tile #56
	.byt $7C, $7C, $7C, $7C, $7C, $7C, $7C, $42	; tile #57
	.byt $40, $4A, $60, $6A, $50, $52, $60, $5A	; tile #58
	.byt $77, $7F, $5D, $7F, $77, $7F, $40, $7F	; tile #59
	.byt $5D, $7F, $77, $7F, $5D, $7C, $43, $7F	; tile #60
	.byt $77, $7F, $5D, $7F, $77, $40, $7F, $7F	; tile #61
	.byt $5D, $7F, $77, $7F, $50, $4F, $7F, $7F	; tile #62
	.byt $77, $7F, $5D, $7F, $41, $7E, $7E, $7E	; tile #63
	.byt $76, $7E, $5C, $7E, $76, $7E, $5C, $7E	; tile #64
	.byt $C3, $C2, $C3, $C2, $C3, $C2, $C3, $C2	; tile #65
	.byt $57, $5F, $5D, $5F, $57, $5F, $5D, $5F	; tile #66
	.byt $5D, $7E, $75, $7D, $5D, $7D, $75, $7D	; tile #67
	.byt $60, $5F, $5F, $5F, $5F, $5E, $5D, $5D	; tile #68
	.byt $47, $7F, $7F, $7F, $70, $4F, $7F, $7F	; tile #69
	.byt $7F, $7F, $7F, $7F, $40, $7F, $7F, $7F	; tile #70
	.byt $7F, $7F, $7F, $40, $7F, $7F, $7F, $7F	; tile #71
	.byt $7E, $7E, $7E, $4E, $56, $56, $56, $56	; tile #72
	.byt $7F, $55, $5F, $65, $4F, $65, $47, $65	; tile #73
	.byt $7C, $54, $7E, $54, $7F, $55, $7F, $55	; tile #74
	.byt $47, $45, $43, $41, $43, $41, $41, $40	; tile #75
	.byt $7D, $55, $7E, $54, $7F, $55, $7F, $55	; tile #76
	.byt $77, $7F, $5D, $7F, $57, $5F, $5D, $4F	; tile #77
	.byt $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B	; tile #78
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #79
	.byt $7B, $7D, $7E, $7F, $7F, $7F, $7E, $7E	; tile #80
	.byt $72, $72, $52, $62, $62, $52, $72, $72	; tile #81
	.byt $5C, $7F, $77, $7F, $5D, $7C, $73, $7B	; tile #82
	.byt $7C, $43, $5D, $7F, $60, $5F, $7F, $7F	; tile #83
	.byt $50, $70, $70, $42, $7C, $7E, $7E, $7E	; tile #84
	.byt $7F, $7F, $7F, $7C, $43, $7F, $7F, $7F	; tile #85
	.byt $7F, $7F, $7E, $41, $7F, $7F, $7F, $7F	; tile #86
	.byt $7F, $7F, $40, $7F, $7F, $7F, $7F, $7F	; tile #87
	.byt $5D, $7D, $75, $7D, $5D, $7D, $75, $7D	; tile #88
	.byt $5D, $5D, $5D, $5D, $5D, $5D, $5D, $5D	; tile #89
	.byt $56, $56, $56, $56, $56, $56, $56, $56	; tile #90
	.byt $43, $69, $43, $69, $41, $6A, $40, $6A	; tile #91
	.byt $60, $50, $70, $50, $78, $50, $78, $54	; tile #92
	.byt $7F, $55, $5F, $55, $5F, $45, $4F, $45	; tile #93
	.byt $67, $57, $75, $57, $78, $53, $7D, $55	; tile #94
	.byt $5D, $7F, $76, $41, $7F, $7F, $7F, $7F	; tile #95
	.byt $77, $7E, $41, $7F, $7F, $7F, $7F, $7F	; tile #96
	.byt $5D, $43, $7D, $7D, $7D, $7D, $7D, $7D	; tile #97
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7E, $7D	; tile #98
	.byt $7D, $7B, $77, $6F, $5F, $5F, $7F, $7F	; tile #99
	.byt $5B, $7B, $73, $7B, $5B, $7B, $74, $7F	; tile #100
	.byt $7F, $7F, $7F, $7F, $7E, $61, $5D, $7F	; tile #101
	.byt $7E, $7E, $7E, $7C, $40, $7A, $70, $72	; tile #102
	.byt $C3, $C2, $C3, $C2, $C3, $C2, $C3, $41	; tile #103
	.byt $5D, $7F, $77, $7F, $5D, $7F, $76, $7D	; tile #104
	.byt $77, $7F, $5D, $7F, $77, $7C, $43, $7F	; tile #105
	.byt $5D, $7F, $77, $7F, $5D, $40, $7F, $7F	; tile #106
	.byt $77, $7F, $5D, $7F, $40, $7F, $7F, $7F	; tile #107
	.byt $5C, $7E, $76, $7E, $5C, $6E, $66, $6E	; tile #108
	.byt $5F, $55, $4F, $65, $47, $65, $47, $69	; tile #109
	.byt $47, $45, $43, $41, $41, $41, $61, $40	; tile #110
	.byt $7E, $54, $7E, $55, $7F, $55, $7F, $55	; tile #111
	.byt $7F, $7F, $7F, $5F, $5F, $4F, $6F, $4F	; tile #112
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7E, $41	; tile #113
	.byt $7D, $7D, $7D, $7D, $7D, $7D, $43, $7F	; tile #114
	.byt $5B, $5B, $5B, $5B, $5B, $5A, $59, $58	; tile #115
	.byt $7B, $77, $6F, $6F, $5F, $7F, $60, $5F	; tile #116
	.byt $7F, $7F, $7F, $7F, $7C, $43, $55, $7F	; tile #117
	.byt $72, $72, $72, $72, $42, $72, $51, $7F	; tile #118
	.byt $5D, $7F, $70, $4F, $55, $7F, $55, $7F	; tile #119
	.byt $76, $41, $55, $7E, $54, $7C, $54, $7A	; tile #120
	.byt $40, $4A, $40, $6A, $40, $6A, $40, $6A	; tile #121
	.byt $7C, $43, $77, $7F, $5D, $7F, $77, $7C	; tile #122
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $40	; tile #123
	.byt $5C, $5D, $5D, $5D, $5D, $5D, $5D, $5D	; tile #124
	.byt $43, $74, $7F, $5D, $7F, $77, $7F, $5D	; tile #125
	.byt $7F, $47, $78, $77, $7F, $5D, $7F, $77	; tile #126
	.byt $7F, $7F, $47, $58, $7F, $77, $7F, $5D	; tile #127
	.byt $6C, $6E, $66, $6E, $6C, $6E, $66, $6E	; tile #128
	.byt $43, $69, $41, $6A, $40, $6A, $40, $6A	; tile #129
	.byt $7F, $55, $7F, $55, $7F, $55, $5F, $55	; tile #130
	.byt $60, $50, $70, $50, $78, $50, $7C, $54	; tile #131
	.byt $7F, $55, $5F, $55, $4F, $45, $4F, $45	; tile #132
	.byt $70, $57, $7B, $53, $7D, $54, $7D, $54	; tile #133
	.byt $77, $7F, $5D, $7C, $41, $7F, $55, $7F	; tile #134
	.byt $75, $42, $55, $7F, $55, $7F, $55, $7F	; tile #135
	.byt $59, $5B, $45, $7F, $55, $7F, $55, $7F	; tile #136
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #137
	.byt $55, $7F, $55, $7F, $55, $7E, $54, $7C	; tile #138
	.byt $50, $72, $40, $6A, $40, $6A, $40, $6A	; tile #139
	.byt $7F, $7F, $7F, $4F, $70, $5D, $7F, $77	; tile #140
	.byt $7F, $7F, $7F, $7F, $5F, $61, $7E, $5D	; tile #141
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $43, $74	; tile #142
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $4F	; tile #143
	.byt $5D, $7C, $73, $7B, $5B, $7B, $73, $7B	; tile #144
	.byt $74, $43, $7F, $7F, $7F, $7F, $7F, $7F	; tile #145
	.byt $43, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #146
	.byt $5D, $5D, $55, $5D, $5D, $5D, $55, $5D	; tile #147
	.byt $7F, $77, $7F, $5D, $7F, $77, $7F, $5D	; tile #148
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #149
	.byt $5D, $7D, $75, $7D, $5E, $7F, $77, $7F	; tile #150
	.byt $7F, $7F, $7F, $7F, $40, $7F, $5D, $7F	; tile #151
	.byt $7F, $7F, $7E, $41, $7D, $7F, $77, $7F	; tile #152
	.byt $7F, $7E, $41, $7F, $77, $7F, $5D, $7F	; tile #153
	.byt $6C, $5E, $76, $7E, $5C, $7E, $76, $40	; tile #154
	.byt $4F, $65, $4F, $65, $47, $69, $43, $69	; tile #155
	.byt $7C, $54, $7E, $55, $7F, $55, $7F, $55	; tile #156
	.byt $47, $41, $43, $41, $41, $41, $60, $40	; tile #157
	.byt $7E, $55, $7F, $55, $7F, $55, $7F, $55	; tile #158
	.byt $55, $5F, $55, $4F, $65, $4F, $75, $57	; tile #159
	.byt $54, $7A, $50, $72, $40, $6A, $40, $4A	; tile #160
	.byt $70, $77, $7F, $5D, $7F, $77, $7F, $5D	; tile #161
	.byt $5B, $7B, $73, $7B, $5B, $7B, $73, $7C	; tile #162
	.byt $7F, $7F, $7F, $7F, $7F, $7C, $43, $7F	; tile #163
	.byt $7F, $7F, $7F, $7F, $7C, $43, $5D, $7F	; tile #164
	.byt $5D, $5D, $55, $5D, $5D, $7D, $75, $7D	; tile #165
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7F, $74	; tile #166
	.byt $7F, $77, $7F, $5D, $7F, $77, $70, $4F	; tile #167
	.byt $56, $56, $56, $56, $56, $56, $56, $66	; tile #168
	.byt $5D, $7F, $77, $7C, $41, $7F, $55, $7F	; tile #169
	.byt $77, $7F, $58, $47, $55, $7F, $55, $7F	; tile #170
	.byt $5D, $70, $45, $7F, $55, $7F, $55, $7F	; tile #171
	.byt $60, $5F, $55, $7F, $55, $7F, $55, $7F	; tile #172
	.byt $40, $7C, $55, $7F, $55, $7F, $55, $7F	; tile #173
	.byt $40, $4A, $40, $7E, $55, $7F, $55, $7F	; tile #174
	.byt $40, $6A, $40, $4A, $40, $7F, $55, $7F	; tile #175
	.byt $40, $6A, $40, $6A, $40, $42, $54, $7F	; tile #176
	.byt $41, $69, $40, $6A, $40, $6A, $41, $70	; tile #177
	.byt $7F, $55, $7F, $55, $5F, $55, $4F, $65	; tile #178
	.byt $60, $50, $70, $50, $78, $50, $7C, $43	; tile #179
	.byt $7F, $55, $5F, $55, $4F, $40, $45, $7F	; tile #180
	.byt $79, $53, $7D, $55, $41, $7F, $55, $7F	; tile #181
	.byt $54, $7C, $54, $7A, $50, $72, $50, $6A	; tile #182
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $70	; tile #183
	.byt $5D, $7F, $77, $7F, $5D, $7E, $61, $5F	; tile #184
	.byt $77, $7F, $5D, $7F, $74, $43, $55, $7F	; tile #185
	.byt $5D, $7D, $75, $79, $44, $7F, $55, $7F	; tile #186
	.byt $5D, $5D, $5C, $5D, $5D, $43, $55, $7F	; tile #187
	.byt $7E, $41, $55, $7F, $55, $7F, $55, $7F	; tile #188
	.byt $41, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #189
	.byt $51, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #190
	.byt $54, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #191
	.byt $40, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #192
	.byt $55, $7F, $54, $7E, $54, $7A, $50, $72	; tile #193
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7E, $41	; tile #194
	.byt $7F, $77, $7F, $5D, $7F, $74, $41, $7F	; tile #195
	.byt $7F, $5D, $7F, $77, $78, $47, $55, $7F	; tile #196
	.byt $7F, $77, $7F, $40, $55, $7F, $55, $7F	; tile #197
	.byt $56, $56, $56, $56, $56, $66, $51, $7F	; tile #198
	.byt $58, $47, $55, $7F, $55, $7F, $55, $7F	; tile #199
	.byt $45, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #200
	.byt $50, $6A, $40, $60, $54, $7F, $55, $7F	; tile #201
	.byt $40, $6A, $40, $6A, $40, $78, $55, $7F	; tile #202
	.byt $40, $6A, $40, $6A, $40, $4A, $50, $7F	; tile #203
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $62	; tile #204
; Walkbox Data
wb_data
	.byt 000, 037, 013, 016, $02
	.byt 006, 031, 012, 012, $02
	.byt 012, 029, 011, 011, $02
	.byt 029, 029, 010, 010, $02
	.byt 027, 033, 009, 009, $01
	.byt 028, 033, 008, 008, $01
; Walk matrix
wb_matrix
	.byt 0, 1, 1, 1, 1, 1
	.byt 0, 1, 2, 2, 2, 2
	.byt 1, 1, 2, 3, 3, 3
	.byt 2, 2, 2, 3, 4, 4
	.byt 3, 3, 3, 3, 4, 5
	.byt 4, 4, 4, 4, 4, 5
zplane0_data
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 001, 001, 008, 010, 012, 014, 001, 001, 001, 001, 001, 000, 000, 000, 000, 000, 000
	.byt 002, 006, 000, 000, 000, 015, 017, 001, 001, 001, 027, 000, 000, 000, 000, 000, 000
	.byt 003, 000, 000, 000, 000, 000, 000, 019, 022, 001, 028, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 025, 029, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 031, 032, 000, 000, 000, 000
	.byt 004, 000, 000, 000, 000, 000, 000, 000, 000, 000, 030, 001, 033, 000, 000, 000, 000
	.byt 005, 007, 000, 000, 000, 000, 000, 000, 023, 026, 001, 001, 034, 000, 000, 000, 000
	.byt 001, 001, 009, 011, 004, 000, 000, 020, 024, 001, 001, 001, 035, 000, 000, 000, 000
	.byt 001, 001, 001, 001, 013, 016, 018, 021, 001, 001, 001, 001, 001, 036, 000, 000, 000
zplane0_tiles
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #1
	.byt $7F, $7F, $7F, $7E, $7E, $7C, $7C, $7C	; tile #2
	.byt $60, $40, $40, $40, $40, $40, $40, $40	; tile #3
	.byt $41, $40, $40, $40, $40, $40, $40, $40	; tile #4
	.byt $7F, $7F, $7F, $5F, $5F, $5F, $4F, $4F	; tile #5
	.byt $78, $78, $70, $70, $60, $60, $60, $40	; tile #6
	.byt $47, $47, $47, $43, $43, $43, $41, $41	; tile #7
	.byt $7F, $7E, $7E, $7E, $7C, $7C, $78, $78	; tile #8
	.byt $7F, $7F, $5F, $5F, $5F, $5F, $4F, $4F	; tile #9
	.byt $70, $70, $70, $60, $60, $60, $60, $60	; tile #10
	.byt $47, $47, $47, $43, $43, $43, $43, $41	; tile #11
	.byt $60, $70, $70, $78, $78, $7C, $7C, $7C	; tile #12
	.byt $7F, $7F, $7F, $5F, $5F, $4F, $4F, $4F	; tile #13
	.byt $7E, $7E, $7F, $7F, $7F, $7F, $7F, $7F	; tile #14
	.byt $40, $40, $40, $40, $60, $60, $60, $70	; tile #15
	.byt $47, $47, $47, $47, $43, $41, $41, $41	; tile #16
	.byt $70, $78, $78, $78, $7C, $7C, $7E, $7E	; tile #17
	.byt $41, $41, $41, $43, $47, $47, $4F, $4F	; tile #18
	.byt $40, $40, $40, $60, $60, $70, $70, $70	; tile #19
	.byt $40, $40, $40, $41, $41, $43, $43, $47	; tile #20
	.byt $5F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #21
	.byt $78, $78, $7C, $7C, $7E, $7E, $7E, $7F	; tile #22
	.byt $40, $40, $40, $40, $40, $41, $41, $43	; tile #23
	.byt $4F, $4F, $5F, $5F, $7F, $7F, $7F, $7F	; tile #24
	.byt $40, $60, $60, $70, $70, $70, $78, $78	; tile #25
	.byt $43, $47, $47, $4F, $5F, $5F, $7F, $7F	; tile #26
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7C, $40	; tile #27
	.byt $7F, $7F, $7F, $7F, $7F, $60, $40, $40	; tile #28
	.byt $7C, $7C, $7E, $7E, $40, $40, $40, $40	; tile #29
	.byt $41, $43, $43, $47, $47, $4F, $4F, $5F	; tile #30
	.byt $40, $40, $41, $41, $43, $47, $47, $47	; tile #31
	.byt $47, $4F, $4F, $41, $40, $40, $40, $40	; tile #32
	.byt $7F, $7F, $7F, $7F, $47, $40, $40, $40	; tile #33
	.byt $7F, $7F, $7F, $7F, $7F, $4F, $40, $40	; tile #34
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $5F, $41	; tile #35
	.byt $43, $40, $40, $40, $40, $40, $40, $40	; tile #36
res_end
.)


; Exit to cell corridor
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 3,6		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 34,7		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 33,8		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Exit",0
#endif
#ifdef SPANISH
	.asc "Salida",0
#endif
#ifdef FRENCH
	.asc "Sortie",0
#endif
res_end	
.)

#include "..\characters\Extras\cost_res.s"
#include "..\characters\All\cost_res.s"
#include "..\characters\Travis-Extras2\cost_res.s"
#include "..\scripts\cellentry2.s"

