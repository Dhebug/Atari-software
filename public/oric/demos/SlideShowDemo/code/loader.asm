
#include "disk_info.h"

#define COLOR(color) pha:lda #16+(color&7):sta $bb80+40*27:pla
#define STOP(color) pha:lda #16+(color&7):sta $bb80+40*27:jmp *:pla
#define INSTALL_HANDLER(address,callback) lda #$4c:sta address:lda #<callback:sta address+1:lda #>callback:sta address+2 	; jmp=$4c

	.zero
	
	*=$00
	
retry_counter		.dsb 1		; Number of attempts at loading data (ie: not quite clear what happens when this fails...)
sectors_to_go		.dsb 1		; How many sectors do we still need to load for this file
current_track		.dsb 1		; Index of the track being loaded
current_sector		.dsb 1		; Index of the sector being loaded
current_side		.dsb 1		; Has the bit 4 set to 0 or 1 to be used as a mask on the Microdisc control register (other bits have to be set to zero)
irq_save_a			.dsb 1      ; To preserve the accumulator value in the IRQ code

	.text

; FFF7-FFF9 - Load File (JMP/LOW/HIGH) - file to load in X register
; FFFA-FFFB - NMI Vector (Usually points to $0247)
; FFFC-FFFD - RESET Vector (Usually points to $F88F)
; FFFE-FFFF - IRQ Vector (Normally points to $0244)
;

	*=location_loader


Initialize
	jmp StartUp

; This file is generated by the floppy builder
#include "floppy_description.h"

; Some local variables we need

StartUp
	; Set-up a safe irq that does nothing (just contains a RTI instruction)
	; This helps avoiding crashes if the user presses RESET for example :)
	lda #<IrqDoNothing    ; NMI vector
	sta $fffa
	sta $fffc
	lda #>IrqDoNothing	  ; RESET vector
	sta $fffb
	sta $fffd

	; Install our API (top of memory function calls)
    INSTALL_HANDLER($FFF7,LoadData)

	jsr SetUpIrqHandlers	
	jsr SoftHiresWithCopyCharset


	;ldx #LOADER_FIRST_PICTURE
	;jsr LoadData
	;STOP(1)

	; Load the slideshow
	ldx #LOADER_SLIDESHOW
	jsr LoadData

	;STOP(1)	
	jsr ExecuteData
		
	;
	; End of demo - Just stay there doing nothing
	;
	sei
.(	
loop
	jmp loop
.)
	
	
ClearZeroPage
.(
	lda #0
	tax
loop
	sta $00,x
	dex
	bne loop	
	rts	
.)	

	
SetUpIrqHandlers
	sei
	
	ldy #<IrqHandler
	lda #>IrqHandler
    sty $fffe
	sta $ffff
	
	; Make sure the microdisc IRQ is disabled	
	jsr WaitCompletion
	
	;lda #%10000100 			; Disable the FDC (Eprom select + FDC Interrupt request)
	;sta MICRODISC

	;jsr WaitCompletion

	rts	
		
IrqHandler
	sta irq_save_a
	pla
	and #%00010000	; Check the saved B flag to detect a BRK
	bne from_brk
	
from_irq
	bit $304

	lda $bfdf
	eor #1
	ora #16
	sta $bfdf

	lda irq_save_a
	pha
IrqDoNothing
	rti	
	
from_brk	
	lda #16+1
	sta $bb80+40*27	
	nop
	nop
	nop
	lda #16+2
	sta $bb80+40*27
	jmp from_brk


	
HexData	.byt "0123456789ABCDEF"
	
	
; X=File index
LoadData
	sei

	; Make sure the microdisc IRQ is disabled	
	jsr WaitCompletion
	
	lda #%10000100 			; Disable the FDC (Eprom select + FDC Interrupt request)
	sta MICRODISC

	;jsr WaitCompletion

	;
	; Setup, we use the table to find out where the file is located on the floppy,
	; where to write it in memory, and how large it is.
	;
	lda FileLoadAdressHigh,x
	sta __auto_execute_address+2
	sta __auto_write_address+2

	lda FileLoadAdressLow,x
	sta __auto_execute_address+1
	sta __auto_write_address+1

	; Starting track	
	ldy #%00000000 				; Side 0
	lda FileStartTrack,x        ; If the track id is larger than 128, it means it is on the other side of the floppy
	bpl first_side
	; The file starts on the second side
	ldy #%00010000				; Side 1
	and #%01111111              ; Mask out the extra bit
