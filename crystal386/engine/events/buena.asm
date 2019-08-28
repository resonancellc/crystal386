SpecialBuenasPassword: ; 8af6b
	xor a
	ld [wWhichIndexSet], a
	ld hl, .MenuDataHeader
	call CopyMenuDataHeader
	ld a, [wBuenasPassword]
	ld c, a
	farcall GetBuenasPassword
	ld a, [wMenuBorderLeftCoord]
	add c
	add $2
	ld [wMenuBorderRightCoord], a
	call PushWindow
	call DoNthMenu ; menu
	farcall Buena_ExitMenu
	ld b, $0
	ld a, [wMenuSelection]
	ld c, a
	ld a, [wBuenasPassword]
	and $3
	cp c
	jr nz, .wrong
	ld b, $1

.wrong
	ld a, b
	ld [wScriptVar], a
	ret
; 8afa9

.MenuDataHeader: ; 0x8afa9
	db $40 ; flags
	db 00, 00 ; start coords
	db 07, 10 ; end coords
	dw .MenuData2
	db 1 ; default option
; 0x8afb1

	db 0

.MenuData2: ; 0x8afb2
	db $81 ; flags
	db 0 ; items
	dw .PasswordIndices
	dw .PlacePasswordChoices
; 0x8afb4

.PasswordIndices: ; 8afb8
	db 3
	db 0, 1, 2
	db -1

.PlacePasswordChoices: ; 8afbd
	push de
	ld a, [wBuenasPassword]
	and $f0
	ld c, a
	ld a, [wMenuSelection]
	add c
	ld c, a
	farcall GetBuenasPassword
	pop hl
	jp PlaceString
; 8afd4
