;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OASIS resource data file
;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Common header
#include "..\params.h"
#include "..\object.h"
#include "..\script.h"
#include "..\resource.h"
#include "..\verbs.h"

*=$500

; Resource data
; This could be the costume resources. Jenna and Blake share tile graphics, so...
; They should include: 
; - Resource Type: COSTUME 
; - Resource ID
; - Offset to tile data
; - Offset to mask data
; - Number of costumes (2 in this case)
; 	- pointer to start of animstates for costume 1
;	- pointer to start of animstates for costume 2
;	- ...

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; COSTUME for Guard
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#include "..\characters\Guard\cost_res.s"

