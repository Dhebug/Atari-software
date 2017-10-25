;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Generated by OASIS compiler
; (c) Chema 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; Object Code 200
.(
.byt RESOURCE_OBJECTCODE|$80
.word (res_end-res_start +4)
.byt 200
res_start
; Response table
.byt VERB_USE
.word (l_Use-res_start)
.byt VERB_WALKTO
.word (l_WalkTo-res_start)
.byt $ff ; End of response table
l_Use
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT, SF_EQ
.byt SF_GET_ACTIONOBJ2
.byt 64, 255
.byt 14
; then part
.byt SC_ACTOR_TALK
.byt SF_GET_ACTIONACTOR
.byt 64, 200
.byt 15
.byt SC_STOP_SCRIPT
l_WalkTo
.byt SC_ASSIGN, 0	; tmpParam1=0
.byt 0
.byt SC_SET_OBJECT_POS
.byt SF_GET_ACTIONACTOR
.byt 23
.byt 11
.byt 5
.byt SC_LOOK_DIRECTION
.byt SF_GET_ACTIONACTOR
.byt 3
.byt SC_CHANGE_ROOM_AND_STOP
.byt 23
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
.byt VERB_PICKUP
.word (l_PickUp-res_start)
.byt VERB_WALKTO
.word (l_WalkTo-res_start)
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt $ff ; End of response table
l_PickUp
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT
.byt SF_IS_OBJINVENTORY
.byt 36
.byt 10
; then part
.byt SC_PUT_IN_INVENTORY
.byt 36
.byt SC_JUMP_REL, 9
; else part
.byt SC_ACTOR_TALK
.byt SF_GET_ACTIONACTOR
.byt 64, 200
.byt 14
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_ACTIONACTOR
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT
.byt SF_GETFLAG,40	; bGunSeen
.byt 9
; then part
.byt SC_CHAIN_SCRIPT
.byt 64, 202
.byt SC_STOP_SCRIPT
l_WalkTo
l_LookAt
.byt SC_SPAWN_SCRIPT
.byt 64, 202
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
.byt VERB_WALKTO
.word (l_WalkTo-res_start)
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt VERB_PICKUP
.word (l_PickUp-res_start)
.byt $ff ; End of response table
l_WalkTo
l_LookAt
.byt SC_SPAWN_SCRIPT
.byt 64, 203
.byt SC_STOP_SCRIPT
l_PickUp
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT
.byt SF_IS_OBJINVENTORY
.byt 35
.byt 10
; then part
.byt SC_PUT_IN_INVENTORY
.byt 35
.byt SC_JUMP_REL, 9
; else part
.byt SC_ACTOR_TALK
.byt SF_GET_ACTIONACTOR
.byt 64, 200
.byt 14
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_ACTIONACTOR
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_AND
.byt SF_NOT
.byt SF_IS_OBJINVENTORY
.byt 42
.byt SF_GETFLAG,39	; bCygnusOrbit
.byt 22
; then part
.byt SC_CURSOR_ON
.byt 0
.byt SC_ACTOR_TALK
.byt SF_GET_ACTIONACTOR
.byt 64, 200
.byt 13
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_ACTIONACTOR
.byt SC_PUT_IN_INVENTORY
.byt 42
.byt SC_CURSOR_ON
.byt 1
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_NOT
.byt SF_GETFLAG,41	; bBraceletSeen
.byt 9
; then part
.byt SC_SPAWN_SCRIPT
.byt 64, 203
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
.byt VERB_USE
.word (l_Use-res_start)
.byt VERB_WALKTO
.word (l_WalkTo-res_start)
.byt VERB_LOOKAT
.word (l_LookAt-res_start)
.byt $ff ; End of response table
l_Use
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_AND
.byt SF_EQ
.byt SF_GET_EGO
.byt 22
.byt SF_EQ
.byt SF_GET_ACTIONOBJ1
.byt 30
.byt 48
; then part
.byt SC_CURSOR_ON
.byt 0
.byt SC_ACTOR_TALK
.byt 22
.byt 64, 200
.byt 16
.byt SC_WAIT_FOR_ACTOR
.byt 22
.byt SC_REMOVE_FROM_INVENTORY
.byt 30
.byt SC_DELAY
.byt 20
.byt SC_LOOK_DIRECTION
.byt 22
.byt 3
.byt SC_ACTOR_TALK
.byt 22
.byt 64, 200
.byt 17
.byt SC_WAIT_FOR_ACTOR
.byt 22
.byt SC_ACTOR_TALK
.byt 22
.byt 64, 200
.byt 18
.byt SC_WAIT_FOR_ACTOR
.byt 22
.byt SC_SETFLAG, 64, 73	; bSwitchInstalled=true
.byt 1
.byt SC_CURSOR_ON
.byt 1
.byt SC_SAVEGAME
.byt SC_STOP_SCRIPT
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
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_EQ
.byt SF_GET_ACTIONACTOR
.byt 22
.byt 15
; then part
.byt SC_ACTOR_TALK
.byt 22
.byt 64, 200
.byt 19
.byt SC_WAIT_FOR_ACTOR
.byt 22
.byt SC_JUMP_REL, 9
; else part
.byt SC_ACTOR_TALK
.byt SF_GET_ACTIONACTOR
.byt 64, 200
.byt 10
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_ACTIONACTOR
.byt SC_STOP_SCRIPT
l_WalkTo
l_LookAt
.byt SC_ACTOR_TALK
.byt SF_GET_ACTIONACTOR
.byt 64, 200
.byt 11
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_ACTIONACTOR
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
.byt VERB_USE
.word (l_Use-res_start)
.byt VERB_WALKTO
.word (l_WalkTo-res_start)
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
l_WalkTo
.byt SC_ASSIGN, 64, 200	; a=sfGetActorExecutingAction()
.byt SF_GET_ACTIONACTOR
.byt SC_ACTOR_WALKTO
.byt SF_GETVAL,64, 200	; a
.byt 1
.byt 13
.byt SC_WAIT_FOR_ACTOR
.byt SF_GETVAL,64, 200	; a
.byt SC_LOOK_DIRECTION
.byt SF_GETVAL,64, 200	; a
.byt 0
.byt SC_STOP_SCRIPT
l_LookAt
.byt SC_ACTOR_TALK
.byt SF_GET_ACTIONACTOR
.byt 64, 200
.byt 12
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_ACTIONACTOR
.byt SC_STOP_SCRIPT
.byt SC_STOP_SCRIPT
res_end
.)

