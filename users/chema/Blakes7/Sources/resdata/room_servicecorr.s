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
; Room: Service aisle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt ROOM_SERVCORR
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 75, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 3, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt 0, 0	; No palette information
; Entry and exit scripts
	.byt 211, 255
; Number of objects in the room and list of ids
	.byt 8,200,201,202,203,204,205,206,207
; Room name (null terminated)
	.asc "Service aisle", 0
; Room tile map
column_data
	.byt 001, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 201, 003
	.byt 002, 008, 007, 007, 007, 007, 071, 071, 071, 071, 071, 158, 007, 007, 188, 202, 004
	.byt 003, 009, 018, 007, 007, 007, 072, 086, 086, 086, 145, 159, 007, 007, 189, 003, 003
	.byt 004, 010, 019, 030, 030, 030, 073, 087, 104, 126, 146, 160, 007, 007, 190, 004, 004
	.byt 003, 011, 020, 031, 007, 007, 074, 088, 105, 127, 147, 007, 007, 177, 191, 003, 003
	.byt 004, 004, 021, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 178, 004, 004, 004
	.byt 003, 003, 022, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 179, 003, 003, 003
	.byt 004, 004, 004, 032, 043, 039, 039, 039, 039, 039, 039, 161, 171, 004, 004, 004, 004
	.byt 003, 003, 003, 033, 044, 039, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 033, 044, 039, 039, 039, 039, 032, 148, 163, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 033, 044, 039, 039, 039, 039, 033, 149, 164, 173, 003, 003, 003, 003
	.byt 004, 004, 004, 033, 044, 039, 039, 039, 039, 033, 150, 165, 173, 004, 004, 004, 004
	.byt 003, 003, 023, 034, 045, 039, 039, 039, 039, 033, 150, 165, 173, 003, 003, 003, 003
	.byt 004, 012, 024, 035, 046, 039, 039, 039, 039, 033, 151, 166, 173, 004, 004, 004, 004
	.byt 003, 013, 025, 036, 047, 056, 039, 039, 039, 039, 039, 161, 174, 003, 003, 003, 003
	.byt 004, 004, 026, 037, 048, 057, 039, 039, 039, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 038, 049, 051, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 050, 058, 075, 039, 039, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 040, 052, 051, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 038, 049, 051, 039, 039, 039, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 050, 058, 076, 079, 106, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 051, 051, 033, 089, 107, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 051, 033, 090, 108, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 040, 052, 051, 033, 091, 081, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 038, 049, 051, 033, 092, 109, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 050, 058, 076, 093, 110, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 040, 052, 051, 039, 039, 111, 128, 152, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 038, 049, 051, 039, 039, 112, 129, 153, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 050, 058, 075, 039, 113, 130, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 040, 052, 051, 039, 094, 114, 131, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 038, 049, 051, 039, 095, 115, 132, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 050, 058, 075, 096, 116, 133, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 051, 051, 039, 039, 039, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 059, 077, 039, 039, 039, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 051, 060, 078, 039, 039, 039, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 051, 061, 079, 079, 079, 134, 154, 167, 167, 180, 192, 003, 003
	.byt 004, 004, 004, 039, 051, 062, 080, 097, 097, 135, 126, 126, 126, 126, 193, 004, 004
	.byt 003, 003, 003, 039, 051, 062, 081, 098, 117, 136, 126, 126, 126, 126, 193, 003, 003
	.byt 004, 004, 004, 039, 053, 062, 081, 099, 118, 136, 155, 168, 126, 126, 194, 004, 004
	.byt 003, 003, 003, 039, 054, 063, 082, 100, 119, 136, 156, 169, 079, 079, 195, 003, 003
	.byt 004, 004, 004, 039, 039, 064, 082, 101, 117, 136, 126, 126, 126, 126, 193, 004, 004
	.byt 003, 003, 003, 039, 039, 065, 083, 102, 102, 137, 126, 126, 126, 126, 193, 003, 003
	.byt 004, 004, 004, 039, 039, 066, 084, 084, 084, 138, 157, 170, 170, 181, 196, 004, 004
	.byt 003, 003, 003, 032, 043, 039, 039, 039, 120, 139, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 033, 044, 039, 039, 039, 120, 139, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 033, 044, 039, 039, 039, 121, 140, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 033, 044, 039, 039, 039, 122, 141, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 033, 044, 039, 039, 039, 123, 142, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 041, 055, 039, 039, 039, 124, 143, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 039, 039, 039, 039, 120, 139, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 039, 039, 039, 039, 121, 140, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 039, 039, 039, 039, 039, 124, 143, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 039, 039, 039, 039, 039, 120, 139, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 032, 043, 039, 039, 039, 120, 139, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 033, 044, 039, 039, 039, 120, 139, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 033, 044, 039, 039, 039, 120, 139, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 033, 044, 039, 039, 039, 121, 140, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 003, 033, 044, 039, 039, 039, 124, 143, 039, 162, 172, 003, 003, 003, 003
	.byt 004, 004, 004, 041, 055, 039, 039, 039, 125, 144, 039, 162, 172, 004, 004, 004, 004
	.byt 003, 003, 027, 042, 042, 042, 042, 042, 042, 042, 042, 042, 042, 182, 003, 003, 003
	.byt 004, 004, 028, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 183, 004, 004, 004
	.byt 003, 014, 029, 007, 007, 067, 085, 103, 103, 103, 103, 103, 175, 184, 197, 003, 003
	.byt 004, 015, 007, 007, 007, 068, 000, 000, 000, 000, 000, 000, 176, 185, 198, 004, 004
	.byt 003, 016, 007, 007, 007, 069, 000, 000, 000, 000, 000, 000, 000, 186, 199, 003, 003
	.byt 005, 017, 007, 007, 007, 070, 000, 000, 000, 000, 000, 000, 000, 187, 200, 203, 004
	.byt 006, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 204, 003

