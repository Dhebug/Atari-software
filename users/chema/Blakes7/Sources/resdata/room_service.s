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
; Room: Service
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 49
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 5, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt <(palette-res_start), >(palette-res_start)
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 1,200
; Room name (null terminated)
	.asc "Service", 0
; Room tile map
column_data
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 156, 181, 181, 181, 181
	.byt 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 157, 182, 182, 182, 182
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 156, 181, 181, 181, 181
	.byt 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 157, 182, 182, 182, 182
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 156, 181, 181, 181, 181
	.byt 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 157, 182, 182, 182, 182
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 156, 181, 181, 181, 181
	.byt 003, 003, 003, 003, 003, 003, 003, 003, 003, 003, 003, 003, 157, 182, 182, 182, 182
	.byt 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 158, 181, 181, 181, 181
	.byt 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 159, 182, 182, 182, 182
	.byt 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 004, 160, 181, 181, 181, 181
	.byt 004, 004, 004, 004, 004, 068, 082, 096, 108, 121, 121, 142, 161, 182, 182, 182, 182
	.byt 004, 004, 004, 004, 004, 069, 083, 083, 109, 004, 004, 054, 162, 181, 181, 181, 181
	.byt 004, 004, 004, 004, 004, 068, 082, 096, 110, 121, 121, 143, 163, 182, 182, 182, 182
	.byt 004, 004, 004, 004, 004, 069, 083, 083, 111, 004, 004, 144, 164, 183, 181, 181, 181
	.byt 005, 005, 005, 005, 055, 070, 000, 000, 000, 000, 000, 145, 165, 184, 182, 182, 182
	.byt 006, 006, 006, 006, 056, 071, 000, 097, 112, 000, 134, 146, 166, 185, 181, 181, 181
	.byt 007, 019, 028, 042, 057, 020, 020, 020, 020, 122, 122, 147, 167, 186, 182, 182, 182
	.byt 008, 000, 000, 000, 000, 000, 000, 000, 000, 123, 004, 054, 168, 187, 181, 181, 181
	.byt 009, 000, 000, 000, 000, 072, 084, 098, 000, 123, 004, 004, 169, 188, 182, 182, 182
	.byt 010, 000, 000, 000, 000, 073, 085, 099, 000, 123, 004, 004, 170, 189, 181, 181, 181
	.byt 011, 020, 020, 020, 020, 020, 020, 020, 113, 124, 124, 124, 171, 190, 182, 182, 182
	.byt 004, 021, 029, 043, 058, 074, 086, 100, 058, 074, 135, 148, 172, 191, 206, 181, 181
	.byt 004, 000, 030, 044, 000, 000, 000, 000, 000, 000, 000, 000, 173, 192, 207, 182, 182
	.byt 012, 000, 031, 045, 059, 075, 087, 101, 114, 125, 000, 149, 174, 193, 208, 181, 181
	.byt 013, 000, 032, 016, 060, 076, 088, 102, 115, 126, 000, 150, 175, 194, 209, 182, 182
	.byt 014, 000, 033, 046, 061, 000, 072, 000, 000, 127, 000, 000, 176, 195, 210, 181, 181
	.byt 015, 000, 034, 047, 062, 077, 089, 103, 116, 128, 136, 151, 177, 196, 211, 182, 182
	.byt 016, 000, 035, 000, 063, 000, 090, 104, 000, 129, 000, 000, 024, 197, 212, 181, 181
	.byt 017, 022, 036, 020, 064, 020, 091, 020, 117, 130, 137, 152, 178, 198, 213, 221, 182
	.byt 018, 023, 037, 048, 065, 078, 092, 105, 004, 131, 138, 153, 179, 199, 214, 222, 181
	.byt 000, 000, 038, 004, 065, 000, 093, 000, 118, 000, 139, 000, 000, 200, 144, 223, 182
	.byt 000, 000, 039, 049, 066, 000, 000, 000, 000, 000, 000, 000, 000, 201, 215, 224, 181
	.byt 000, 000, 004, 050, 066, 079, 094, 106, 119, 132, 140, 154, 148, 202, 216, 225, 182
	.byt 000, 024, 004, 051, 067, 080, 095, 107, 120, 133, 141, 155, 180, 203, 217, 226, 181
	.byt 000, 025, 040, 052, 000, 000, 000, 000, 000, 000, 000, 000, 000, 204, 218, 227, 182
	.byt 000, 026, 041, 053, 020, 020, 020, 020, 020, 020, 020, 020, 020, 205, 219, 228, 181
	.byt 000, 027, 004, 054, 041, 081, 041, 041, 041, 041, 041, 041, 081, 004, 220, 229, 230

