;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Generated by OASIS compiler
; (c) Chema 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; Object Code 7
.(
.byt RESOURCE_OBJECTCODE
.word (res_end-res_start +4)
.byt 7
res_start
; Response table
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt VERB_USE
.word (l_Use-res_start)
.byt $ff ; End of response table
l_LookAt
.byt SC_CURSOR_ON
.byt 0
.byt SC_ACTOR_TALK
.byt 0
.byt 7
.byt 0
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_ACTOR_TALK
.byt 0
.byt 7
.byt 1
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_CURSOR_ON
.byt 1
.byt SC_STOP_SCRIPT
l_Use
.byt SC_ACTOR_TALK
.byt 0
.byt 7
.byt 2
.byt SC_STOP_SCRIPT
res_end
.)

; String pack 7
.(
.byt RESOURCE_STRING
.word (res_end-res_start +4)
.byt 7
res_start
.asc "Un descafeinado.",0 ; String 0
.asc "F",93,"jate. La taza lo mantiene caliente.",0 ; String 1
.asc "No s",92," c",94,"mo usarlo de este modo.",0 ; String 2
res_end
.)