; Room tile set
tiles_start
	.byt $7F, $5D, $7F, $47, $73, $54, $7F, $55	; tile #1
	.byt $7F, $77, $7F, $5D, $7F, $77, $4F, $51	; tile #2
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #3
	.byt $7F, $77, $7F, $5D, $7F, $77, $7F, $5D	; tile #4
	.byt $7F, $77, $7F, $5D, $7F, $77, $7C, $51	; tile #5
	.byt $7F, $5D, $7F, $74, $73, $45, $7F, $55	; tile #6
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $55	; tile #7
	.byt $7C, $55, $7F, $55, $7F, $55, $7F, $55	; tile #8
	.byt $7F, $4D, $73, $54, $7F, $55, $7F, $55	; tile #9
	.byt $7F, $77, $7F, $5D, $4F, $53, $7C, $55	; tile #10
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7F, $47	; tile #11
	.byt $7F, $77, $7F, $5D, $7F, $77, $7F, $41	; tile #12
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7F, $70	; tile #13
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7F, $74	; tile #14
	.byt $7F, $77, $7F, $5D, $7C, $71, $4F, $55	; tile #15
	.byt $7F, $5C, $73, $45, $7F, $55, $7F, $55	; tile #16
	.byt $4F, $55, $7F, $55, $7F, $55, $7F, $55	; tile #17
	.byt $78, $57, $C8, $57, $C8, $57, $78, $55	; tile #18
	.byt $7F, $41, $C3, $7F, $C0, $7F, $43, $54	; tile #19
	.byt $73, $54, $5F, $65, $6F, $65, $6F, $55	; tile #20
	.byt $7F, $77, $4F, $51, $7C, $55, $7F, $55	; tile #21
	.byt $7F, $5D, $7F, $77, $7F, $4D, $73, $54	; tile #22
	.byt $7E, $5C, $7E, $76, $7E, $5C, $7E, $76	; tile #23
	.byt $5C, $7E, $6E, $7E, $6E, $7E, $6E, $7E	; tile #24
	.byt $67, $4F, $6B, $6F, $6B, $4F, $6B, $6F	; tile #25
	.byt $67, $77, $77, $75, $77, $77, $77, $75	; tile #26
	.byt $7F, $5D, $7F, $77, $7F, $5C, $73, $45	; tile #27
	.byt $7F, $77, $7C, $51, $4F, $55, $7F, $55	; tile #28
	.byt $73, $45, $7F, $55, $7F, $55, $7F, $55	; tile #29
	.byt $57, $55, $57, $55, $57, $55, $57, $55	; tile #30
	.byt $6F, $55, $7F, $55, $7F, $55, $7F, $55	; tile #31
	.byt $40, $55, $40, $55, $40, $55, $40, $54	; tile #32
	.byt $40, $55, $40, $55, $40, $55, $40, $40	; tile #33
	.byt $40, $54, $40, $54, $40, $54, $40, $44	; tile #34
	.byt $6E, $7E, $6E, $7E, $6E, $7E, $6E, $7E	; tile #35
	.byt $4B, $4F, $4B, $4F, $4B, $4F, $4B, $4F	; tile #36
	.byt $70, $75, $70, $75, $70, $74, $70, $74	; tile #37
	.byt $40, $55, $40, $55, $40, $45, $70, $75	; tile #38
	.byt $40, $55, $40, $55, $40, $55, $40, $55	; tile #39
	.byt $40, $55, $40, $55, $40, $54, $40, $54	; tile #40
	.byt $40, $55, $40, $55, $40, $55, $40, $45	; tile #41
	.byt $5F, $55, $5F, $55, $5F, $55, $5F, $55	; tile #42
	.byt $40, $51, $41, $51, $41, $51, $40, $54	; tile #43
	.byt $7F, $C0, $C0, $C0, $C0, $C0, $7F, $40	; tile #44
	.byt $40, $60, $60, $60, $60, $60, $40, $45	; tile #45
	.byt $6E, $7E, $6F, $6F, $CC, $5C, $4F, $50	; tile #46
	.byt $4B, $6F, $6B, $6F, $6B, $6F, $6B, $4F	; tile #47
	.byt $70, $76, $76, $76, $76, $76, $76, $70	; tile #48
	.byt $70, $73, $73, $73, $CC, $73, $73, $40	; tile #49
	.byt $40, $7F, $7F, $7F, $C0, $61, $6D, $4C	; tile #50
	.byt $40, $7F, $7F, $7F, $C0, $7F, $7F, $40	; tile #51
	.byt $40, $7E, $7E, $7E, $C1, $7E, $7E, $40	; tile #52
	.byt $40, $7C, $73, $7D, $C1, $7E, $7E, $5F	; tile #53
	.byt $40, $55, $40, $65, $60, $75, $70, $75	; tile #54
	.byt $40, $61, $60, $61, $60, $61, $40, $45	; tile #55
	.byt $4B, $4F, $4B, $4B, $F3, $57, $43, $54	; tile #56
	.byt $70, $77, $7F, $7F, $C0, $4F, $7F, $40	; tile #57
	.byt $4C, $6C, $6C, $6C, $D3, $6C, $6C, $4C	; tile #58
	.byt $40, $7C, $7F, $79, $C1, $7F, $7F, $5F	; tile #59
	.byt $40, $55, $40, $65, $60, $55, $50, $75	; tile #60
	.byt $40, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #61
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #62
	.byt $40, $7F, $7F, $7F, $7C, $7B, $77, $6F	; tile #63
	.byt $40, $7F, $7F, $C4, $EA, $CC, $D5, $7F	; tile #64
	.byt $40, $7F, $7F, $D0, $C0, $E6, $E8, $7F	; tile #65
	.byt $40, $7E, $7E, $7E, $7E, $7E, $7E, $7E	; tile #66
	.byt $7F, $55, $7F, $55, $7F, $50, $77, $4F	; tile #67
	.byt $7F, $55, $7F, $54, $41, $7F, $60, $40	; tile #68
	.byt $7F, $55, $7C, $43, $7E, $40, $40, $40	; tile #69
	.byt $7F, $55, $47, $79, $41, $41, $40, $40	; tile #70
	.byt $7E, $54, $7E, $54, $7E, $54, $7E, $54	; tile #71
	.byt $40, $5D, $5D, $5D, $5D, $5D, $5D, $5D	; tile #72
	.byt $47, $70, $7F, $7F, $7F, $7F, $7F, $7F	; tile #73
	.byt $7F, $55, $40, $5E, $5E, $5E, $5E, $5E	; tile #74
	.byt $4C, $41, $40, $55, $40, $55, $40, $55	; tile #75
	.byt $4C, $41, $40, $55, $40, $55, $40, $40	; tile #76
	.byt $5F, $4B, $4D, $54, $47, $51, $40, $55	; tile #77
	.byt $78, $7F, $7F, $7F, $E0, $7F, $5F, $40	; tile #78
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #79
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7C	; tile #80
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #81
	.byt $FF, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #82
	.byt $FF, $7F, $7F, $7F, $7F, $7F, $7F, $4F	; tile #83
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $7E	; tile #84
	.byt $5E, $5C, $5C, $5C, $5C, $5C, $5C, $5C	; tile #85
	.byt $5D, $5D, $5D, $5D, $5D, $5D, $5D, $5D	; tile #86
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7B	; tile #87
	.byt $5E, $5E, $5E, $5E, $5E, $5E, $5E, $5A	; tile #88
	.byt $7F, $7F, $7F, $40, $FF, $5F, $FF, $5F	; tile #89
	.byt $7F, $7F, $7F, $40, $FF, $7E, $FF, $7E	; tile #90
	.byt $7F, $7F, $7F, $7E, $7E, $7E, $7E, $7F	; tile #91
	.byt $7F, $7F, $7F, $40, $DE, $DE, $40, $7F	; tile #92
	.byt $7E, $7E, $7E, $5E, $5E, $5A, $5E, $7A	; tile #93
	.byt $FF, $4F, $F3, $4D, $F3, $4E, $F1, $4C	; tile #94
	.byt $FF, $78, $E4, $5A, $E5, $7A, $C5, $5A	; tile #95
	.byt $FF, $40, $C1, $42, $C5, $6A, $C5, $42	; tile #96
	.byt $7C, $7C, $7C, $7C, $7C, $7C, $7C, $7C	; tile #97
	.byt $C0, $40, $FF, $46, $FF, $40, $FF, $46	; tile #98
	.byt $C0, $40, $FF, $64, $FF, $64, $FF, $53	; tile #99
	.byt $C0, $40, $FF, $40, $FF, $40, $FF, $50	; tile #100
	.byt $C0, $40, $FF, $48, $FB, $44, $FB, $40	; tile #101
	.byt $4F, $4F, $4F, $4F, $4F, $4F, $4F, $4F	; tile #102
	.byt $5C, $5C, $5C, $5C, $5C, $5C, $5C, $5C	; tile #103
	.byt $7D, $7D, $7D, $7D, $7D, $7B, $7F, $7F	; tile #104
	.byt $56, $56, $56, $56, $56, $5A, $5E, $5E	; tile #105
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $40	; tile #106
	.byt $FF, $5F, $40, $7F, $7F, $7F, $7F, $40	; tile #107
	.byt $FF, $7E, $40, $7F, $7F, $7F, $7F, $40	; tile #108
	.byt $7F, $7F, $6B, $7F, $6B, $7F, $7F, $40	; tile #109
	.byt $7E, $7A, $7E, $7A, $7A, $7E, $7E, $40	; tile #110
	.byt $40, $55, $40, $55, $40, $52, $44, $55	; tile #111
	.byt $40, $55, $40, $40, $7F, $40, $66, $61	; tile #112
	.byt $40, $55, $40, $55, $40, $65, $50, $55	; tile #113
	.byt $F2, $4C, $F0, $40, $FE, $55, $FF, $4F	; tile #114
	.byt $E4, $59, $C6, $41, $FE, $51, $FE, $7F	; tile #115
	.byt $C1, $48, $F7, $49, $F7, $49, $F3, $75	; tile #116
	.byt $FF, $40, $FF, $40, $FF, $40, $FF, $7F	; tile #117
	.byt $FF, $40, $FF, $72, $FF, $40, $FF, $7F	; tile #118
	.byt $FF, $40, $FF, $6C, $FF, $40, $FF, $7F	; tile #119
	.byt $40, $55, $40, $55, $40, $55, $40, $7F	; tile #120
	.byt $40, $55, $40, $54, $41, $55, $41, $7D	; tile #121
	.byt $40, $50, $4F, $41, $67, $63, $65, $65	; tile #122
	.byt $40, $41, $7E, $70, $7D, $79, $75, $75	; tile #123
	.byt $40, $55, $40, $45, $60, $65, $60, $67	; tile #124
	.byt $40, $55, $40, $55, $40, $55, $40, $71	; tile #125
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #126
	.byt $5E, $5E, $5E, $5E, $5E, $5E, $5E, $5E	; tile #127
	.byt $44, $54, $44, $54, $44, $50, $40, $54	; tile #128
	.byt $40, $EF, $FD, $FD, $FD, $FD, $FD, $FD	; tile #129
	.byt $40, $45, $40, $55, $40, $55, $40, $55	; tile #130
	.byt $F2, $48, $F2, $4B, $F7, $4F, $40, $55	; tile #131
	.byt $C9, $63, $C8, $7F, $FF, $7F, $40, $55	; tile #132
	.byt $E3, $55, $E3, $51, $EF, $75, $40, $55	; tile #133
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $50	; tile #134
	.byt $7C, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #135
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #136
	.byt $4F, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #137
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $46	; tile #138
	.byt $7F, $7F, $40, $55, $40, $55, $40, $55	; tile #139
	.byt $7D, $7D, $41, $55, $40, $54, $40, $55	; tile #140
	.byt $67, $67, $65, $61, $40, $44, $40, $55	; tile #141
	.byt $7D, $7D, $75, $71, $40, $44, $40, $55	; tile #142
	.byt $67, $67, $60, $65, $40, $45, $40, $55	; tile #143
	.byt $78, $71, $40, $55, $40, $55, $40, $55	; tile #144
	.byt $5D, $5D, $5D, $5D, $5D, $5D, $5D, $40	; tile #145
	.byt $7F, $7F, $7F, $7F, $7F, $7C, $70, $40	; tile #146
	.byt $5E, $5E, $5E, $58, $41, $45, $5F, $75	; tile #147
	.byt $40, $54, $40, $54, $40, $54, $40, $54	; tile #148
	.byt $7F, $60, $60, $6F, $60, $6F, $60, $6F	; tile #149
	.byt $7F, $40, $40, $7F, $40, $7F, $40, $7F	; tile #150
	.byt $7F, $41, $41, $7D, $41, $7D, $41, $7D	; tile #151
	.byt $40, $54, $40, $54, $40, $55, $40, $55	; tile #152
	.byt $FD, $FF, $FF, $FF, $40, $55, $40, $55	; tile #153
	.byt $57, $57, $57, $53, $53, $53, $53, $57	; tile #154
	.byt $7E, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #155
	.byt $4F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #156
	.byt $76, $76, $76, $66, $66, $66, $66, $76	; tile #157
	.byt $7E, $55, $7F, $55, $7F, $55, $7F, $55	; tile #158
	.byt $40, $55, $7F, $55, $7F, $55, $7F, $55	; tile #159
	.byt $47, $55, $7F, $55, $7F, $55, $7F, $55	; tile #160
	.byt $40, $5F, $40, $55, $4A, $55, $4A, $55	; tile #161
	.byt $40, $7F, $40, $55, $6A, $55, $6A, $55	; tile #162
	.byt $40, $7C, $40, $54, $68, $54, $68, $54	; tile #163
	.byt $60, $6F, $60, $6F, $60, $6F, $60, $7F	; tile #164
	.byt $40, $7F, $40, $7F, $40, $7F, $40, $7F	; tile #165
	.byt $41, $7D, $41, $7D, $41, $7D, $41, $7F	; tile #166
	.byt $57, $57, $57, $57, $57, $57, $57, $57	; tile #167
	.byt $7F, $7F, $7F, $7F, $73, $7B, $7B, $7B	; tile #168
	.byt $5F, $5F, $5F, $5F, $59, $5B, $5B, $5B	; tile #169
	.byt $76, $76, $76, $76, $76, $76, $76, $76	; tile #170
	.byt $4A, $55, $4A, $55, $4A, $55, $4A, $40	; tile #171
	.byt $6A, $55, $6A, $55, $6A, $55, $6A, $40	; tile #172
	.byt $40, $55, $6A, $55, $6A, $55, $6A, $40	; tile #173
	.byt $4A, $55, $6A, $55, $6A, $55, $6A, $40	; tile #174
	.byt $5C, $5C, $6E, $4E, $77, $57, $7B, $53	; tile #175
	.byt $40, $40, $40, $40, $40, $40, $60, $70	; tile #176
	.byt $7F, $55, $7F, $55, $7F, $55, $7C, $53	; tile #177
	.byt $7F, $55, $7F, $54, $73, $47, $7F, $5D	; tile #178
	.byt $7C, $51, $4F, $77, $7F, $5D, $7F, $77	; tile #179
	.byt $57, $57, $57, $57, $57, $57, $53, $53	; tile #180
	.byt $76, $76, $76, $76, $76, $76, $66, $66	; tile #181
	.byt $4F, $51, $7C, $77, $7F, $5D, $7F, $77	; tile #182
	.byt $7F, $55, $7F, $45, $73, $74, $7F, $5D	; tile #183
	.byt $7C, $55, $7F, $55, $7F, $55, $4F, $71	; tile #184
	.byt $7C, $4F, $73, $54, $7F, $55, $7F, $55	; tile #185
	.byt $40, $40, $70, $7C, $4F, $53, $7C, $55	; tile #186
	.byt $40, $40, $40, $40, $41, $79, $77, $45	; tile #187
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $54	; tile #188
	.byt $7F, $55, $7F, $55, $7C, $51, $4F, $77	; tile #189
	.byt $7F, $54, $73, $4D, $7F, $77, $7F, $5D	; tile #190
	.byt $4F, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #191
	.byt $53, $53, $57, $57, $57, $50, $5F, $40	; tile #192
	.byt $7F, $7F, $7F, $7F, $7F, $40, $7F, $40	; tile #193
	.byt $7F, $7F, $7F, $7F, $7E, $40, $7F, $40	; tile #194
	.byt $5F, $5F, $5F, $5F, $4F, $40, $7F, $40	; tile #195
	.byt $66, $66, $76, $76, $76, $46, $7E, $40	; tile #196
	.byt $7C, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #197
	.byt $7F, $45, $73, $5C, $7F, $77, $7F, $5D	; tile #198
	.byt $7F, $55, $7F, $55, $4F, $51, $7C, $77	; tile #199
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $45	; tile #200
	.byt $7F, $55, $7C, $53, $4F, $5D, $7F, $77	; tile #201
	.byt $73, $47, $7F, $5D, $7F, $77, $7F, $5D	; tile #202
	.byt $73, $74, $7F, $5D, $7F, $77, $7F, $5D	; tile #203
	.byt $7F, $55, $4F, $71, $7C, $5D, $7F, $77	; tile #204