; Room tile set
tiles_start
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $7F	; tile #1
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $7F	; tile #2
	.byt $5C, $7E, $76, $7E, $5C, $7E, $76, $7E	; tile #3
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #4
	.byt $55, $69, $55, $69, $55, $69, $55, $69	; tile #5
	.byt $45, $4A, $45, $4A, $45, $4A, $45, $4A	; tile #6
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $68	; tile #7
	.byt $54, $6A, $54, $6A, $54, $6A, $54, $40	; tile #8
	.byt $51, $52, $51, $52, $51, $50, $40, $40	; tile #9
	.byt $52, $62, $52, $62, $52, $40, $40, $40	; tile #10
	.byt $55, $4A, $55, $4A, $55, $4A, $65, $60	; tile #11
	.byt $55, $6A, $55, $6A, $55, $6A, $54, $40	; tile #12
	.byt $55, $6A, $55, $6A, $55, $68, $40, $40	; tile #13
	.byt $55, $6A, $55, $6A, $54, $40, $40, $40	; tile #14
	.byt $55, $6A, $55, $68, $40, $40, $40, $40	; tile #15
	.byt $55, $6A, $40, $40, $40, $40, $40, $40	; tile #16
	.byt $55, $60, $40, $40, $40, $40, $43, $43	; tile #17
	.byt $40, $40, $40, $40, $40, $4C, $7C, $7C	; tile #18
	.byt $46, $6E, $4E, $6E, $4E, $6E, $4E, $6E	; tile #19
	.byt $60, $60, $60, $60, $60, $60, $60, $60	; tile #20
	.byt $45, $48, $40, $48, $40, $48, $40, $48	; tile #21
	.byt $43, $43, $43, $40, $40, $40, $40, $40	; tile #22
	.byt $7C, $7C, $40, $40, $40, $40, $40, $40	; tile #23
	.byt $40, $40, $40, $40, $40, $40, $40, $6A	; tile #24
	.byt $40, $40, $40, $40, $40, $42, $52, $6A	; tile #25
	.byt $40, $40, $40, $40, $40, $4A, $55, $4A	; tile #26
	.byt $40, $40, $40, $40, $45, $6A, $55, $6A	; tile #27
	.byt $4C, $60, $40, $60, $40, $60, $40, $60	; tile #28
	.byt $40, $48, $40, $48, $40, $48, $44, $4A	; tile #29
	.byt $40, $40, $40, $40, $40, $40, $40, $68	; tile #30
	.byt $40, $40, $40, $40, $40, $40, $40, $62	; tile #31
	.byt $40, $40, $40, $40, $40, $40, $41, $6A	; tile #32
	.byt $40, $40, $40, $40, $40, $4C, $4D, $6C	; tile #33
	.byt $40, $40, $40, $40, $41, $6A, $55, $6A	; tile #34
	.byt $40, $40, $40, $40, $54, $6A, $54, $6A	; tile #35
	.byt $40, $40, $40, $52, $51, $52, $51, $40	; tile #36
	.byt $40, $40, $45, $6A, $55, $6A, $55, $4A	; tile #37
	.byt $40, $42, $54, $6A, $55, $6A, $55, $6A	; tile #38
	.byt $51, $52, $51, $52, $51, $52, $51, $52	; tile #39
	.byt $52, $6A, $52, $6A, $52, $6A, $52, $6A	; tile #40
	.byt $55, $4A, $55, $4A, $55, $4A, $55, $4A	; tile #41
	.byt $40, $60, $40, $60, $40, $60, $40, $60	; tile #42
	.byt $45, $4A, $45, $4A, $40, $40, $40, $40	; tile #43
	.byt $54, $68, $54, $60, $40, $40, $40, $40	; tile #44
	.byt $65, $62, $64, $40, $40, $40, $40, $40	; tile #45
	.byt $4D, $60, $40, $40, $40, $40, $40, $40	; tile #46
	.byt $50, $40, $40, $40, $40, $40, $40, $40	; tile #47
	.byt $45, $42, $45, $42, $45, $42, $45, $42	; tile #48
	.byt $51, $52, $51, $52, $51, $52, $51, $50	; tile #49
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $40	; tile #50
	.byt $55, $6A, $55, $6A, $55, $6A, $50, $41	; tile #51
	.byt $52, $6A, $52, $6A, $52, $6A, $40, $7F	; tile #52
	.byt $55, $4A, $55, $4A, $55, $4A, $41, $70	; tile #53
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $4A	; tile #54
	.byt $54, $40, $40, $40, $40, $40, $43, $47	; tile #55
	.byt $40, $40, $40, $40, $40, $40, $40, $60	; tile #56
	.byt $40, $60, $60, $60, $60, $60, $60, $60	; tile #57
	.byt $40, $40, $40, $40, $4E, $55, $5F, $55	; tile #58
	.byt $40, $40, $41, $43, $45, $47, $45, $47	; tile #59
	.byt $40, $40, $50, $78, $50, $7C, $54, $7C	; tile #60
	.byt $40, $40, $40, $40, $40, $41, $41, $40	; tile #61
	.byt $40, $4E, $55, $7F, $55, $7F, $55, $7F	; tile #62
	.byt $40, $40, $40, $60, $40, $60, $40, $60	; tile #63
	.byt $60, $7F, $60, $60, $60, $60, $60, $60	; tile #64
	.byt $40, $7F, $40, $40, $40, $40, $40, $40	; tile #65
	.byt $7F, $40, $40, $40, $40, $40, $40, $40	; tile #66
	.byt $7E, $40, $40, $40, $40, $40, $40, $40	; tile #67
	.byt $55, $6A, $55, $40, $40, $40, $40, $40	; tile #68
	.byt $55, $6A, $55, $62, $65, $62, $65, $62	; tile #69
	.byt $47, $47, $47, $43, $43, $40, $40, $40	; tile #70
	.byt $60, $60, $60, $60, $40, $40, $40, $40	; tile #71
	.byt $40, $40, $40, $40, $40, $40, $41, $41	; tile #72
	.byt $40, $40, $40, $40, $40, $40, $60, $60	; tile #73
	.byt $7F, $55, $7F, $55, $5E, $40, $40, $40	; tile #74
	.byt $45, $47, $41, $43, $40, $40, $40, $40	; tile #75
	.byt $54, $78, $50, $60, $40, $40, $40, $40	; tile #76
	.byt $55, $7F, $54, $40, $40, $40, $40, $40	; tile #77
	.byt $40, $40, $40, $40, $40, $40, $40, $5E	; tile #78
	.byt $40, $40, $40, $40, $40, $40, $43, $45	; tile #79
	.byt $40, $40, $40, $40, $40, $40, $70, $50	; tile #80
	.byt $55, $40, $40, $4A, $55, $4A, $55, $4A	; tile #81
	.byt $58, $58, $58, $58, $58, $58, $48, $40	; tile #82
	.byt $65, $62, $65, $62, $65, $62, $65, $62	; tile #83
	.byt $41, $41, $41, $41, $41, $41, $41, $41	; tile #84
	.byt $60, $60, $60, $60, $70, $70, $70, $70	; tile #85
	.byt $40, $40, $40, $40, $46, $5F, $5D, $7F	; tile #86
	.byt $40, $40, $40, $40, $41, $42, $45, $42	; tile #87
	.byt $40, $40, $40, $60, $50, $68, $54, $68	; tile #88
	.byt $40, $40, $4E, $55, $7F, $55, $7F, $55	; tile #89
	.byt $40, $40, $40, $40, $60, $40, $60, $40	; tile #90
	.byt $60, $61, $61, $63, $61, $61, $61, $61	; tile #91
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #92
	.byt $40, $60, $40, $70, $50, $60, $40, $40	; tile #93
	.byt $5F, $55, $7F, $55, $7F, $55, $5F, $55	; tile #94
	.byt $7C, $54, $7E, $54, $7E, $54, $7C, $50	; tile #95
	.byt $50, $50, $58, $58, $58, $58, $58, $40	; tile #96
	.byt $40, $40, $40, $44, $4E, $4E, $4E, $4E	; tile #97
	.byt $41, $41, $40, $40, $40, $40, $40, $40	; tile #98
	.byt $70, $60, $40, $40, $40, $40, $40, $40	; tile #99
	.byt $77, $7F, $5D, $5F, $56, $40, $40, $40	; tile #100
	.byt $45, $42, $45, $42, $41, $40, $40, $40	; tile #101
	.byt $54, $68, $50, $60, $40, $40, $40, $40	; tile #102
	.byt $7F, $55, $7F, $54, $40, $40, $40, $40	; tile #103
	.byt $60, $40, $40, $40, $40, $40, $40, $40	; tile #104
	.byt $54, $7C, $40, $40, $40, $40, $44, $6A	; tile #105
	.byt $4F, $44, $40, $40, $40, $40, $40, $45	; tile #106
	.byt $70, $40, $40, $40, $40, $40, $40, $70	; tile #107
	.byt $40, $40, $40, $40, $40, $40, $55, $64	; tile #108
	.byt $65, $62, $65, $62, $65, $42, $55, $6A	; tile #109
	.byt $40, $40, $40, $40, $40, $40, $55, $44	; tile #110
	.byt $65, $62, $65, $62, $65, $62, $55, $6A	; tile #111
	.byt $4E, $4E, $4E, $40, $40, $40, $40, $40	; tile #112
	.byt $60, $60, $60, $60, $60, $60, $60, $40	; tile #113
	.byt $40, $40, $40, $40, $40, $41, $41, $47	; tile #114
	.byt $40, $40, $40, $40, $40, $70, $50, $78	; tile #115
	.byt $40, $40, $40, $40, $40, $40, $4C, $5F	; tile #116
	.byt $61, $60, $61, $62, $61, $62, $61, $60	; tile #117
	.byt $40, $60, $40, $60, $40, $60, $40, $40	; tile #118
	.byt $5F, $57, $7F, $5D, $7F, $77, $7F, $5D	; tile #119
	.byt $78, $5C, $7C, $76, $7E, $5C, $7C, $70	; tile #120
	.byt $55, $64, $55, $64, $55, $64, $55, $64	; tile #121
	.byt $61, $60, $61, $60, $61, $60, $61, $60	; tile #122
	.byt $40, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #123
	.byt $54, $6A, $54, $6A, $54, $6A, $54, $6A	; tile #124
	.byt $45, $47, $45, $47, $45, $43, $41, $40	; tile #125
	.byt $54, $7C, $54, $7C, $50, $70, $40, $40	; tile #126
	.byt $40, $40, $41, $41, $41, $41, $40, $40	; tile #127
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7E	; tile #128
	.byt $60, $60, $60, $60, $60, $60, $40, $40	; tile #129
	.byt $60, $60, $60, $60, $60, $60, $60, $61	; tile #130
	.byt $54, $40, $40, $40, $40, $40, $5E, $55	; tile #131
	.byt $5F, $47, $40, $40, $40, $40, $40, $43	; tile #132
	.byt $78, $40, $40, $40, $40, $40, $40, $40	; tile #133
	.byt $40, $4C, $4E, $4E, $4E, $4E, $4E, $4E	; tile #134
	.byt $40, $40, $40, $40, $40, $40, $5C, $5F	; tile #135
	.byt $5C, $40, $40, $40, $40, $40, $40, $40	; tile #136
	.byt $61, $61, $63, $61, $63, $61, $61, $61	; tile #137
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $54	; tile #138
	.byt $60, $40, $60, $40, $60, $40, $40, $40	; tile #139
	.byt $45, $5F, $55, $7F, $55, $7F, $55, $7F	; tile #140
	.byt $50, $78, $54, $7C, $54, $7E, $54, $7C	; tile #141
	.byt $55, $64, $55, $64, $55, $64, $55, $66	; tile #142
	.byt $55, $64, $55, $66, $53, $68, $55, $6A	; tile #143
	.byt $55, $6A, $55, $4A, $60, $7F, $40, $6A	; tile #144
	.byt $40, $40, $40, $6A, $55, $40, $7F, $40	; tile #145
	.byt $4C, $40, $40, $60, $55, $6A, $40, $7F	; tile #146
	.byt $61, $60, $61, $42, $55, $6A, $55, $40	; tile #147
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #148
	.byt $4F, $4F, $4F, $4F, $4F, $4F, $4F, $4F	; tile #149
	.byt $40, $70, $70, $70, $70, $70, $70, $70	; tile #150
	.byt $40, $40, $78, $7F, $7F, $7F, $7F, $7F	; tile #151
	.byt $60, $60, $60, $60, $61, $61, $61, $61	; tile #152
	.byt $58, $40, $40, $40, $70, $7E, $7F, $7F	; tile #153
	.byt $55, $5F, $45, $40, $40, $40, $40, $5C	; tile #154
	.byt $50, $70, $40, $40, $40, $40, $40, $40	; tile #155
	.byt $40, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #156
	.byt $40, $77, $7F, $5D, $7F, $77, $7F, $5D	; tile #157
	.byt $55, $40, $7E, $77, $7F, $5D, $7F, $77	; tile #158
	.byt $55, $6A, $41, $5C, $7F, $77, $7F, $5D	; tile #159
	.byt $55, $6A, $55, $40, $7E, $5D, $7F, $77	; tile #160
	.byt $53, $68, $55, $6A, $41, $76, $7F, $5D	; tile #161
	.byt $70, $4F, $50, $6A, $55, $42, $7C, $77	; tile #162
	.byt $55, $60, $5F, $60, $54, $6A, $41, $5C	; tile #163
	.byt $55, $6A, $40, $7F, $41, $6A, $55, $42	; tile #164
	.byt $55, $6A, $55, $60, $7F, $41, $54, $6A	; tile #165
	.byt $40, $6A, $55, $6A, $40, $7F, $43, $68	; tile #166
	.byt $7F, $40, $55, $6A, $55, $40, $7F, $43	; tile #167
	.byt $60, $5F, $40, $6A, $55, $6A, $41, $7E	; tile #168
	.byt $55, $60, $5F, $60, $55, $6A, $55, $40	; tile #169
	.byt $55, $4A, $70, $5F, $40, $6A, $55, $6A	; tile #170
	.byt $54, $6A, $45, $70, $4F, $60, $55, $6A	; tile #171
	.byt $47, $40, $54, $4A, $70, $4F, $50, $6A	; tile #172
	.byt $40, $40, $40, $6A, $45, $78, $4F, $60	; tile #173
	.byt $4F, $4F, $43, $60, $55, $42, $78, $47	; tile #174
	.byt $70, $70, $70, $40, $50, $6A, $45, $78	; tile #175
	.byt $40, $40, $40, $40, $40, $60, $55, $42	; tile #176
	.byt $7F, $7F, $7F, $7F, $4F, $40, $50, $6A	; tile #177
	.byt $61, $61, $61, $61, $61, $61, $41, $40	; tile #178
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $4F	; tile #179
	.byt $70, $70, $70, $70, $70, $70, $70, $70	; tile #180
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #181
	.byt $7F, $77, $7F, $5D, $7F, $77, $7F, $5D	; tile #182
	.byt $7C, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #183
	.byt $45, $70, $7F, $5D, $7F, $77, $7F, $5D	; tile #184
	.byt $55, $42, $78, $77, $7F, $5D, $7F, $77	; tile #185
	.byt $54, $6A, $45, $58, $7F, $77, $7F, $5D	; tile #186
	.byt $43, $68, $55, $4A, $70, $5D, $7F, $77	; tile #187
	.byt $7E, $47, $50, $6A, $45, $70, $7F, $5D	; tile #188
	.byt $41, $7E, $47, $68, $55, $4A, $70, $77	; tile #189
	.byt $55, $42, $7C, $47, $50, $6A, $55, $40	; tile #190
	.byt $55, $6A, $41, $7C, $4F, $60, $55, $4A	; tile #191
	.byt $55, $6A, $55, $42, $7C, $4F, $50, $6A	; tile #192
	.byt $50, $6A, $55, $6A, $45, $78, $4F, $60	; tile #193
	.byt $47, $68, $55, $6A, $55, $42, $78, $4F	; tile #194
	.byt $7C, $47, $50, $6A, $55, $6A, $45, $78	; tile #195
	.byt $41, $7C, $47, $68, $55, $6A, $55, $4A	; tile #196
	.byt $55, $40, $7E, $43, $54, $6A, $55, $6A	; tile #197
	.byt $55, $6A, $41, $7E, $43, $68, $55, $6A	; tile #198
	.byt $40, $6A, $55, $40, $7E, $43, $54, $6A	; tile #199
	.byt $40, $60, $55, $6A, $40, $7F, $41, $6A	; tile #200
	.byt $40, $40, $50, $6A, $55, $40, $7F, $41	; tile #201
	.byt $5F, $5F, $41, $68, $55, $6A, $40, $7F	; tile #202
	.byt $70, $70, $70, $40, $50, $6A, $55, $40	; tile #203
	.byt $40, $40, $40, $40, $40, $68, $55, $4A	; tile #204
	.byt $60, $60, $60, $60, $61, $4A, $55, $6A	; tile #205
	.byt $60, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #206
	.byt $55, $60, $7F, $5D, $7F, $77, $7F, $5D	; tile #207
	.byt $55, $6A, $40, $77, $7F, $5D, $7F, $77	; tile #208
	.byt $50, $6A, $55, $40, $7F, $77, $7F, $5D	; tile #209
	.byt $5F, $60, $55, $6A, $41, $5C, $7F, $77	; tile #210
	.byt $70, $5F, $40, $6A, $55, $40, $7E, $5D	; tile #211
	.byt $45, $70, $5F, $60, $55, $6A, $41, $76	; tile #212
	.byt $55, $4A, $70, $7F, $40, $6A, $55, $42	; tile #213
	.byt $55, $6A, $55, $60, $7F, $40, $55, $6A	; tile #214
	.byt $54, $6A, $55, $6A, $55, $40, $7F, $41	; tile #215
	.byt $41, $6A, $55, $6A, $55, $6A, $40, $7F	; tile #216
	.byt $7F, $40, $55, $6A, $55, $6A, $55, $40	; tile #217
	.byt $60, $7F, $40, $6A, $55, $6A, $55, $6A	; tile #218
	.byt $55, $60, $7F, $40, $55, $6A, $55, $6A	; tile #219
	.byt $55, $4A, $70, $7F, $40, $6A, $55, $6A	; tile #220
	.byt $7C, $77, $7F, $5D, $7F, $77, $7F, $5D	; tile #221
	.byt $41, $5C, $7F, $77, $7F, $5D, $7F, $77	; tile #222
	.byt $55, $42, $7C, $5D, $7F, $77, $7F, $5D	; tile #223
	.byt $54, $6A, $45, $70, $7F, $5D, $7F, $77	; tile #224
	.byt $41, $6A, $55, $42, $78, $77, $7F, $5D	; tile #225
	.byt $7E, $41, $54, $6A, $45, $58, $7F, $77	; tile #226
	.byt $41, $7E, $43, $68, $55, $4A, $70, $5D	; tile #227
	.byt $55, $40, $7E, $43, $54, $6A, $45, $70	; tile #228
	.byt $55, $6A, $41, $7C, $43, $68, $55, $4A	; tile #229
	.byt $70, $77, $7F, $5D, $7F, $77, $7F, $5D	; tile #230