; Script 200
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 200
res_start
+script_200_start
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_AND
.byt SF_GETFLAG,39	; bCygnusOrbit
.byt SF_NOT
.byt SF_GETFLAG,38	; bTelIntroduced
.byt 15
; then part
.byt SC_SPAWN_SCRIPT
.byt 64, 201
.byt SC_SETFLAG, 38	; bTelIntroduced=true
.byt 1
.byt SC_STOP_SCRIPT
res_end
.)

; Script 201
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 201
res_start
+script_201_start
.byt SC_CURSOR_ON
.byt 0
.byt SC_BREAK_HERE
.byt SC_ACTOR_WALKTO
.byt 0
.byt 21
.byt 14
; for
; Init part
.byt SC_ASSIGN, 64, 200	; i=0
.byt 0
; Condition
.byt SC_JUMP_IF, SF_NOT
.byt SF_LE
.byt SF_GETVAL,64, 200	; i
.byt 5
.word 40
; for body
.byt SC_ACTOR_TALK
.byt 22
.byt 64, 200
.byt SF_GETVAL,64, 200	; i
.byt SC_WAIT_FOR_ACTOR
.byt 22
; Increment expression
.byt SC_ASSIGN, 64, 200	; i=i+1
.byt SF_ADD
.byt SF_GETVAL,64, 200	; i
.byt 1
; end for
.byt SC_JUMP, 11, 0	; jump to 11
.byt SC_CURSOR_ON
.byt 1
.byt SC_STOP_SCRIPT
res_end
.)

; Script 202
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 202
res_start
+script_202_start
.byt SC_CURSOR_ON
.byt 0
.byt SC_ACTOR_TALK
.byt SF_GET_EGO
.byt 64, 200
.byt 8
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_EGO
.byt SC_ACTOR_TALK
.byt SF_GET_EGO
.byt 64, 200
.byt 9
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_EGO
.byt SC_SETFLAG, 40	; bGunSeen=true
.byt 1
.byt SC_LOAD_ROOM
.byt 64, 200
.byt SC_DELAY
.byt 64, 100
.byt SC_CURSOR_ON
.byt 1
.byt SC_LOAD_ROOM
.byt 24
.byt SC_STOP_SCRIPT
res_end
.)

; Script 203
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 203
res_start
+script_203_start
.byt SC_CURSOR_ON
.byt 0
.byt SC_ACTOR_TALK
.byt SF_GET_EGO
.byt 64, 200
.byt 6
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_EGO
.byt SC_ACTOR_TALK
.byt SF_GET_EGO
.byt 64, 200
.byt 7
.byt SC_WAIT_FOR_ACTOR
.byt SF_GET_EGO
.byt SC_SETFLAG, 41	; bBraceletSeen=true
.byt 1
.byt SC_LOAD_ROOM
.byt 64, 201
.byt SC_DELAY
.byt 64, 100
.byt SC_CURSOR_ON
.byt 1
.byt SC_LOAD_ROOM
.byt 24
.byt SC_STOP_SCRIPT
res_end
.)

; String pack 200
.(
.byt RESOURCE_STRING|$80
.word (res_end-res_start +4)
.byt 200
res_start
.asc "Do you know what is all this for?",0 ; String 0
.asc "I bet it is a Teleport system.",0 ; String 1
.asc "You need one of those bracelets.",0 ; String 2
.asc "I think I could teleport you to any",0 ; String 3
.asc "given coordinates, within a range.",0 ; String 4
.asc "Go to the cabin and use the bracelet.",0 ; String 5
.asc "These bracelets seem to serve as",0 ; String 6
.asc "communication devices aswell. ",0 ; String 7
.asc "It's full of strange handheld things.",0 ; String 8
.asc "Some kind of weapon, it seems...",0 ; String 9
.asc "I don't know how to operate it.",0 ; String 10
.asc "A lot of lights, panels and switches.",0 ; String 11
.asc "A strange cabin...",0 ; String 12
.asc "I will take a few to bring up my crew.",0 ; String 13
.asc "I already have mine.",0 ; String 14
.asc "I don't understand.",0 ; String 15
.asc "Okay. I'll install this here...",0 ; String 16
.asc "and when it receives the signal, the",0 ; String 17
.asc "teleport will operate.",0 ; String 18
.asc "And who will I teleport?",0 ; String 19
res_end
.)