; Walkbox Data
wb_data
	.byt 001, 039, 013, 016, $20
	.byt 053, 073, 013, 016, $40
	.byt 040, 052, 015, 016, $00
; Walk matrix
wb_matrix
	.byt 0, 2, 2
	.byt 2, 1, 2
	.byt 0, 1, 2


res_end
.)


.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt 0	; If OBJ_FLAG_PROP skip all costume data
	.byt 5,3		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 9,12		; Pos (col, row)
	.byt ZPLANE_0		; Zplane
	.byt 10,14		; Walk position (col, row)
	.byt FACING_UP	; Facing direction for interaction
	.byt 00			; Color of text
	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 200		; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Grating",0
#endif
#ifdef SPANISH
	.asc "Rejilla",0
#endif

res_end	
.)




.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 201
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 4,8		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 70,12		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 68,14		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Exit door",0
#endif
#ifdef SPANISH
	.asc "Salida",0
#endif
	
res_end	
.)


.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 202
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 2,2		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 55,9		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 55+1,13		; Walk position (col, row)
	.byt FACING_LEFT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Valve",0
#endif
#ifdef SPANISH
	.asc "V","Z"+1,"lvula",0
#endif
res_end	
.)

.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 203
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 4,2		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 46,8		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 46,15		; Walk position (col, row)
	.byt FACING_UP	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Screen",0
