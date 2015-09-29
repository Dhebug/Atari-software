
; Example program for reading the Oric's     
; keyboard. All keys are scanned and a       
; virtual matrix of 8 bytes is updated at    
; each IRQ.                                  
;                                            
; Idea: Dbug                                 
; Main code: Twiligthe                       
; Adaptation & final implementation: Chema   
;                                            
; 2010                                        


#define        via_portb               $0300 
#define		   via_ddrb				   $0302	
#define		   via_ddra				   $0303
#define        via_t1cl                $0304 
#define        via_t1ch                $0305 
#define        via_t1ll                $0306 
#define        via_t1lh                $0307 
#define        via_t2ll                $0308 
#define        via_t2lh                $0309 
#define        via_sr                  $030A 
#define        via_acr                 $030b 
#define        via_pcr                 $030c 
#define        via_ifr                 $030D 
#define        via_ier                 $030E 
#define        via_porta               $030f 


.zero
zpTemp01			.byt 0
zpTemp02			.byt 0
tmprow				.byt 0

isr_plays_sound		.byt 0

.text 

#define ROM

#ifdef ROM
#define IRQ_ADDRLO $0245
#define IRQ_ADDRHI $0246
#else
#define IRQ_ADDRLO $fffe
#define IRQ_ADDRHI $ffff
#endif


_InitISR
.(
    ;Since we are starting from when the standard irq has already been 
    ;setup, we need not worry about ensuring one irq event and/or right 
    ;timer period, only redirecting irq vector to our own irq handler. 
    sei
	; Setup DDRA, DDRB and ACR
    lda #%11111111
    sta via_ddra
	lda #%11110111 ; PB0-2 outputs, PB3 input.
	sta via_ddrb
	lda #%1000000
	sta via_acr

	; Since this is an slow process, we set the VIA timer to 
	; issue interrupts at 25Hz, instead of 100 Hz. This is 
	; not necessary -- it depends on your needs
	;lda #<40000
	;sta via_t1ll 
	;lda #>40000
	;sta via_t1lh

	; Patch IRQ vector
    lda #<irq_routine 
    ldx #>irq_routine 
	
	ldy $fffe
	cpy #$44
	bne oric1
	; It is an atmos
    sta $0245
    stx $0246
	jmp end
oric1
	; It is an Oric-1
    sta $0229
    stx $022a
end	
    cli 
    rts 
.)


; The virtual Key Matrix
_KeyBank .dsb 8

irq_routine 
.(

	pha

#ifdef SANITYVERSION	
test_via1
	bit $030D
	bpl test_via2
	lda #$7F
	sta $030D    ; cancel any VIA interrupt
test_via2
	bit $032D        ; on the Oric1/Atmos, this will test via1 again
	bpl test_acia
	lda #$7F
	sta $032D    ; cancel any VIA2 interrupt (VIA1 on the Atmos)
test_acia
    bit $031D    ; on the Oric1/Atmos, this will test via1 again !
    bpl test_fdc
    ; reading the ACIA status has already cleared the interrupt, so no need to do anything
    ; if it is a VIA interrupt on the Atmos, it has happened between the first via test and now,
    ; so we ignore it: it will raise another interrupt that will be cleared during the second interrupt handler test_fdc

	bit $0314           ; $0314 reflects INTRQ state in negative logic
    bmi all_tests_done
test_fdc
.dsb (($0310&3)-((*+3)&3))&3,$ea
    lda $0310    ; read FDC status and clears interrupt request
_chk_310g
all_tests_done
#else
    ;Clear IRQ event 
    lda via_t1cl 
#endif	

	; Signal an interrupt has been detected
	; This serves the purpose of timing and 
	; synchronizing with the vertical retrace
	inc irq_detected

	
	; If the ISR is to play sound, do it
	lda isr_plays_sound
	and audio_on
	and MusicPlaying
	beq skip
	stx savx+1
	sty savy+1
	jsr ProcessMusic
savx
	ldx #0
savy
	ldy #0
skip	
	pla
		
    ;End of IRQ 
    rti 
.)



