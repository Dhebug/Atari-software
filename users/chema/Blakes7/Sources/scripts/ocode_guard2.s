;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Generated by OASIS compiler
; (c) Chema 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; String pack 15
.(
.byt RESOURCE_STRING
.word (res_end-res_start +4)
.byt 15
res_start
.asc "De nuevo amenazador...",0 ; String 0
.asc "Debes estar bromeando...",0 ; String 1
.asc "",126,"Si, camarada?",0 ; String 2
res_end
.)

; Object Code 15
.(
.byt RESOURCE_OBJECTCODE
.word (res_end-res_start +4)
.byt 15
res_start
; Response table
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt VERB_TALKTO
.word (l_TalkTo-res_start)
.byt VERB_PUSH
.word (l_Push-res_start)
.byt VERB_PULL
.word (l_Pull-res_start)
.byt $ff ; End of response table
l_LookAt
.byt SC_ASSIGN, 64, 200	; string=0
.byt 0
.byt SC_JUMP
.word (l_sayit-res_start)
l_TalkTo
.byt SC_ACTOR_TALK
.byt 15
.byt 15
.byt 2
.byt SC_WAIT_FOR_ACTOR
.byt 15
.byt SC_LOAD_DIALOG
.byt 64, 200
.byt SC_START_DIALOG
.byt SC_STOP_SCRIPT
l_Push
l_Pull
.byt SC_ASSIGN, 64, 200	; string=1
.byt 1
.byt SC_JUMP
.word (l_sayit-res_start)
l_sayit
.byt SC_ACTOR_TALK
.byt 0
.byt 15
.byt SF_GETVAL,64, 200	; string
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)
