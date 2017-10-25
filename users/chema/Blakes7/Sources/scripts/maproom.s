;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Generated by OASIS compiler
; (c) Chema 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; String pack 200
.(
.byt RESOURCE_STRING|$80
.word (res_end-res_start +4)
.byt 200
res_start
.asc "I am sure I played that long time ago.",0 ; String 0
.asc "You had to rescue a damsel who had",0 ; String 1
.asc "been kidnapped by a giant ape.",0 ; String 2
.asc "The monster threw barrels and other",0 ; String 3
.asc "things at you as you climbed up.",0 ; String 4
.asc "It was quite fun!",0 ; String 5
.asc "And more difficult than this game.",0 ; String 6
.asc "Now concentrate on our task, please.",0 ; String 7
.asc "I wouldn't know how to use it.",0 ; String 8
.asc "A printer. A small model.",0 ; String 9
.asc "There is a printout on the tray",0 ; String 10
.asc "I cannot do that.",0 ; String 11
.asc "A good collection of sci-fi books.",0 ; String 12
.asc "Strange looking boxes.",0 ; String 13
.asc "Mugs of all sizes with nerd symbols.",0 ; String 14
.asc "Not without the map!",0 ; String 15
res_end
.)

; Object Code 200
.(
.byt RESOURCE_OBJECTCODE|$80
.word (res_end-res_start +4)
.byt 200
res_start
; Response table
.byt VERB_WALKTO
.word (l_WalkTo-res_start)
.byt $ff ; End of response table
l_WalkTo
.byt SC_ASSIGN, 64, 200	; actor=sfGetActorExecutingAction()
.byt SF_GET_ACTIONACTOR
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_AND
.byt SF_AND
.byt SF_EQ
.byt SF_GETVAL,64, 200	; actor
.byt 0
.byt SF_GETFLAG,7	; bMapPrinted
.byt SF_NOT
.byt SF_GETFLAG,8	; bGotMap
.byt 23
; then part
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 15
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_STOP_SCRIPT
.byt SC_SET_OBJECT_POS
.byt SF_GETVAL,64, 200	; actor
.byt 3
.byt 13
.byt 64, 95
.byt SC_LOOK_DIRECTION
.byt SF_GETVAL,64, 200	; actor
.byt 3
.byt SC_CHANGE_ROOM_AND_STOP
.byt 3
.byt SC_STOP_SCRIPT
res_end
.)