ReadKeyboard
.(
		sei
        ;Write Column Register Number to PortA 
        lda #$0E 
        sta via_porta 

        ;Tell AY this is Register Number 
        lda #$FF 
        sta via_pcr 

		; Clear CB2, as keeping it high hangs on some orics.
		; Pitty, as all this code could be run only once, otherwise
        ldy #$dd 
        sty via_pcr 

        ldx #7 

loop2   ;Clear relevant bank 
        lda #00 
        sta _KeyBank,x 

        ;Write 0 to Column Register 

		sta via_porta 
	    lda #$fd 
	    sta via_pcr 
        lda #$dd
        sta via_pcr


        lda via_portb 
        and #%11111000
        stx zpTemp02
        ora zpTemp02 
        sta via_portb 

        
        ;Wait 10 cycles for circuit to settle on new row 
        ;Use time to load inner loop counter and load Bit 

		; CHEMA: Fabrice Broche uses 4 cycles (lda #8:inx) plus
		; the four cycles of the and absolute. That is 8 cycles.
		; So I guess that I could do the same here (ldy,lda)

        ldy #$80
        lda #8 

        ;Sense Row activity 
        and via_portb 
        beq skip2 

        ;Store Column 
        tya
loop1   
        eor #$FF 

		sta via_porta 
	    lda #$fd 
	    sta via_pcr 
        lda #$dd
        sta via_pcr

        lda via_portb 
        and #%11111000
        stx zpTemp02
        ora zpTemp02 
        sta via_portb 


        ;Use delay(10 cycles) for setting up bit in _KeyBank and loading Bit 
        tya
        ora _KeyBank,x 
        sta zpTemp01 
        lda #8 

        ;Sense key activity 
        and via_portb 
        beq skip1 

        ;Store key 
        lda zpTemp01 
        sta _KeyBank,x 

skip1   ;Proceed to next column 
        tya 
        lsr 
        tay 
        bcc loop1 

skip2   ;Proceed to next row 
        dex 
        bpl loop2 
		cli
        rts 
.)  


; Some more routines, not actualy needed, but quite useful
; for reading a single key (get the first active bit in 
; the virtual matrix) and returning his ASCII value.
; Should serve as an example about how to handle the keymap.


; Usually it is a good idea to keep 0 all the unused
; entries, as it speeds up things. Z=1 means no key
; pressed and there is no need to look in tables later on. 

; This keys don't have an ASCII code assigned, so we will
; use consecutive values outside the usual alphanumeric 
; space.

#define KEY_UP			1
#define KEY_LEFT		2
#define KEY_DOWN		3
#define KEY_RIGHT		4

#define KEY_LCTRL		5
#define KET_RCTRL		6
#define KEY_LSHIFT		7
#define KEY_RSHIFT		8
#define KEY_FUNCT		9


; This keys do have ASCII values, let's use them 

/*
#define KEY_ESC			$1b
#define KEY_DEL			$7f
#define KEY_RETURN		$0d
*/

#define KEY_ESC			10
#define KEY_DEL			11
#define KEY_RETURN		12

/*
tab_ascii
    .asc "7","N","5","V",KET_RCTRL,"1","X","3"
    .asc "J","T","R","F",0,KEY_ESC,"Q","D"
    .asc "M","6","B","4",KEY_LCTRL,"Z","2","C"
    .asc "K","9",59,"-",0,0,92,39
    .asc " ",",",".",KEY_UP,KEY_LSHIFT,KEY_LEFT,KEY_DOWN,KEY_RIGHT
    .asc "U","I","O","P",KEY_FUNCT,KEY_DEL,"]","["
    .asc "Y","H","G","E",0,"A","S","W"
    .asc "8","L","0","/",KEY_RSHIFT,KEY_RETURN,0,"="
*/

tab_ascii
    .asc "7","N","5","V",KET_RCTRL,"1","X","3"
    .asc "J","T","R","F",0,KEY_ESC,"Q","D"
    .asc "M","6","B","4",KEY_LCTRL,"Z","2","C"
    .asc "K","9",38,"-",0,0,42,39
    .asc " ",",",".",KEY_UP,KEY_LSHIFT,KEY_LEFT,KEY_DOWN,KEY_RIGHT
    .asc "U","I","O","P",KEY_FUNCT,KEY_DEL,")","("
    .asc "Y","H","G","E",0,"A","S","W"
    .asc "8","L","0","/",KEY_RSHIFT,KEY_RETURN,0,"+"



; Reads a key (single press, but repeating) and returns his ASCII value in reg X. 
; Z=1 if no keypress detected.
_ReadKey
.(
	ldx #7
loop
	lda _KeyBank,x
	beq skip

	stx KeyBankUsed
	sta KeyBitflag
	
	ldy #$ff
loop2
	iny
	lsr
	bcc loop2
	txa
	asl
	asl
	asl
	sty tmprow
	clc
	adc tmprow
	tax
	lda tab_ascii,x
    tax
	rts
skip
	dex
	bpl loop

    ldx #0
	rts
.)

; Read a single key, same as before but no repeating.

oldKey .byt 0
_ReadKeyNoBounce
.(
	jsr _ReadKey
    cpx oldKey
	beq retz
	stx oldKey
	cpx #0
	beq retz
	rts
retz
	ldx #0
	rts
.)

;;;;;;;;;;;;;;;;;;;;;;
; Wait for a keypress
;;;;;;;;;;;;;;;;;;;;;;
_WaitKey
.(
	lda #0
	sta oldKey
loop
	jsr waitirq
	jsr ReadKeyboard
	jsr _ReadKeyNoBounce
	beq loop
	rts	
.)


