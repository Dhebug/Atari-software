;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Generated by OASIS compiler
; (c) Chema 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; Script 200
.(
.byt RESOURCE_SCRIPT|$80
.word (res_end-res_start +4)
.byt 200
res_start
+script_200_start
.byt SC_DELAY
.byt 50
.byt SC_LOOK_DIRECTION
.byt 64, 200
.byt 0
.byt SC_ACTOR_TALK
.byt 64, 200
.byt 64, 200
.byt 0
.byt SC_WAIT_FOR_ACTOR
.byt 64, 200
.byt SC_ACTOR_TALK
.byt 64, 200
.byt 64, 200
.byt 1
.byt SC_WAIT_FOR_ACTOR
.byt 64, 200
.byt SC_DELAY
.byt 50
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 2
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_DELAY
.byt 64, 75
.byt SC_ACTOR_TALK
.byt 64, 200
.byt 64, 200
.byt 3
.byt SC_WAIT_FOR_ACTOR
.byt 64, 200
.byt SC_DELAY
.byt 50
.byt SC_ACTOR_TALK
.byt 64, 200
.byt 64, 200
.byt 4
.byt SC_WAIT_FOR_ACTOR
.byt 64, 200
.byt SC_DELAY
.byt 64, 75
.byt SC_ACTOR_WALKTO
.byt 64, 200
.byt 13
.byt 16
.byt SC_DELAY
.byt 25
.byt SC_ACTOR_WALKTO
.byt 0
.byt 18
.byt 16
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_PAN_CAMERA
.byt 1
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 5
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 6
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_ACTOR_TALK
.byt 64, 200
.byt 64, 200
.byt 7
.byt SC_WAIT_FOR_ACTOR
.byt 64, 200
.byt SC_DELAY
.byt 50
.byt SC_ACTOR_TALK
.byt 0
.byt 64, 200
.byt 8
.byt SC_WAIT_FOR_ACTOR
.byt 0
.byt SC_LOOK_DIRECTION
.byt 64, 200
.byt 0
.byt SC_DELAY
.byt 64, 75
; for
; Init part
.byt SC_ASSIGN, 64, 200	; i=9
.byt 9
; Condition
.byt SC_JUMP_IF, SF_NOT
.byt SF_LE
.byt SF_GETVAL,64, 200	; i
.byt 16
.word 158
; for body
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_EQ
.byt SF_GETVAL,64, 200	; i
.byt 15
.byt 10
; then part
.byt SC_DELAY
.byt 50
.byt SC_ACTOR_TALK
.byt 64, 200
.byt 64, 200
.byt SF_GETVAL,64, 200	; i
.byt SC_WAIT_FOR_ACTOR
.byt 64, 200
; Increment expression
.byt SC_ASSIGN, 64, 200	; i=i+1
.byt SF_ADD
.byt SF_GETVAL,64, 200	; i
.byt 1
; end for
.byt SC_JUMP, 117, 0	; jump to 117
.byt SC_DELAY
.byt 64, 75
.byt SC_LOAD_OBJECT
.byt 26
.byt SC_LOAD_OBJECT
.byt 15
.byt SC_LOAD_OBJECT
.byt 25
.byt SC_SET_OBJECT_POS
.byt 2
.byt 11
.byt 15
.byt 47
.byt SC_SET_OBJECT_POS
.byt 15
.byt 11
.byt 16
.byt 50
.byt SC_SET_OBJECT_POS
.byt 25
.byt 11
.byt 16
.byt 42
.byt SC_SET_OBJECT_POS
.byt 26
.byt 11
.byt 15
.byt 45
.byt SC_ACTOR_TALK
.byt 25
.byt 64, 201
.byt 0
.byt SC_WAIT_FOR_ACTOR
.byt 25
.byt SC_LOOK_DIRECTION
.byt 0
.byt 0
.byt SC_PLAYSFX
.byt 8
.byt SC_WAIT_FOR_TUNE
.byt SC_ACTOR_WALKTO
.byt 25
.byt 29
.byt 16
.byt SC_ACTOR_WALKTO
.byt 26
.byt 33
.byt 15
.byt SC_ACTOR_WALKTO
.byt 2
.byt 37
.byt 15
.byt SC_ACTOR_WALKTO
.byt 15
.byt 40
.byt 16
.byt SC_PAN_CAMERA
.byt 33
.byt SC_WAIT_FOR_CAMERA
.byt SC_WAIT_FOR_ACTOR
.byt 2
.byt SC_WAIT_FOR_ACTOR
.byt 15
.byt SC_WAIT_FOR_ACTOR
.byt 26
.byt SC_WAIT_FOR_ACTOR
.byt 25
.byt SC_SET_ANIMSTATE
.byt 2
.byt 12
.byt SC_SET_ANIMSTATE
.byt 15
.byt 12
.byt SC_DELAY
.byt 64, 75
.byt SC_ACTOR_TALK
.byt 25
.byt 64, 201
.byt 1
.byt SC_WAIT_FOR_ACTOR
.byt 25
.byt SC_ACTOR_TALK
.byt 25
.byt 64, 201
.byt 2
.byt SC_WAIT_FOR_ACTOR
.byt 25
.byt SC_ACTOR_TALK
.byt 25
.byt 64, 201
.byt 3
.byt SC_WAIT_FOR_ACTOR
.byt 25
.byt SC_DELAY
.byt 50
.byt SC_ACTOR_TALK
.byt 25
.byt 64, 201
.byt 4
.byt SC_WAIT_FOR_ACTOR
.byt 25
.byt SC_ACTOR_TALK
.byt 25
.byt 64, 201
.byt 5
.byt SC_WAIT_FOR_ACTOR
.byt 25
.byt SC_DELAY
.byt 50
.byt SC_ACTOR_TALK
.byt 25
.byt 64, 201
.byt 6
.byt SC_WAIT_FOR_ACTOR
.byt 25
.byt SC_ACTOR_TALK
.byt 26
.byt 64, 201
.byt 7
.byt SC_WAIT_FOR_ACTOR
.byt 26
.byt SC_ACTOR_TALK
.byt 26
.byt 64, 201
.byt 8
.byt SC_WAIT_FOR_ACTOR
.byt 26
; for
; Init part
.byt SC_ASSIGN, 64, 200	; i=9
.byt 9
; Condition
.byt SC_JUMP_IF, SF_NOT
.byt SF_LE
.byt SF_GETVAL,64, 200	; i
.byt 14
.word 339
; for body
; if
.byt SC_JUMP_REL_IF, SF_NOT
.byt SF_EQ
.byt SF_GETVAL,64, 200	; i
.byt 14
.byt 10
; then part
.byt SC_DELAY
.byt 50
.byt SC_ACTOR_TALK
.byt 25
.byt 64, 201
.byt SF_GETVAL,64, 200	; i
.byt SC_WAIT_FOR_ACTOR
.byt 25
; Increment expression
.byt SC_ASSIGN, 64, 200	; i=i+1
.byt SF_ADD
.byt SF_GETVAL,64, 200	; i
.byt 1
; end for
.byt SC_JUMP, 44, 1	; jump to 300
.byt SC_DELAY
.byt 50
.byt SC_FADETOBLACK
.byt SC_LOAD_ROOM
.byt 12
.byt SC_STOP_SCRIPT
res_end
.)