; Object Code 201
.(
.byt RESOURCE_OBJECTCODE|$80
.word (res_end-res_start +4)
.byt 201
res_start
; Response table
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt $ff ; End of response table
l_LookAt
.byt SC_CURSOR_ON
.byt 0
.byt SC_ASSIGN, 64, 200	; i=0
.byt 0
l_loopdesc
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt SF_GETVAL,64, 200	; i
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_ASSIGN, 64, 200	; i=i+1
.byt SF_ADD
.byt SF_GETVAL,64, 200	; i
.byt 1
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_LE
.byt SF_GETVAL,64, 200	; i
.byt 7
.byt 11
; then part
.byt SC_JUMP
.word (l_loopdesc-res_start)
.byt SC_CURSOR_ON
.byt 1
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Object Code 202
.(
.byt RESOURCE_OBJECTCODE|$80
.word (res_end-res_start +4)
.byt 202
res_start
; Response table
.byt VERB_USE
.word (l_Use-res_start)
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt $ff ; End of response table
l_Use
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT, SF_EQ
.byt SF_GET_ACTIONOBJ2
.byt 64, 255
.byt 11
; then part
.byt SC_SPAWN_SCRIPT
.byt 1
.byt SC_STOP_SCRIPT
l_LookAt
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 8
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Object Code 203
.(
.byt RESOURCE_OBJECTCODE|$80
.word (res_end-res_start +4)
.byt 203
res_start
; Response table
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt VERB_USE
.word (l_Use-res_start)
.byt VERB_PICKUP
.word (l_PickUp-res_start)
.byt $ff ; End of response table
l_LookAt
.byt SC_CURSOR_ON
.byt 0
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 9
.byt SC_WAIT_FOR_ACTOR
.byt 0
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_GETFLAG,7	; bMapPrinted
.byt 12
; then part
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 10
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_CURSOR_ON
.byt 1
.byt SC_STOP_SCRIPT
l_Use
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT, SF_EQ
.byt SF_GET_ACTIONOBJ2
.byt 64, 255
.byt 11
; then part
.byt SC_SPAWN_SCRIPT
.byt 1
.byt SC_STOP_SCRIPT
l_PickUp
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_GETFLAG,7	; bMapPrinted
.byt 25
; then part
.byt SC_SETFLAG, 8	; bGotMap=true
.byt 1
.byt SC_SETFLAG, 7	; bMapPrinted=false
.byt 0
.byt SC_TERMINATE_SCRIPT
.byt 64, 210
.byt SC_SET_ANIMSTATE
.byt 64, 203
.byt 0
.byt SC_PUT_IN_INVENTORY
.byt 9
.byt SC_SETFLAG, 3	; bMapContactGiven=false
.byt 0
.byt SC_JUMP_REL, 9
; else part
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 11
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Object Code 204
.(
.byt RESOURCE_OBJECTCODE|$80
.word (res_end-res_start +4)
.byt 204
res_start
; Response table
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt $ff ; End of response table
l_LookAt
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 12
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Object Code 205
.(
.byt RESOURCE_OBJECTCODE|$80
.word (res_end-res_start +4)
.byt 205
res_start
; Response table
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt $ff ; End of response table
l_LookAt
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 13
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Object Code 206
.(
.byt RESOURCE_OBJECTCODE|$80
.word (res_end-res_start +4)
.byt 206
res_start
; Response table
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt $ff ; End of response table
l_LookAt
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 14
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Script 210
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 210
res_start
+script_210_start
.byt SC_SET_ANIMSTATE
.byt 64, 203
.byt 1
.byt SC_DELAY
.byt 25
.byt SC_SET_ANIMSTATE
.byt 64, 203
.byt 0
.byt SC_DELAY
.byt 25
.byt SC_RESTART_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Script 250
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 250
res_start
+script_250_start
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT
.byt SF_GETFLAG,4	; bTradeInitiated
.byt 18
; then part
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 1
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_LOAD_DIALOG
.byt 64, 200
.byt SC_START_DIALOG
.byt SC_STOP_SCRIPT
.byt SC_CURSOR_ON
.byt 0
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT, SF_EQ
.byt SF_GET_ACTIONOBJ1
.byt 4
.byt 43
; then part
; for
; Init part
.byt SC_ASSIGN, 64, 200	; i=2
.byt 2
; Condition
.byt SC_JUMP_IF, SF_NOT
.byt SF_LE
.byt SF_GETVAL,64, 200	; i
.byt 4
.word 60
; for body
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt SF_GETVAL,64, 200	; i
.byt SC_WAIT_FOR_ACTOR
.byt 11
; Increment expression
.byt SC_ASSIGN, 64, 200	; i=i+1
.byt SF_ADD
.byt SF_GETVAL,64, 200	; i
.byt 1
; end for
.byt SC_JUMP, 31, 0	; jump to 31
.byt SC_CURSOR_ON
.byt 1
.byt SC_STOP_SCRIPT
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT
.byt SF_GETFLAG,5	; bMugGiven
.byt 45
; then part
; for
; Init part
.byt SC_ASSIGN, 64, 200	; i=5
.byt 5
; Condition
.byt SC_JUMP_IF, SF_NOT
.byt SF_LE
.byt SF_GETVAL,64, 200	; i
.byt 7
.word 102
; for body
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt SF_GETVAL,64, 200	; i
.byt SC_WAIT_FOR_ACTOR
.byt 11
; Increment expression
.byt SC_ASSIGN, 64, 200	; i=i+1
.byt SF_ADD
.byt SF_GETVAL,64, 200	; i
.byt 1
; end for
.byt SC_JUMP, 73, 0	; jump to 73
.byt SC_SETFLAG, 5	; bMugGiven=true
.byt 1
.byt SC_SAVEGAME
.byt SC_JUMP_REL, 9
; else part
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 16
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 17
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_LOAD_DIALOG
.byt 64, 201
.byt SC_SETFLAG, 6	; bWrongMapExit=false
.byt 0
.byt SC_START_DIALOG
.byt SC_CLEAR_EVENTS
.byt 1
.byt SC_WAIT_EVENT
.byt 1
.byt SC_LOOK_DIRECTION
.byt 11
.byt 2
.byt SC_DELAY
.byt 50
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_GETFLAG,6	; bWrongMapExit
.byt 24
; then part
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 20
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_LOOK_DIRECTION
.byt 11
.byt 0
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 21
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_JUMP_REL, 39
; else part
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 18
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 19
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_DELAY
.byt 50
.byt SC_LOOK_DIRECTION
.byt 11
.byt 0
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 8
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_SETFLAG, 7	; bMapPrinted=true
.byt 1
.byt SC_SPAWN_SCRIPT
.byt 64, 210
.byt SC_REMOVE_FROM_INVENTORY
.byt 4
.byt SC_REMOVE_OBJECT
.byt 4
.byt SC_SAVEGAME
.byt SC_END_DIALOG
.byt SC_CURSOR_ON
.byt 1
.byt SC_STOP_SCRIPT
res_end
.)

; Dialog 201
.(
.byt RESOURCE_DIALOG|$80
.word (res_end-res_start +4)
.byt 201
res_start
.byt 203	; Stringpack with options
.byt 202	; Script with response actions
.byt 1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,$ff	; Active flags
.word (l_goodh-script_202_start),(l_badh-script_202_start),(l_badh-script_202_start),(l_badh-script_202_start),(l_badd-script_202_start),(l_badd-script_202_start),(l_badd-script_202_start),(l_badd-script_202_start),(l_badd-script_202_start),(l_goodd-script_202_start),(l_badu-script_202_start),(l_goodu-script_202_start),(l_badu-script_202_start),(l_badu-script_202_start),(l_badu-script_202_start)	; Jump labels
res_end
.)
; String pack for dialog 201
.(
.byt RESOURCE_STRING|$80
.word (res_end-res_start +4)
.byt 203
res_start
.asc "Yes, it's one hundred...",0 ; String 0
.asc "Yes, it's two hundred...",0 ; String 1
.asc "Yes, it's three hundred...",0 ; String 2
.asc "Yes, it's four hundred...",0 ; String 3
.asc "... and twenty...",0 ; String 4
.asc "... and thirty...",0 ; String 5
.asc "... and forty...",0 ; String 6
.asc "... and fifty...",0 ; String 7
.asc "... and sixty...",0 ; String 8
.asc "... and seventy...",0 ; String 9
.asc "... one!",0 ; String 10
.asc "... two!",0 ; String 11
.asc "... three!",0 ; String 12
.asc "... four!",0 ; String 13
.asc "... five!",0 ; String 14
res_end
.)

; Script 202
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 202
res_start
+script_202_start
l_actd
.byt SC_ACTIVATE_DLGOPT
.byt 0
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 1
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 2
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 3
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 4
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 5
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 6
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 7
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 8
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 9
.byt 1
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_START_DIALOG
.byt SC_STOP_SCRIPT
l_actu
.byt SC_ACTIVATE_DLGOPT
.byt 4
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 5
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 6
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 7
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 8
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 9
.byt 0
.byt SC_ACTIVATE_DLGOPT
.byt 10
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 11
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 12
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 13
.byt 1
.byt SC_ACTIVATE_DLGOPT
.byt 14
.byt 1
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_START_DIALOG
.byt SC_STOP_SCRIPT
+l_badh
.byt SC_SETFLAG, 6	; bWrongMapExit=true
.byt 1
+l_goodh
.byt SC_JUMP
.word (l_actd-res_start)
+l_badd
.byt SC_SETFLAG, 6	; bWrongMapExit=true
.byt 1
+l_goodd
.byt SC_JUMP
.word (l_actu-res_start)
+l_badu
.byt SC_SETFLAG, 6	; bWrongMapExit=true
.byt 1
+l_goodu
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_SET_EVENTS
.byt 1
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Dialog 200
.(
.byt RESOURCE_DIALOG|$80
.word (res_end-res_start +4)
.byt 200
res_start
.byt 202	; Stringpack with options
.byt 201	; Script with response actions
.byt 1,1,1,$ff	; Active flags
.word (l_seenhim-script_201_start),(l_exits-script_201_start),(l_bye-script_201_start)	; Jump labels
res_end
.)
; String pack for dialog 200
.(
.byt RESOURCE_STRING|$80
.word (res_end-res_start +4)
.byt 202
res_start
.asc "Aren't you the guy of the info desk?",0 ; String 0
.asc "I need info on the city exits.",0 ; String 1
.asc "Nothing, thank you.",0 ; String 2
res_end
.)

; Script 201
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 201
res_start
+script_201_start
+l_seenhim
; for
; Init part
.byt SC_ASSIGN, 64, 200	; i=10
.byt 10
; Condition
.byt SC_JUMP_IF, SF_NOT
.byt SF_LE
.byt SF_GETVAL,64, 200	; i
.byt 12
.word 33
; for body
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt SF_GETVAL,64, 200	; i
.byt SC_WAIT_FOR_ACTOR
.byt 11
; Increment expression
.byt SC_ASSIGN, 64, 200	; i=i+1
.byt SF_ADD
.byt SF_GETVAL,64, 200	; i
.byt 1
; end for
.byt SC_JUMP, 4, 0	; jump to 4
.byt SC_ACTIVATE_DLGOPT
.byt 0
.byt 0
.byt SC_START_DIALOG
.byt SC_STOP_SCRIPT
+l_exits
; for
; Init part
.byt SC_ASSIGN, 64, 200	; i=13
.byt 13
; Condition
.byt SC_JUMP_IF, SF_NOT
.byt SF_LE
.byt SF_GETVAL,64, 200	; i
.byt 15
.word 71
; for body
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt SF_GETVAL,64, 200	; i
.byt SC_WAIT_FOR_ACTOR
.byt 11
; Increment expression
.byt SC_ASSIGN, 64, 200	; i=i+1
.byt SF_ADD
.byt SF_GETVAL,64, 200	; i
.byt 1
; end for
.byt SC_JUMP, 42, 0	; jump to 42
.byt SC_SETFLAG, 4	; bTradeInitiated=true
.byt 1
.byt SC_SAVEGAME
.byt SC_END_DIALOG
.byt SC_STOP_SCRIPT
+l_bye
.byt SC_ACTOR_TALK
.byt 11
.byt 64, 201
.byt 9
.byt SC_WAIT_FOR_ACTOR
.byt 11
.byt SC_END_DIALOG
.byt SC_STOP_SCRIPT
res_end
.)

; String pack 201
.(
.byt RESOURCE_STRING|$80
.word (res_end-res_start +4)
.byt 201
res_start
.asc "I have seen this face before.",0 ; String 0
.asc "Hello. Looking for something?",0 ; String 1
.asc "What?",0 ; String 2
.asc "What would I want that for?",0 ; String 3
.asc "I already told you: 100 credits.",0 ; String 4
.asc "Hey!!",0 ; String 5
.asc "That one is missing in my collection!",0 ; String 6
.asc "You have a deal. One second.",0 ; String 7
.asc "Your map is printed. Take it.",0 ; String 8
.asc "Okay. I'm always ready to trade.",0 ; String 9
.asc "Uh... well...",0 ; String 10
.asc "No. He looks like me, but he wouldn't",0 ; String 11
.asc "be involved in anything... un-legal.",0 ; String 12
.asc "I could provide that information...",0 ; String 13
.asc "but it would cost you 100 credits.",0 ; String 14
.asc "A fair price, if you ask me.",0 ; String 15
.asc "Ah, you are back. Good.",0 ; String 16
.asc "Tell me the exit number.",0 ; String 17
.asc "This one seems to be quite near...",0 ; String 18
.asc "Okay, I'll get the mug...",0 ; String 19
.asc "Mmmm... something's wrong.",0 ; String 20
.asc "Can't find that exit number",0 ; String 21
.asc "Your map is in the printer.",0 ; String 22
res_end
.)