; Walkbox Data
wb_data
	.byt 000, 030, 016, 016, $00
	.byt 000, 025, 015, 015, $00
	.byt 000, 019, 014, 014, $00
	.byt 000, 012, 013, 013, $00
	.byt 000, 004, 012, 012, $00
; Walk matrix
wb_matrix
	.byt 0, 1, 1, 1, 1
	.byt 0, 1, 2, 2, 2
	.byt 1, 1, 2, 3, 3
	.byt 2, 2, 2, 3, 4
	.byt 3, 3, 3, 3, 4
; Palette Information is stored as one column only for now...
; Palette
palette
.byt 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6


res_end
.)


; Exit to corridor

.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 38,1		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 0,16		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 16,16		; Walk position (col, row)
	.byt FACING_DOWN	; Facing direction for interaction
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



; Costume for transponder
.(
.byt RESOURCE_COSTUME | $80
.word (res_end - res_start + 4)
.byt 200
res_start
	; Pointers to tiles
	.byt <(costume_tiles-res_start-8), >(costume_tiles-res_start-8)
	.byt <(costume_masks-res_start-8), >(costume_masks-res_start-8)
	; Number of costumes included
	.byt 1
	;Offsets to animatory states for each costume
	.byt <(anim_states - res_start), >(anim_states - res_start)
anim_states
; Animatory state 0 (transponder.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 1, 2, 0, 0, 0
.byt 3, 4, 0, 0, 0
costume_tiles
; Tile graphic 1
.byt $0, $0, $0, $1, $6, $7, $5, $2
; Tile graphic 2
.byt $0, $0, $0, $0, $10, $28, $20, $28
; Tile graphic 3
.byt $5, $7, $5, $4, $4, $6, $1, $0
; Tile graphic 4
.byt $20, $28, $20, $28, $20, $28, $20, $0
costume_masks
; Tile mask 1
.byt $6f, $6f, $6c, $68, $60, $60, $60, $60
; Tile mask 2
.byt $ff, $ff, $ff, $4f, $43, $43, $43, $43
; Tile mask 3
.byt $70, $70, $70, $70, $70, $70, $78, $7e
; Tile mask 4
.byt $43, $43, $43, $43, $43, $43, $43, $47
res_end
.)



#include "..\scripts\service.s"