; String pack 200
.(
.byt RESOURCE_STRING|$80
.word (res_end-res_start +4)
.byt 200
res_start
.asc "Don't you remember anything about the",0 ; String 0
.asc "treatments they gave you?",0 ; String 1
.asc "I've had no treatments.",0 ; String 2
.asc "I thought there'd be something left...",0 ; String 3
.asc "some trace of memory.",0 ; String 4
.asc "What is this? I've had no treatment, my",0 ; String 5
.asc "memory is alright; now what's going on?",0 ; String 6
.asc "I know, I know, it's difficult for you.",0 ; String 7
.asc "Tell me what you know about my family!",0 ; String 8
.asc "They're dead. Killed by the Federation.",0 ; String 9
.asc "You were and still are a leader of the",0 ; String 10
.asc "resistance, but were captured.",0 ; String 11
.asc "They didn't want you to become a martyr",0 ; String 12
.asc "so the Federation erased your past and",0 ; String 13
.asc "reprogrammed you into a content citizen",0 ; String 14
.asc "Blake, we need you back!",0 ; String 15
.asc "All the leaders of dissent wait inside.",0 ; String 16
res_end
.)

; String pack 201
.(
.byt RESOURCE_STRING|$80
.word (res_end-res_start +4)
.byt 201
res_start
.asc "What a lovely meeting...!",0 ; String 0
.asc "I am very sorry to interrupt you but",0 ; String 1
.asc "I'm afraid this game of yours is coming",0 ; String 2
.asc "to an end this time, Mr. Foster.",0 ; String 3
.asc "Thank you very much, Blake.",0 ; String 4
.asc "You've been the perfect bait.",0 ; String 5
.asc "Travis, eliminate everyone inside.",0 ; String 6
.asc "At once, Supreme Commander!",0 ; String 7
.asc "And what about Blake? Shall I kill him?",0 ; String 8
.asc "No, Travis.",0 ; String 9
.asc "We don't want a martyr.",0 ; String 10
.asc "I have a surprise for him.",0 ; String 11
.asc "Something that will totally destroy",0 ; String 12
.asc "his reputation forever.",0 ; String 13
.asc "Take him away, please",0 ; String 14
res_end
.)