#endif
#ifdef SPANISH
	.asc "Pantalla",0
#endif
res_end	
.)

.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 204
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 3,3		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 37,9		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 37,13		; Walk position (col, row)
	.byt FACING_UP	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Controls",0
#endif
#ifdef SPANISH
	.asc "Controles",0
#endif
	
res_end	
.)

.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 205
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 6,2		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 22,8		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 23,13		; Walk position (col, row)
	.byt FACING_UP	; Facing direction for interaction
	.byt 00			; Color of text
	.asc "Panel",0
res_end	
.)

.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 206
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 1,3		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 32,10		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 32-6,13		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Extinguisher",0
#endif
#ifdef SPANISH
	.asc "Extintor",0
#endif

res_end	
.)

.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 207
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 3,5		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 2,10		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 5,14		; Walk position (col, row)
	.byt FACING_LEFT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Cabinet",0
#endif
#ifdef SPANISH
	.asc "Armario",0
#endif
	
res_end	
.)


.(
.byt RESOURCE_COSTUME
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
;Animatory State 0 (closed)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0

; Animatory state 1 (opengrid.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 1, 2, 3, 3, 4
.byt 5, 6, 7, 7, 8
.byt 9, 10, 10, 10, 11

costume_tiles
; Tile graphic 1
.byt $0, $14, $0, $14, $0, $14, $0, $14
; Tile graphic 2
.byt $3f, $20, $20, $20, $20, $20, $20, $20
; Tile graphic 3
.byt $3f, $0, $0, $0, $0, $0, $0, $0
; Tile graphic 4
.byt $3f, $1, $1, $1, $1, $1, $1, $1
; Tile graphic 5
.byt $0, $3c, $0, $14, $28, $14, $28, $14
; Tile graphic 6
.byt $20, $20, $20, $20, $20, $20, $3f, $20
; Tile graphic 7
.byt $0, $0, $0, $0, $0, $0, $3f, $0
; Tile graphic 8
.byt $1, $1, $1, $1, $1, $1, $3f, $1
; Tile graphic 9
.byt $2b, $16, $2c, $1b, $30, $2f, $20, $0
; Tile graphic 10
.byt $0, $3f, $0, $3f, $0, $3f, $0, $0
; Tile graphic 11
.byt $2, $3f, $6, $3d, $a, $35, $2a, $0
costume_masks
; Tile mask 1
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 2
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 3
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 4
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 5
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 6
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 7
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 8
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 9
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 10
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 11
.byt $40, $40, $40, $40, $40, $40, $40, $40
res_end
.)




#include "..\scripts\servicecorr.s"