first_side
	sty current_side
	sta current_track

	; First sector
	lda FileStartSector,x
	sta current_sector

	; Number of sectors to load
	lda FileSectorCount,x 	
	sta sectors_to_go
	
	;
	; Loop to read all the sectors	
	;
read_sectors_loop	

	; Check if we have reached the end of the track
	lda current_sector
	cmp #FLOPPY_SECTOR_PER_TRACK+1
	bne same_track

	; Next track
	inc current_track
	lda current_track
	cmp #FLOPPY_TRACK_NUMBER
	bne stay_on_same_side

	; Reset to the first track on the other side
	lda #0
	sta current_track

	lda #%00010000
	sta current_side	
stay_on_same_side

	; Reset the sector position
	lda #1
	sta current_sector
same_track

#ifdef LOADER_SHOW_DEBUGINFO	
	; Display debug info
	jsr DisplayPosition
#endif

	lda current_sector
	sta FDC_sector_register
	inc current_sector
	
	; Check if the drive is on the correct track		
	lda current_track
	cmp FDC_track_register	
	beq stay_on_the_track
		
	; Set the new track
	sta	FDC_data
		
	lda #CMD_Seek
	sta FDC_command_register	
	jsr WaitCompletion
	
	lda #%10000100 ; on force les le Microdisk en side0, drive A ... Set le bit de donn�es !!!
	ora current_side
	sta MICRODISC

stay_on_the_track
	lda #CMD_ReadSector
	sta FDC_command_register


	ldy #wait_status_floppy
waitcommand
	nop
	nop
	dey
	bne waitcommand

	;
	; Read the sector data
	;
	ldy #0
microdisc_read_data
	lda $0318
    bmi microdisc_read_data

	lda $313
__auto_write_address
	sta $c000,y
	iny

	bne microdisc_read_data

	lda FDC_status_register
	and #$1C

	; Try to let time to an IRQ to play
	cli
	nop
	nop
	sei

	; Next sector
	inc __auto_write_address+2
	dec sectors_to_go
	bne read_sectors_loop

	; Data successfully loaded (we hope), so we restore the interrupts
	cli
	rts
	
ExecuteData	
	jsr SetUpIrqHandlers
	jsr ClearZeroPage
__auto_execute_address
	jsr $a000
	jsr SetUpIrqHandlers
	rts


WaitCompletion
	ldy #4
r_wait_completion
	dey
	bne r_wait_completion
r2_wait_completion
	lda FDC_status_register
	lsr
	bcs r2_wait_completion
	asl
	rts

#ifdef LOADER_SHOW_DEBUGINFO	
DisplayPosition	
	.(
	lda current_side	
	lsr
	lsr
	lsr
	lsr
	tax
	lda HexData,x
	sta $bb80+40*27+0

	lda #3
	sta $bb80+40*27+1
		
	lda current_track
	lsr
	lsr
	lsr
	lsr
	tax
	lda HexData,x
	sta $bb80+40*27+2
	
	lda current_track
	and #15
	tax
	lda HexData,x
	sta $bb80+40*27+3

	lda #2	
	sta $bb80+40*27+4
		
	lda current_sector
	lsr
	lsr
	lsr
	lsr
	tax
	lda HexData,x
	sta $bb80+40*27+5
	
	lda current_sector
	and #15
	tax
	lda HexData,x
	sta $bb80+40*27+6
	
	;jsr WaitLoop
	rts
	.)
#endif
	

SoftHiresWithCopyCharset
	ldy #$00		;copy charset
	.(
copy_charset_loop
	lda $b500,y
	sta $9900,y
	lda $b600,y
	sta $9a00,y
	lda $b700,y
	sta $9b00,y
	lda $b900,y
	sta $9d00,y
	lda $ba00,y
	sta $9e00,y
	lda $bb00,y
	sta $9f00,y
	dey
	bne copy_charset_loop
	.)
SoftHires	
	lda #$a0             ;clear down all memory area with zero
	sta $01
	lda #$00
	sta $00 			; a = 0 from here
	ldx #$20
hm_01 
    sta ($00),y
	iny
	bne hm_01
	inc $01
	dex
	bne hm_01
	lda #30			;write hires switch
	sta $bf40
	lda #$a0		;clear hires with #$40
	sta $01
	ldx #$20
	ldx #64
hm_04
	ldy #124
hm_05
	lda #$40
	sta ($00),y
	dey
	bpl hm_05
	lda $00
	adc #125
	sta $00
	bcc hm_02
	inc $01
hm_02	
	dex
	bne hm_04
	rts

