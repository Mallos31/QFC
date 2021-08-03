; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    jp Jump_00f_412d


    jp Jump_00f_4006


Jump_00f_4006:
    ld hl, $dd00

jr_00f_4009:
    ld a, $00
    ld [hl+], a
    ld a, $df
    cp h
    jr nz, jr_00f_4009

    ld a, $80
    ld [$dd33], a
    ld [$dd45], a
    ld a, $00
    ld [$dd05], a
    ld a, $ff
    ld [$dd00], a
    ld [$dd01], a
    ld a, $77
    ldh [rNR50], a
    ld a, $ff
    ldh [rNR51], a
    ldh [rNR52], a
    ld a, $80
    ldh [rNR30], a
    ld a, $00
    ldh [rNR32], a
    ld a, $84
    ldh [rNR34], a
    ret


Call_00f_403d:
    ld a, [$dd01]
    cp $80
    ret nc

    push af
    ld a, $ff
    ld [$dd01], a
    ld a, $01
    ld [$dd1f], a
    ld a, $00
    ld [$dd1f], a
    pop af
    add a
    add $00
    ld l, a
    ld a, $00
    adc $54
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $04
    ld de, $ddfa
    call Call_00f_40ed
    ld a, $05
    ld de, $de25
    call Call_00f_40ed
    ld a, $06
    ld de, $de50
    call Call_00f_40ed
    ld a, $07
    ld de, $de7b
    call Call_00f_40ed
    ld a, $11
    ld [$dd25], a
    ld a, $22
    ld [$dd26], a
    ld a, $44
    ld [$dd27], a
    ld a, $88
    ld [$dd28], a
    ret


Call_00f_4095:
    ld a, [$dd00]
    cp $80
    ret nc

    push af
    ld a, $ff
    ld [$dd00], a
    ld a, $01
    ld [$dd1d], a
    ld a, $00
    ld [$dd1d], a
    pop af
    add a
    add $00
    ld l, a
    ld a, $00
    adc $54
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $00
    ld de, $dd4e
    call Call_00f_40ed
    ld a, $01
    ld de, $dd79
    call Call_00f_40ed
    ld a, $02
    ld de, $dda4
    call Call_00f_40ed
    ld a, $03
    ld de, $ddcf
    call Call_00f_40ed
    ld a, $11
    ld [$dd21], a
    ld a, $22
    ld [$dd22], a
    ld a, $44
    ld [$dd23], a
    ld a, $88
    ld [$dd24], a
    ret


Call_00f_40ed:
    ld [$dd1b], a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, b
    or c
    jr nz, jr_00f_410f

    inc hl
    push hl
    ld a, [$dd1b]
    add $0d
    ld l, a
    ld a, $00
    adc $dd
    ld h, a
    ld a, $00
    ld [hl], a
    ld c, $00
    call Call_00f_49c2
    pop hl
    ret


jr_00f_410f:
    ld a, [hl+]
    push hl
    push af
    ld h, $00
    ld l, $00
    add hl, de
    ld a, $00
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, [$dd1b]
    add $0d
    ld l, a
    ld a, $00
    adc $dd
    ld h, a
    pop af
    ld [hl], a
    pop hl
    ret


Jump_00f_412d:
    ld a, [$dd02]
    cp $01
    jr nz, jr_00f_4138

    xor a
    ldh [rNR51], a
    ret


jr_00f_4138:
    call Call_00f_4095
    call Call_00f_403d
    ld a, $00
    ld [$dd1b], a
    ld de, $dd4e
    call Call_00f_43b1
    ld a, $01
    ld [$dd1b], a
    ld de, $dd79
    call Call_00f_43b1
    ld a, $02
    ld [$dd1b], a
    ld de, $dda4
    call Call_00f_43b1
    ld a, $03
    ld [$dd1b], a
    ld de, $ddcf
    call Call_00f_43b1
    ld a, $04
    ld [$dd1b], a
    ld de, $ddfa
    call Call_00f_43b1
    ld a, $05
    ld [$dd1b], a
    ld de, $de25
    call Call_00f_43b1
    ld a, $06
    ld [$dd1b], a
    ld de, $de50
    call Call_00f_43b1
    ld a, $07
    ld [$dd1b], a
    ld de, $de7b
    call Call_00f_43b1
    ld a, [$dd02]
    and a
    jr z, jr_00f_41a0

    xor a
    ldh [rNR51], a
    ret


jr_00f_41a0:
    ld a, [$dd0d]
    ld c, a
    ld a, [$dd11]
    cp c
    jr c, jr_00f_41e1

    and a
    jp z, Jump_00f_4212

    ld a, [$dd25]
    ld b, a
    ld a, [$dd3c]
    ldh [rNR10], a
    ld a, [$dd3d]
    ldh [rNR11], a
    ld a, [$dd40]
    and $80
    jr nz, jr_00f_41cb

    ld a, [$dd3c]
    and a
    jr nz, jr_00f_4212

    jr jr_00f_41d0

jr_00f_41cb:
    ld a, [$dd3e]
    ldh [rNR12], a

jr_00f_41d0:
    ld a, [$dd3f]
    ldh [rNR13], a
    ld a, [$dd40]
    ldh [rNR14], a
    and $3f
    ld [$dd40], a
    jr jr_00f_4212

jr_00f_41e1:
    ld a, [$dd21]
    ld b, a
    ld a, [$dd2a]
    ldh [rNR10], a
    ld a, [$dd2b]
    ldh [rNR11], a
    ld a, [$dd2e]
    and $80
    jr nz, jr_00f_41fe

    ld a, [$dd2a]
    and a
    jr nz, jr_00f_4212

    jr jr_00f_4203

jr_00f_41fe:
    ld a, [$dd2c]
    ldh [rNR12], a

jr_00f_4203:
    ld a, [$dd2d]
    ldh [rNR13], a
    ld a, [$dd2e]
    ldh [rNR14], a
    and $3f
    ld [$dd2e], a

Jump_00f_4212:
jr_00f_4212:
    ld a, [$dd05]
    and a
    jr z, jr_00f_424b

    push af
    ld a, [$dd22]
    or $22
    ld b, a
    pop af
    cp $01
    jr nz, jr_00f_4248

    inc a
    ld [$dd05], a
    ld a, [$dd06]
    ldh [rNR21], a
    ld a, [$dd09]
    and $80
    jr z, jr_00f_4239

    ld a, [$dd07]
    ldh [rNR22], a

jr_00f_4239:
    ld a, [$dd08]
    ldh [rNR23], a
    ld a, [$dd09]
    ldh [rNR24], a
    and $3f
    ld [$dd09], a

jr_00f_4248:
    jp Jump_00f_42a5


jr_00f_424b:
    ld a, [$dd0e]
    ld c, a
    ld a, [$dd12]
    cp c
    jr c, jr_00f_4280

    and a
    jp z, Jump_00f_42a5

    ld a, [$dd26]
    or b
    ld b, a
    ld a, [$dd41]
    ldh [rNR21], a
    ld a, [$dd44]
    and $80
    jr z, jr_00f_426f

    ld a, [$dd42]
    ldh [rNR22], a

jr_00f_426f:
    ld a, [$dd43]
    ldh [rNR23], a
    ld a, [$dd44]
    ldh [rNR24], a
    and $3f
    ld [$dd44], a
    jr jr_00f_42a5

jr_00f_4280:
    ld a, [$dd22]
    or b
    ld b, a
    ld a, [$dd2f]
    ldh [rNR21], a
    ld a, [$dd32]
    and $80
    jr z, jr_00f_4296

    ld a, [$dd30]
    ldh [rNR22], a

jr_00f_4296:
    ld a, [$dd31]
    ldh [rNR23], a
    ld a, [$dd32]
    ldh [rNR24], a
    and $3f
    ld [$dd32], a

Jump_00f_42a5:
jr_00f_42a5:
    ld a, [$dd0f]
    ld c, a
    ld a, [$dd13]
    cp c
    jr c, jr_00f_42d2

    and a
    jp z, Jump_00f_4302

    ld de, $dd1d
    ld a, [$dd23]
    or b
    ld b, a
    ld de, $dd1f
    ld a, [de]
    and a
    jr z, jr_00f_42cc

    call Call_00f_438d
    ld a, $01
    ld [$dd1d], a
    ld a, $80

jr_00f_42cc:
    ld c, a
    ld hl, $dd45
    jr jr_00f_42ef

jr_00f_42d2:
    ld de, $dd1d
    ld a, [$dd23]
    or b
    ld b, a
    ld de, $dd1d
    ld a, [de]
    and a
    jr z, jr_00f_42eb

    call Call_00f_438d
    ld a, $01
    ld [$dd1f], a
    ld a, $80

jr_00f_42eb:
    ld c, a
    ld hl, $dd33

jr_00f_42ef:
    ld a, [hl+]
    ldh [rNR30], a
    ld a, [hl+]
    ldh [rNR31], a
    ld a, [hl+]
    ldh [rNR32], a
    ld a, [hl+]
    ldh [rNR33], a
    ld a, [hl]
    or c
    ldh [rNR34], a
    and $7f
    ld [hl], a

Jump_00f_4302:
    ld a, [$dd10]
    ld c, a
    ld a, [$dd14]
    cp c
    jr c, jr_00f_4337

    and a
    jp z, Jump_00f_435c

    ld a, [$dd28]
    or b
    ld b, a
    ld a, [$dd4a]
    ldh [rNR41], a
    ld a, [$dd4d]
    and $80
    jr z, jr_00f_4326

    ld a, [$dd4b]
    ldh [rNR42], a

jr_00f_4326:
    ld a, [$dd4c]
    ldh [rNR43], a
    ld a, [$dd4d]
    ldh [rNR44], a
    and $3f
    ld [$dd4d], a
    jr jr_00f_435c

jr_00f_4337:
    ld a, [$dd24]
    or b
    ld b, a
    ld a, [$dd38]
    ldh [rNR41], a
    ld a, [$dd3b]
    and $80
    jr z, jr_00f_434d

    ld a, [$dd39]
    ldh [rNR42], a

jr_00f_434d:
    ld a, [$dd3a]
    ldh [rNR43], a
    ld a, [$dd3b]
    ldh [rNR44], a
    and $3f
    ld [$dd3b], a

Jump_00f_435c:
jr_00f_435c:
    ld a, b
    ldh [rNR51], a
    ld hl, $dd03
    ld a, [hl]
    and a
    ret z

    ld de, $dd0c
    ld a, [de]
    inc a
    ld [de], a
    cp [hl]
    ret c

    xor a
    ld [de], a
    ldh a, [rNR50]
    sub $11
    jr c, jr_00f_4384

    ldh [rNR50], a
    ret nz

    ld hl, $dd0d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


jr_00f_4384:
    ld a, $33
    ldh [rNR50], a
    xor a
    ld [$dd03], a
    ret


Call_00f_438d:
    push bc
    ld a, $00
    ld [de], a
    inc de
    ld a, [de]
    sla a
    add $00
    ld l, a
    ld a, $00
    adc $4d
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $00
    ldh [rNR30], a
    ld b, $10
    ld de, $ff30

jr_00f_43a9:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00f_43a9

    pop bc
    ret


Call_00f_43b1:
    ld a, [$dd1b]
    add $0d
    ld l, a
    ld a, $00
    adc $dd
    ld h, a
    ld a, [hl]
    and a
    ret z

Jump_00f_43bf:
    ld h, $00
    ld l, $00
    add hl, de
    ld a, [hl]
    add a
    add $d2
    ld l, a
    ld a, $00
    adc $43
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $70, $47, $dc, $43, $bd, $47, $9e, $47, $ae, $47

jr_00f_43dc:
    call Call_00f_43ec
    ld h, $00
    ld l, $00
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_00f_43dc

    jp Jump_00f_43bf


Call_00f_43ec:
    call Call_00f_474a
    ld c, a
    and $f0
    srl a
    srl a
    srl a
    add $15
    ld l, a
    ld a, $00
    adc $44
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, c
    and $0f
    sla a
    add $35
    ld l, a
    ld a, $00
    adc $44
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $90, $45, $90, $45, $e6, $44, $55, $44

    xor d
    ld b, l
    xor d
    ld b, l

    db $b7, $46, $85, $44, $2c, $46

    inc c
    ld b, [hl]

    db $4d, $45, $09, $45

    add hl, bc
    ld b, l

    db $c0, $44

    inc h
    ld b, l

    db $04, $44

    ld h, l
    ld b, l
    ld a, c
    ld b, l
    sbc b
    ld b, h

    db $d1, $45

    ld b, a
    ld b, l
    ld a, [$5b45]
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop

    db $db, $46

    add sp, $46
    inc b
    ld b, a
    ld e, $47
    and d
    ld b, h

    db $eb, $45

    ld a, c
    and $0f
    add $82
    ld l, a
    ld a, $00
    adc $44
    ld h, a
    ld b, [hl]
    ld a, [$dd1b]
    and $03
    add $7e
    ld l, a
    ld a, $00
    adc $44
    ld h, a
    ld a, [hl]
    and b
    ld b, a
    ld a, [$dd1b]
    add $21
    ld l, a
    ld a, $00
    adc $dd
    ld h, a
    ld [hl], b
    ret


    db $11, $22, $44, $88, $ff

    rrca
    db $f0

    ld a, c
    and $0f
    ld c, a
    ld a, $00
    ld b, $14

jr_00f_448d:
    add c
    dec b
    jr nz, jr_00f_448d

    ld h, $00
    ld l, $0c
    add hl, de
    ld [hl], a
    ret


    call Call_00f_474a
    ld h, $00
    ld l, $13
    add hl, de
    ld [hl], a
    ret


    call Call_00f_44af
    ld h, $00
    ld l, $01
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ret


Call_00f_44af:
    ld h, $00
    ld l, $14
    add hl, de
    ld a, [hl]
    inc [hl]
    inc [hl]
    ld h, $00
    ld l, a
    add hl, de
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ret


    ld a, [$dd1b]
    add $de
    ld l, a
    ld a, $00
    adc $44
    ld h, a
    ld a, [hl]
    and a
    jr z, jr_00f_44dd

    add $2a
    ld l, a
    ld a, $00
    adc $dd
    ld h, a
    ld a, c
    and $03
    rrca
    rrca
    ld [hl], a

jr_00f_44dd:
    ret


    db $01, $05

    nop
    nop
    inc de

    db $17

    nop
    nop

    ld a, [$dd1b]
    cp $02
    jp nz, Jump_00f_44fa

    ld a, $01
    ld [$dd1d], a
    ld a, c
    and $0f
    ld [$dd1e], a
    ret


Jump_00f_44fa:
    cp $06
    ret nz

    ld a, $01
    ld [$dd1f], a
    ld a, c
    and $0f
    ld [$dd20], a
    ret


Call_00f_4509:
    ld a, c
    sub $b0
    sla a
    add $00
    ld l, a
    ld a, $00
    adc $4c
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld h, $00
    ld l, $04
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ret


    ld a, c
    and $0f
    sla a
    add $80
    ld l, a
    ld a, $00
    adc $4c
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld h, $00
    ld l, $09
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, $ff
    ld h, $00
    ld l, $07
    add hl, de
    ld [hl], a
    ret


    ld a, $ff
    ld [$dd1c], a
    ret


    ld a, c
    and $0f
    ld c, a
    ld a, $0f
    sub c
    ld h, $00
    ld l, $15
    add hl, de
    ld [hl], a
    ret


    call Call_00f_474a
    ld h, $00
    ld l, $11
    add hl, de
    ld [hl], a
    ret


    call Call_00f_474a
    ld b, a
    ld a, [$dd1b]
    and a
    jr nz, jr_00f_4574

    ld a, b
    ld [$dd2a], a
    ret


jr_00f_4574:
    ld a, b
    ld [$dd3c], a
    ret


Call_00f_4579:
    ld a, $00
    ld h, $00
    ld l, $07
    add hl, de
    ld [hl], a
    ld a, [$dd1b]
    and a
    jr nz, jr_00f_458b

    ld [$dd2a], a
    ret


jr_00f_458b:
    xor a
    ld [$dd3c], a
    ret


    ld a, c
    and $3f
    ld h, $00
    ld l, $0c
    add hl, de
    add [hl]
    ld hl, $4a57
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld h, $00
    ld l, $16
    add hl, de
    ld [hl], a
    ret


    ld a, c
    and $3f
    ld h, $00
    ld l, $0c
    add hl, de
    add [hl]
    ld hl, $4a57
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld h, $00
    ld l, $17
    add hl, de
    ld [hl], a
    ld c, $00
    call Call_00f_49c2
    ld a, $03
    ld h, $00
    ld l, $00
    add hl, de
    ld [hl], a
    ret


    ld h, $00
    ld l, $16
    add hl, de
    ld a, [hl]
    ld h, $00
    ld l, $17
    add hl, de
    ld [hl], a
    ld c, $00
    call Call_00f_49c2
    ld a, $03
    ld h, $00
    ld l, $00
    add hl, de
    ld [hl], a
    ret


    ld c, $00
    call Call_00f_49c2
    ld a, $04
    ld h, $00
    ld l, $00
    add hl, de
    ld [hl], a
    pop af
    ret


    ld h, $00
    ld l, $16
    add hl, de
    ld a, [hl]
    ld h, $00
    ld l, $17
    add hl, de
    ld [hl], a
    call Call_00f_475a
    jp Jump_00f_466a


    push bc
    call Call_00f_474a
    and $3f
    ld h, $00
    ld l, $0c
    add hl, de
    add [hl]
    ld hl, $4a57
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld h, $00
    ld l, $17
    add hl, de
    ld [hl], a
    pop bc
    jp Jump_00f_4638


    ld h, $00
    ld l, $16
    add hl, de
    ld a, [hl]
    ld h, $00
    ld l, $17
    add hl, de
    ld [hl], a

Jump_00f_4638:
    ld a, [$dd1b]
    cp $03
    jr z, jr_00f_4643

    cp $07
    jr nz, jr_00f_4653

jr_00f_4643:
    ld a, c
    swap a
    and $f0
    ld h, $00
    ld l, $12
    add hl, de
    or [hl]
    ld c, a
    ld b, $00
    jr jr_00f_467a

jr_00f_4653:
    ld a, c
    and $0f
    dec a
    ld c, a
    ld h, $00
    ld l, $12
    add hl, de
    ld a, [hl]
    add c
    ld c, a
    ld h, $00
    ld l, $11
    add hl, de
    ld a, [hl]
    add c
    call Call_00f_490c

Jump_00f_466a:
    ld h, $00
    ld l, $13
    add hl, de
    ld a, [hl]
    ld l, a
    rlca
    ld a, $00
    sbc $00
    ld h, a
    add hl, bc
    ld b, h
    ld c, l

jr_00f_467a:
    ld h, $00
    ld l, $0f
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, [$dd1c]
    and a
    jr nz, jr_00f_46a9

    ld a, $00
    ld h, $00
    ld l, $03
    add hl, de
    ld [hl], a
    ld a, $00
    ld h, $00
    ld l, $06
    add hl, de
    ld [hl], a
    ld a, $00
    ld h, $00
    ld l, $08
    add hl, de
    ld [hl], a
    ld a, $00
    ld h, $00
    ld l, $0b
    add hl, de
    ld [hl], a

jr_00f_46a9:
    ld a, $00
    ld [$dd1c], a
    ld a, $02
    ld h, $00
    ld l, $00
    add hl, de
    ld [hl], a
    ret


Call_00f_46b7:
    ld a, [$dd1b]
    cp $03
    jr z, jr_00f_46c2

    cp $07
    jr nz, jr_00f_46c7

jr_00f_46c2:
    ld a, c
    and $0f
    jr jr_00f_46d4

jr_00f_46c7:
    ld a, c
    and $0f
    jr z, jr_00f_46d4

    ld b, a
    ld a, $00

jr_00f_46cf:
    add $0c
    dec b
    jr nz, jr_00f_46cf

jr_00f_46d4:
    ld h, $00
    ld l, $12
    add hl, de
    ld [hl], a
    ret


    call Call_00f_475a
    ld h, $00
    ld l, $01
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ret


    call Call_00f_474a
    ld h, $00
    ld l, $18
    add hl, de
    ld [hl], a
    ld h, $00
    ld l, $01
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld h, $00
    ld l, $19
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ret


    ld h, $00
    ld l, $18
    add hl, de
    dec [hl]
    ret z

    ld h, $00
    ld l, $19
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld h, $00
    ld l, $01
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ret


    call Call_00f_475a
    push bc
    ld h, $00
    ld l, $01
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_00f_4739
    pop bc
    ld h, $00
    ld l, $01
    add hl, de
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ret


Call_00f_4739:
    ld h, $00
    ld l, $14
    add hl, de
    ld a, [hl]
    dec [hl]
    dec [hl]
    ld h, $00
    ld l, a
    add hl, de
    ld a, b
    ld [hl-], a
    ld a, c
    ld [hl-], a
    ret


Call_00f_474a:
    ld h, $00
    ld l, $01
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [bc]
    inc bc
    dec hl
    ld [hl], b
    dec hl
    ld [hl], c
    ret


Call_00f_475a:
    push de
    ld h, $00
    ld l, $01
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    pop de
    ret


    ld h, $00
    ld l, $14
    add hl, de
    ld a, $2a
    ld [hl], a
    xor a
    ld h, $00
    ld l, $15
    add hl, de
    ld [hl], a
    call Call_00f_4579
    ld h, $00
    ld l, $11
    add hl, de
    xor a
    ld [hl], a
    ld c, $02
    call Call_00f_46b7
    ld c, $00
    call Call_00f_4509
    ld a, $01
    ld h, $00
    ld l, $00
    add hl, de
    ld [hl], a
    jp Jump_00f_43bf


Call_00f_479e:
    ld h, $00
    ld l, $17
    add hl, de
    dec [hl]
    ret nz

    ld h, $00
    ld l, $00
    add hl, de
    ld a, $01
    ld [hl], a
    ret


    ld a, [$dd1b]
    add $0d
    ld l, a
    ld a, $00
    adc $dd
    ld h, a
    ld a, $00
    ld [hl], a
    ret


    call Call_00f_4857
    cp $ff
    jr z, jr_00f_47e8

    ld h, $00
    ld l, $15
    add hl, de
    push af
    and $0f
    ld c, a
    pop af
    srl a
    srl a
    srl a
    srl a
    sub [hl]
    jr nc, jr_00f_47db

    ld a, $00

jr_00f_47db:
    sla a
    sla a
    sla a
    sla a
    or c
    ld c, a
    call Call_00f_49c2

jr_00f_47e8:
    call Call_00f_47ef
    call Call_00f_479e
    ret


Call_00f_47ef:
    ld h, $00
    ld l, $0f
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    call Call_00f_4802
    cp $ff
    ret z

    call Call_00f_4897
    ret


Call_00f_4802:
    ld h, $00
    ld l, $07
    add hl, de
    ld a, [hl]
    and a
    ret z

    ld h, $00
    ld l, $0b
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_00f_4817

    dec [hl]
    ld a, $ff
    ret


Jump_00f_4817:
jr_00f_4817:
    ld h, $00
    ld l, $08
    add hl, de
    ld a, [hl]
    inc [hl]
    inc [hl]
    push af
    ld h, $00
    ld l, $09
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_00f_484b

    ld h, $00
    ld l, $0b
    add hl, de
    ld [hl], a
    pop af
    ld l, a
    ld h, $00
    cp $80
    jr c, jr_00f_4847

    ld h, $ff

jr_00f_4847:
    add hl, bc
    ld b, h
    ld c, l
    ret


jr_00f_484b:
    pop af
    ld a, $00
    ld h, $00
    ld l, $08
    add hl, de
    ld [hl], a
    jp Jump_00f_4817


Call_00f_4857:
    ld h, $00
    ld l, $06
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_00f_4864

    dec [hl]
    ld a, $ff
    ret


Jump_00f_4864:
jr_00f_4864:
    ld h, $00
    ld l, $03
    add hl, de
    ld a, [hl]
    inc [hl]
    inc [hl]
    push af
    ld h, $00
    ld l, $04
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_00f_488c

    push af
    inc hl
    ld a, [hl]
    ld h, $00
    ld l, $06
    add hl, de
    ld [hl], a
    pop af
    ret


jr_00f_488c:
    ld a, $00
    ld h, $00
    ld l, $03
    add hl, de
    ld [hl], a
    jp Jump_00f_4864


Call_00f_4897:
    ld hl, $48a8
    ld a, [$dd1b]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $b8, $48, $c6, $48, $d4, $48, $dd, $48

    ld [c], a
    ld c, b

    db $f0, $48

    cp $48
    rlca
    ld c, c

    ld a, c
    ld [$dd2d], a
    ld a, [$dd2e]
    and $c0
    or b
    ld [$dd2e], a
    ret


    ld a, c
    ld [$dd31], a
    ld a, [$dd32]
    and $c0
    or b
    ld [$dd32], a
    ret


    ld a, c
    ld [$dd36], a
    ld a, b
    ld [$dd37], a
    ret


    ld a, c
    ld [$dd3a], a
    ret


    ld a, c
    ld [$dd3f], a
    ld a, [$dd40]
    and $c0
    or b
    ld [$dd40], a
    ret


    ld a, c
    ld [$dd43], a
    ld a, [$dd44]
    and $c0
    or b
    ld [$dd44], a
    ret


    ld a, c
    ld [$dd48], a
    ld a, b
    ld [$dd49], a
    ret


    ld a, c
    ld [$dd4c], a
    ret


Call_00f_490c:
    add a
    ld hl, $4902
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ret


    db $2c, $00, $9d, $00, $07, $01, $6b, $01, $c9, $01, $23, $02

    ld [hl], a
    ld [bc], a

    db $c7, $02

    ld [de], a
    inc bc

    db $58, $03, $9b, $03, $da, $03, $16, $04, $4e, $04, $83, $04, $b5, $04, $e5, $04
    db $11, $05, $3b, $05, $63, $05, $89, $05, $ac, $05, $ce, $05, $ed, $05, $0b, $06
    db $27, $06, $42, $06, $5b, $06, $72, $06, $89, $06, $9e, $06, $b2, $06, $c4, $06
    db $d6, $06, $e7, $06, $f7, $06, $06, $07, $14, $07, $21, $07, $2d, $07, $39, $07
    db $44, $07, $4f, $07, $59, $07, $62, $07, $6b, $07, $73, $07, $7b, $07, $83, $07
    db $8a, $07, $90, $07, $97, $07, $9d, $07, $a2, $07, $a7, $07, $ac, $07, $b1, $07
    db $b6, $07, $ba, $07, $be, $07

    pop bc
    rlca
    push bc
    rlca
    ret z

    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst $18
    rlca
    pop hl
    rlca
    ld [c], a
    rlca
    db $e4
    rlca
    and $07
    rst $20
    rlca
    jp hl


    rlca
    ld [$eb07], a
    rlca
    db $ec
    rlca
    db $ed
    rlca
    xor $07
    rst $28
    rlca

Call_00f_49c2:
    ld a, [$dd1b]
    add a
    add $d3
    ld l, a
    ld a, $00
    adc $49
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    jp hl


    db $e3, $49, $ee, $49, $f9, $49, $08, $4a, $13, $4a, $1e, $4a, $29, $4a, $38, $4a

    ld [$dd2c], a
    ld hl, $dd2e
    ld a, [hl]
    or $80
    ld [hl], a
    ret


    ld [$dd30], a
    ld hl, $dd32
    ld a, [hl]
    or $80
    ld [hl], a
    ret


    call Call_00f_4a43
    ld a, c
    ld [$dd35], a
    ld hl, $dd37
    ld a, [hl]
    or $80
    ld [hl], a
    ret


    ld [$dd39], a
    ld hl, $dd3b
    ld a, [hl]
    or $80
    ld [hl], a
    ret


    ld [$dd3e], a
    ld hl, $dd40
    ld a, [hl]
    or $80
    ld [hl], a
    ret


    ld [$dd42], a
    ld hl, $dd44
    ld a, [hl]
    or $80
    ld [hl], a
    ret


    call Call_00f_4a43
    ld a, c
    ld [$dd47], a
    ld hl, $dd49
    ld a, [hl]
    or $80
    ld [hl], a
    ret


    ld [$dd4b], a
    ld hl, $dd4d
    ld a, [hl]
    or $80
    ld [hl], a
    ret


Call_00f_4a43:
    and $c0
    ld c, $00
    cp $00
    ret z

    ld c, $60
    cp $40
    ret z

    ld c, $40
    cp $80
    ret z

    ld c, $20
    ret


    ret nz

    xor b
    sub b
    ld h, b
    ld d, h
    ld c, b
    jr nc, @+$22

    ld a, [hl+]
    inc h
    jr jr_00f_4a73

    dec d
    ld [de], a
    inc c
    ld [$0609], sp
    inc bc
    ld [bc], a
    or b
    sbc d
    add h
    ld e, b
    ld c, l
    ld b, d
    inc l
    dec e

jr_00f_4a73:
    ld h, $21
    ld d, $0e
    inc de
    db $10
    dec bc
    rlca
    ld [$0205], sp
    ld bc, $8ca0
    ld a, b
    ld d, b
    ld b, [hl]
    inc a
    jr z, jr_00f_4aa1

    inc hl
    ld e, $14
    dec c
    ld de, $0a0f
    ld b, $07
    dec b
    ld [bc], a
    ld bc, $7e90
    ld l, h
    ld c, b
    ccf
    ld [hl], $24
    jr @+$21

    dec de
    ld [de], a
    inc c
    rrca
    dec c

jr_00f_4aa1:
    add hl, bc
    ld b, $06
    inc b
    ld [bc], a
    db $01

    db $80

    ld [hl], b
    ld h, b

    db $40

    jr c, @+$32

    db $20

    dec d
    inc e
    jr jr_00f_4ac2

    ld a, [bc]
    ld c, $0c
    ld [$0605], sp
    inc b
    ld [bc], a
    db $01

    db $70

    ld h, d

    db $54, $38

    db $31

    db $2a, $1c

jr_00f_4ac2:
    ld [de], a
    db $18

    db $15, $0e

    add hl, bc
    inc c
    ld a, [bc]

    db $07

    inc b
    dec b
    inc bc
    ld bc, $6001
    ld d, h
    ld c, b
    jr nc, jr_00f_4afe

    inc h

    db $18

    db $10
    dec d
    ld [de], a

    db $0c

jr_00f_4ada:
    ld [$090a], sp

    db $06

    inc b
    inc b
    inc bc
    ld bc, $5001
    ld b, [hl]
    inc a
    jr z, @+$25

    ld e, $14
    dec c
    ld de, $0a0f
    ld b, $08
    rlca
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $4000
    jr c, @+$32

    jr nz, jr_00f_4b18

    db $18

    db $10

jr_00f_4afe:
    ld a, [bc]
    ld c, $0c

    db $08

    dec b
    rlca
    ld b, $04
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $3000
    ld a, [hl+]
    inc h
    jr jr_00f_4b25

    ld [de], a
    inc c
    ld [$090a], sp
    ld b, $04
    dec b

jr_00f_4b18:
    inc b
    inc bc
    ld [bc], a
    ld [bc], a

    db $01

    nop
    nop
    jr nz, jr_00f_4b3d

    jr jr_00f_4b33

    ld c, $0c

jr_00f_4b25:
    ld [$0705], sp
    ld b, $04

    db $02

    inc bc
    inc bc

    db $02

    db $01
    db $01

    db $01

    nop
    nop

jr_00f_4b33:
    db $10
    ld c, $0c
    ld [$0607], sp

    db $04

    ld [bc], a
    inc bc
    inc bc

jr_00f_4b3d:
    ld [bc], a
    ld bc, $0101

    db $01

    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

    db $1e, $4d, $22, $4d

    ld h, $4d
    dec hl
    ld c, l

    db $2e, $4d

    ld [hl-], a
    ld c, l
    ld [hl], $4d
    ld a, [hl-]
    ld c, l

    db $3e, $4d

    ld b, d
    ld c, l
    ld b, [hl]
    ld c, l
    ld c, [hl]
    ld c, l
    ld d, d
    ld c, l
    ld e, b
    ld c, l

    db $5c, $4d

    ld h, b
    ld c, l
    ld h, h
    ld c, l
    ld l, b
    ld c, l
    ld l, h
    ld c, l
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    ld e, $4d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    ld c, l
    ld [hl], e
    ld c, l
    ld a, h
    ld c, l
    add l
    ld c, l
    add l
    ld c, l
    add l
    ld c, l
    add l
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l

    db $ff, $ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    ld c, l
    xor c
    ld c, l

    db $b9, $4d

    ret


    ld c, l

    db $d9, $4d

    jp hl


    ld c, l
    ld sp, hl
    ld c, l
    add hl, bc
    ld c, [hl]
    add l
    ld c, l
    add l
    ld c, l
    add l
    ld c, l
    add l
    ld c, l
    add l
    ld c, l
    add l
    ld c, l
    add l
    ld c, l

    db $f0, $ff

    nop
    rst $38

    db $f7, $ff

    nop
    rst $38
    add hl, bc
    rrca
    ldh a, [rIE]
    rst $38
    jr nz, @+$01

    rst $38

    db $f1, $0f

    nop
    rst $38
    di
    jr nc, jr_00f_4d35

jr_00f_4d35:
    rst $38
    di
    ld b, $f0
    rst $38
    pop af
    dec b
    nop
    rst $38

    db $a1, $06

    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ldh a, [$03]
    adc b
    ld [$fff0], sp
    nop
    rst $38
    sub a
    rst $38
    nop
    rst $38
    add hl, bc
    add hl, bc
    sub b
    rst $38
    nop
    rst $38
    sub c
    rlca
    nop
    rst $38

    db $f1, $04, $00, $ff

    pop af
    inc b
    jr nz, @+$01

    pop af
    inc b
    ld b, b
    rst $38
    pop af
    inc b
    ld h, b
    rst $38
    pop af
    inc b
    add b
    rst $38
    ld bc, $ff00
    nop
    ld bc, HeaderLogo
    nop
    ld bc, $01fc
    rst $38
    nop
    ld bc, $0103
    nop
    ld bc, $01fd
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4523
    ld h, a
    adc c
    xor e
    call $edef
    res 5, c
    add a
    ld h, l
    ld b, e
    ld hl, $0100
    inc hl
    ld b, l
    ld h, a
    adc c
    xor e
    call $ffef
    rst $38
    rst $38
    rst $38
    cp $dc
    db $da
    sbc b

    db $01, $70, $13, $57, $9b, $df, $fb, $73, $03, $7b, $fd, $89, $75, $31, $00, $00

    nop
    ld bc, $3512
    adc d
    call $ffee
    rst $38
    cp $ed
    jp z, Jump_000_3285

    db $11
    nop

    db $01, $23, $56, $78, $99, $98, $76, $67, $9a, $df, $fe, $c9, $85, $42, $11, $00

    ld [de], a
    inc hl
    inc hl
    ld d, l
    ld h, a
    ld a, b
    adc c
    xor e
    cp d
    sbc b
    add a
    db $76
    ld d, l
    ld b, e
    ld [hl-], a
    ld hl, $ffff
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

    db $40, $54

    ld c, l
    ld d, h
    dec h
    ld e, b

    db $c2, $5b, $0a, $5e

    db $d3
    ld h, [hl]

    db $40, $67

    ldh [rBCPS], a

    db $5d, $6a, $91, $6a, $c9, $6a

    jr jr_00f_5483

    db $57, $6b

    xor c
    ld l, e
    ld a, h
    ld l, h

    db $7b, $70, $b0, $70, $db, $70

    dec b
    ld [hl], c

    db $2e, $71, $83, $71, $df, $71, $0c, $72

    ld b, h
    ld [hl], d
    add a
    ld [hl], d

    db $da, $72, $1b, $73

    ld [hl], d
    ld [hl], e
    cp $73
    dec sp
    ld [hl], h
    ld a, h
    ld [hl], h
    and l
    ld [hl], h

    db $4c, $54, $ff, $4c, $54, $ff, $4c, $54, $ff, $4c, $54, $ff, $ff

    ld e, c
    ld d, h
    add b
    jp $8054


    ld [hl], b
    ld d, l
    add b
    or e
    ld d, [hl]
    add b
    db $76
    or c
    xor [hl]
    pop de
    jr nc, jr_00f_545f

jr_00f_545f:
    di
    di
    di
    di
    di
    di
    di
    di
    xor [hl]
    ld h, h
    ld [bc], a
    add h
    ld a, [bc]
    adc b
    add [hl]
    inc bc
    adc c
    adc b
    ld b, $f3
    ld h, l
    add c
    dec b
    add e
    ld a, [bc]
    add h
    ld h, h
    ld b, $8b
    adc b
    add e
    ld a, [bc]
    add h
    add [hl]
    ld h, h
    ld [bc], a

jr_00f_5483:
    add h
    ld a, [bc]
    adc b
    add [hl]
    inc bc
    adc c
    adc b
    ld b, $65
    add c
    ld h, h
    adc e
    adc e
    adc c
    adc c
    adc b
    adc b
    add [hl]
    ld h, h
    ld [bc], a
    add h
    ld a, [bc]
    adc b
    add [hl]
    inc bc
    adc c
    adc b
    ld b, $f3
    ld h, l
    add c
    dec b
    add e
    ld a, [bc]
    add h
    ld h, l
    ld b, $88
    add [hl]
    add h
    add e
    ld [bc], a
    ld h, l
    add c
    ld a, [bc]
    add e
    add h
    ld b, $64
    adc e
    adc b
    add h
    add [hl]
    nop
    ld h, h
    add h
    nop
    di
    di
    di
    ld a, [$5463]
    rst $38
    db $76
    or c
    xor l
    jp nc, $6330

    ld b, $89
    ld h, h
    add h
    add e
    add h
    ld h, e
    adc e
    ld h, h
    add h
    add e
    add h
    ld h, h
    add c
    add h
    add e
    add h
    ld h, h
    adc b
    add [hl]
    add h
    add e
    ld h, e
    adc c
    ld h, h
    add h
    add e
    add h
    ld h, e
    adc e
    ld h, h
    add h
    add e
    add h
    ld h, h
    add c
    add h
    add e
    add h
    ld h, h
    adc b
    add [hl]
    add h
    add e
    ld h, e
    ld b, $84
    add e
    add c
    add h
    ld h, d
    adc e
    adc c
    adc b
    adc e
    adc c
    adc b
    add [hl]
    add h
    add e
    add h
    add [hl]
    ld h, c
    adc e
    ld h, e
    ld b, $84
    add e
    add c
    add h
    ld h, d
    adc e
    adc c
    adc b
    adc e
    adc c
    adc b
    add [hl]
    add h
    ld b, $83
    add h
    ld c, $62
    add e
    add h
    add [hl]
    adc b
    adc c
    adc e
    ld h, e
    add c
    add e
    ld h, e
    ld b, $84
    add e
    add c
    add h
    ld h, d
    ld b, $8b
    adc c
    adc b
    adc e
    ld b, $62
    adc c
    ld h, e
    add c
    ld h, d
    adc c
    ld h, e
    add c
    ld b, $62
    adc b
    ld h, e
    add c
    ld h, d
    add a
    ld h, e
    add c
    ld b, $62
    add [hl]
    ld h, e
    add c
    add h
    add c
    ld b, $62
    adc b
    adc e
    ld h, e
    add h
    add e
    ld b, $62
    adc c
    ld h, e
    add h
    add e
    add h
    ld b, $62
    adc e
    ld h, e
    add h
    add e
    add h
    ld b, $63
    add c
    add h
    add e
    add h
    ld b, $63
    adc b
    add [hl]
    add h
    add e
    ld a, [$54df]
    rst $38
    db $76
    or c
    ld [hl+], a
    xor [hl]
    jr nc, jr_00f_5580

    ld h, c
    adc c
    ld c, $f3
    adc c
    di
    di
    ld b, $89
    ld a, [bc]

jr_00f_5580:
    adc b
    ld b, $89
    ld a, [bc]
    ld h, c
    adc e
    ld c, $f3
    adc e
    di
    di
    ld b, $8b
    ld a, [bc]
    adc d
    ld b, $8b
    ld a, [bc]
    ld h, d
    add c
    ld c, $f3
    add c
    di
    di
    ld b, $81
    ld h, c
    ld a, [bc]
    adc e
    ld b, $62
    add c
    ld b, $62
    add e
    add e
    add h
    add h
    ld a, [bc]
    ld h, c
    adc c
    ld c, $f3
    adc c
    di
    di
    ld b, $89
    ld a, [bc]
    adc b
    ld b, $89
    ld a, [bc]
    ld h, c
    adc e
    ld c, $f3
    adc e
    di
    di
    ld b, $8b
    ld a, [bc]
    adc d
    ld b, $8b
    ld a, [bc]
    ld h, d
    add c
    ld c, $f3
    add c
    di
    di
    ld b, $81
    ld h, c
    ld a, [bc]
    adc e
    ld b, $62
    add c
    ld b, $62
    add e
    add e
    add h
    add h
    ld a, [bc]
    ld h, c
    adc c
    ld c, $f3
    adc c
    di
    di
    ld b, $89
    ld a, [bc]
    adc b
    ld b, $89
    ld a, [bc]
    ld h, c
    adc e
    ld c, $f3
    adc e
    di
    di
    ld b, $8b
    ld a, [bc]
    adc d
    ld b, $8b
    ld a, [bc]
    ld h, c
    adc c
    ld c, $f3
    adc c
    di
    di
    ld b, $89
    ld a, [bc]
    adc b
    ld b, $89
    ld a, [bc]
    ld h, c
    adc e
    ld c, $f3
    adc e
    di
    di
    adc e
    di
    ld a, [bc]
    ld h, c
    adc e
    ld c, $f3
    adc e
    di
    di
    adc e
    di
    dec b
    ld h, d
    add h
    adc b
    ld b, $84
    dec b
    ld h, c
    adc e
    ld h, d
    add h
    ld b, $61
    adc e
    ld b, $62
    adc c
    adc b
    add [hl]
    add h
    ld b, $62
    add e
    add h
    add [hl]
    ld h, c
    adc e
    ld a, [bc]
    ld h, c
    adc c
    ld c, $f3
    adc c
    di
    di
    ld b, $89
    ld a, [bc]
    adc b
    ld b, $89
    ld a, [bc]
    ld h, c
    adc e
    ld c, $f3
    adc e
    di
    di
    ld b, $8b
    ld a, [bc]
    adc d
    ld b, $8b
    ld a, [bc]
    ld h, c
    adc c
    ld c, $f3
    adc c
    di
    di
    ld b, $89
    ld a, [bc]
    adc b
    ld b, $89
    ld b, $61
    adc b
    adc b
    add a
    add a
    ld a, [bc]
    ld h, c
    add [hl]
    ld c, $f3
    add [hl]
    di
    di
    ld b, $86
    ld a, [bc]
    add l
    ld b, $86
    ld a, [bc]
    ld h, c
    adc b
    ld c, $f3
    adc b
    di
    di
    ld a, [bc]
    adc b
    ld b, $89
    adc e
    ld a, [bc]
    ld h, c
    adc c
    ld c, $f3
    adc c
    di
    di
    ld b, $89
    ld a, [bc]
    adc b
    ld b, $89
    ld a, [bc]
    ld h, c
    adc e
    ld c, $f3
    adc e
    di
    di
    ld b, $8b
    ld a, [bc]
    adc d
    ld b, $8b
    ld a, [bc]
    ld h, d
    add c
    ld c, $f3
    add c
    di
    di
    ld b, $81
    ld h, c
    ld a, [bc]
    adc e
    ld b, $62
    add c
    ld b, $62
    add e
    add e
    add h
    add h
    ld a, [$55a7]
    rst $38
    db $76
    ld a, [bc]
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    cp b
    xor e
    add e
    add c
    or h
    xor e
    add e
    di
    cp b
    xor e
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    or h
    xor e
    add e
    di
    cp b
    xor e
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    or h
    xor e
    add e
    di
    cp b
    xor e
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    or h
    xor e
    add e
    di
    cp b
    xor e
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    or h
    xor e
    add e
    di
    cp b
    xor e
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    cp b
    xor e
    add e
    add c
    or h
    xor e
    add e
    di
    cp b
    xor e
    add c
    add e
    or h
    xor e
    add e
    cp b
    xor e
    add c
    ld a, [$56b3]
    rst $38
    ld sp, $8058
    sub $58
    add b
    db $e3
    ld e, c
    add b
    xor l
    ld e, e
    add b
    db $76
    or b
    xor [hl]
    ret nc

    jr nc, jr_00f_5837

jr_00f_5837:
    di
    ld h, h
    nop
    add l
    add e
    ld [bc], a
    add c
    ld c, $f3
    di
    ld h, l
    add c
    ld h, h
    adc e
    ld h, h
    nop
    adc d
    ld b, $f3
    adc d
    adc b
    adc d
    dec b
    adc e
    ld a, [bc]
    ld h, l
    add c
    nop
    add e
    ld b, $f3
    ld c, $f3
    di
    add c
    ld h, h
    adc e
    nop
    ld h, h
    adc d
    ld b, $f3
    ld h, h
    adc d
    adc b
    adc d
    ld h, h
    dec b
    add [hl]
    ld a, [bc]
    add l
    nop
    add [hl]
    ld a, [bc]
    add [hl]
    adc b
    adc d
    adc e
    ld [bc], a
    ld h, h
    adc d
    ld b, $65
    add c
    ld h, l
    ld [bc], a
    adc b
    ld b, $86
    dec b
    ld h, l
    add l
    ld a, [bc]
    add [hl]
    nop
    add e
    ld b, $f3
    di
    ld b, $f3
    inc bc
    ld h, h
    adc d
    ld b, $65
    add c
    ld [bc], a
    ld h, l
    adc b
    ld b, $86
    dec b
    ld h, l
    add l
    ld c, $86
    add l
    nop
    add e
    ld b, $f3
    di
    ld b, $f3
    ld h, l
    ld a, [bc]
    add c
    add e
    dec b
    add l
    ld a, [bc]
    add e
    dec b
    ld h, l
    add [hl]
    ld a, [bc]
    add l
    dec b
    adc b
    ld c, $8a
    adc b
    ld [bc], a
    ld h, l
    add [hl]
    ld a, [bc]
    add l
    add e
    nop
    ld h, l
    add c
    ld b, $f3
    ld h, l
    ld a, [bc]
    add c
    add e
    dec b
    add l
    ld a, [bc]
    add e
    dec b
    add [hl]
    ld a, [bc]
    add l
    dec b
    adc b
    ld c, $8a
    adc b
    nop
    ld h, l
    add [hl]
    di
    ld a, [$5832]
    rst $38
    db $76
    or b
    xor d
    pop de
    jr nc, jr_00f_58dc

jr_00f_58dc:
    ld h, e
    adc d
    adc d
    adc d
    ld c, $66
    add c
    ld h, l
    adc e
    adc d
    adc b
    add [hl]
    add l
    add e
    add c
    ld h, h
    adc e
    adc d
    adc b
    add [hl]
    add l
    add e
    add c
    ld h, e
    adc e
    ld h, e
    ld a, [bc]
    add [hl]
    add l
    add [hl]
    add c
    di
    ld b, $86
    ld a, [bc]
    add l
    ld a, [bc]
    add [hl]
    add c
    di
    add c
    add l
    add [hl]
    adc b
    add c
    ld a, [bc]
    ld h, e
    add [hl]
    add l
    add [hl]
    add l
    di
    di
    add l
    ld b, $86
    ld a, [bc]
    ld h, e
    add e
    add [hl]
    add l
    add e
    add l
    add [hl]
    adc b
    add [hl]
    add l
    add [hl]
    add c
    di
    ld b, $86
    ld a, [bc]
    add l
    ld a, [bc]
    ld h, e
    add [hl]
    add c
    di
    add c
    add l
    add [hl]
    adc b
    add c
    ld h, d
    ld a, [bc]
    adc e
    adc d
    adc e
    add [hl]
    di
    ld b, $8b
    ld a, [bc]
    adc d
    ld a, [bc]
    ld h, d
    adc e
    add [hl]
    di
    add [hl]
    adc d
    adc e
    adc d
    add [hl]
    ld h, e
    ld a, [bc]
    add [hl]
    add l
    add [hl]
    add c
    di
    ld b, $86
    ld a, [bc]
    add l
    ld a, [bc]
    ld h, e
    add [hl]
    add c
    di
    add c
    add l
    add [hl]
    adc b
    add c
    ld h, d
    ld a, [bc]
    adc e
    adc d
    adc e
    add [hl]
    di
    ld b, $8b
    ld a, [bc]
    adc d
    ld h, d
    ld a, [bc]
    adc e
    add [hl]
    di
    add [hl]
    adc d
    adc e
    adc d
    add [hl]
    ld h, e
    ld a, [bc]
    add [hl]
    add l
    add [hl]
    add c
    di
    ld b, $86
    ld a, [bc]
    add l
    ld a, [bc]
    ld h, e
    add [hl]
    add c
    di
    add c
    add l
    add [hl]
    adc b
    add c
    ld h, d
    ld a, [bc]
    adc e
    adc d
    adc e
    add [hl]
    di
    ld b, $8b
    ld a, [bc]
    adc d
    ld h, d
    ld a, [bc]
    adc e
    add [hl]
    di
    add [hl]
    adc d
    adc e
    adc d
    add [hl]
    ld h, h
    ld b, $f3
    ld a, [bc]
    add l
    di
    add l
    di
    add l
    di
    ld h, h
    ld a, [bc]
    add e
    di
    add e
    di
    add e
    di
    add e
    di
    ld h, h
    ld a, [bc]
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add l
    di
    add l
    di
    add l
    di
    add l
    di
    add e
    di
    add e
    di
    add e
    di
    add e
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    ld a, [$58d7]
    rst $38
    db $76
    or c
    ld [hl+], a
    xor [hl]
    jr nc, jr_00f_5a4a

    ld a, [bc]
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    ld a, [bc]
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    ld a, [bc]
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    ld a, [bc]
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    ld a, [bc]
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    ld a, [bc]
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c

jr_00f_5a4a:
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    ld a, [bc]
    add [hl]
    adc e
    add [hl]
    adc e
    add [hl]
    adc e
    add [hl]
    adc e
    ld h, c
    ld a, [bc]
    add [hl]
    adc e
    add [hl]
    adc e
    add [hl]
    adc e
    add [hl]
    adc e
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld h, c
    add [hl]
    ld h, d
    add [hl]
    ld a, [bc]
    ld h, d
    add c
    ld h, c
    adc b
    ld h, d
    ld a, [bc]
    add c
    ld c, $f3
    add c
    ld a, [bc]
    ld h, d
    add c
    ld h, c
    adc b
    ld h, d
    add c
    ld h, c
    adc b
    ld a, [bc]
    ld h, c
    adc e
    add [hl]
    ld a, [bc]
    adc e
    ld c, $f3
    adc e
    ld a, [bc]
    adc e
    add [hl]
    adc e
    add l
    ld h, c
    ld a, [bc]
    add [hl]
    add [hl]
    adc d
    adc d
    adc e
    adc e
    ld h, d
    add [hl]
    add [hl]
    ld h, c
    ld a, [bc]
    add [hl]
    add [hl]
    adc d
    adc d
    adc e
    adc e
    ld h, d
    add [hl]
    add [hl]
    ld a, [bc]
    ld h, d
    add c
    ld h, c
    adc b
    ld h, d
    ld a, [bc]
    add c
    ld c, $f3
    add c
    ld a, [bc]
    ld h, d
    add c
    ld h, c
    adc b
    ld h, d
    add c
    ld h, c
    adc b
    ld a, [bc]
    ld h, c
    adc e
    add [hl]
    add hl, bc
    adc e
    ld c, $8b
    ld a, [bc]
    adc e
    add [hl]
    adc e
    add l
    ld h, c
    ld a, [bc]
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    ld a, [bc]
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld h, c
    add [hl]
    ld h, d
    add c
    ld a, [$59e8]
    rst $38
    db $76
    jr nc, jr_00f_5bbe

    cp b
    xor d
    add e
    di
    add c
    add c
    or h
    xor b
    add c
    di
    cp b
    xor d
    add c
    add c

jr_00f_5bbe:
    ld a, [$5baf]
    rst $38

    db $ce, $5b, $80, $49, $5c, $80, $6e, $5d, $80, $eb, $5d, $80, $75, $b0, $ae, $d1
    db $30, $03, $63, $8c, $64, $83, $64, $03, $81, $63, $8a, $03, $63, $8c, $64, $83
    db $03, $64, $81, $06, $63, $8c, $8a, $64, $06, $f3, $88, $87, $85, $83, $03, $8c
    db $0a, $f3, $8c, $65, $03, $81, $0a, $f3, $64, $8c, $8a, $88, $03, $8a, $83, $06
    db $65, $f3, $83, $81, $64, $8c, $02, $65, $81, $0a, $81, $83, $65, $03, $85, $06
    db $81, $85, $00, $65, $83, $64, $06, $f3, $88, $87, $85, $83, $03, $8c, $0a, $f3
    db $8c, $65, $03, $81, $0a, $f3, $64, $8c, $8a, $88, $03, $8a, $83, $06, $65, $f3
    db $83, $81, $64, $8c, $02, $65, $81, $0a, $81, $83, $65, $03, $85, $06, $81, $85
    db $00, $65, $83, $fa, $cf, $5b

    rst $38

    db $75, $b1, $ab, $d2, $30, $00, $f3, $f3, $03, $88, $85, $8a, $83, $63, $0a, $88
    db $0e, $8c, $8a, $0a, $8c, $8a, $0e, $8c, $8a, $0a, $8c, $8a, $88, $0a, $83, $0e
    db $88, $87, $0a, $88, $83, $0e, $88, $87, $0a, $88, $87, $88, $0a, $63, $85, $64
    db $0e, $81, $63, $8c, $0a, $64, $81, $63, $85, $0e, $64, $81, $63, $8c, $0a, $64
    db $81, $63, $8c, $8a, $0a, $63, $83, $0e, $8a, $88, $0a, $8a, $83, $0e, $8a, $88
    db $0a, $8a, $88, $87, $0a, $63, $83, $0e, $88, $87, $0a, $88, $83, $0e, $88, $87
    db $0a, $88, $87, $88, $0a, $63, $85, $0e, $88, $87, $0a, $88, $85, $0e, $88, $87
    db $0a, $88, $87, $88, $0a, $63, $81, $0e, $88, $87, $0a, $88, $81, $0e, $88, $87
    db $0a, $88, $87, $88, $0a, $63, $83, $0e, $8a, $88, $0a, $8a, $83, $0e, $8a, $88
    db $0a, $8a, $0e, $83, $85, $87, $83, $63, $0a, $88, $0e, $8c, $8a, $0a, $8c, $8a
    db $0e, $8c, $8a, $0a, $8c, $8a, $88, $0a, $83, $0e, $88, $87, $0a, $88, $83, $0e
    db $88, $87, $0a, $88, $87, $88, $0a, $63, $85, $64, $0e, $81, $63, $8c, $0a, $64
    db $81, $63, $85, $0e, $64, $81, $63, $8c, $0a, $64, $81, $63, $8c, $8a, $0a, $63
    db $83, $0e, $8a, $88, $0a, $8a, $83, $0e, $8a, $88, $0a, $8a, $88, $87, $0a, $63
    db $83, $0e, $88, $87, $0a, $88, $83, $0e, $88, $87, $0a, $88, $87, $88, $0a, $63
    db $85, $0e, $88, $87, $0a, $88, $85, $0e, $88, $87, $0a, $88, $87, $88, $0a, $63
    db $81, $0e, $88, $87, $0a, $88, $81, $0e, $88, $87, $0a, $88, $87, $88, $0a, $63
    db $83, $0e, $8a, $88, $0a, $8a, $83, $0e, $8a, $88, $0a, $8a, $0e, $83, $85, $87
    db $88, $fa, $4a, $5c

    rst $38

    db $75, $b1, $24, $ad, $00, $f3, $f3, $f3, $f3, $62, $03, $88, $06, $87, $85, $62
    db $03, $83, $06, $63, $83, $62, $83, $06, $63, $81, $62, $8c, $8a, $88, $03, $62
    db $83, $06, $87, $8a, $03, $62, $8c, $06, $63, $83, $62, $8c, $06, $63, $85, $83
    db $81, $62, $8c, $03, $62, $8a, $06, $63, $81, $8a, $06, $63, $83, $81, $62, $8c
    db $8a, $62, $03, $88, $06, $87, $85, $62, $03, $83, $06, $63, $83, $62, $83, $06
    db $63, $81, $62, $8c, $8a, $88, $03, $62, $83, $06, $87, $8a, $03, $62, $8c, $06
    db $63, $83, $62, $8c, $06, $63, $85, $83, $81, $62, $8c, $03, $62, $8a, $06, $63
    db $81, $8a, $06, $63, $83, $81, $62, $8c, $8a, $fa, $72, $5d

    rst $38

    db $75, $30, $0e, $b4, $aa, $81, $f3, $81, $81, $b4, $aa, $81, $f3, $81, $81, $b4
    db $aa, $81, $f3, $81, $81, $b4, $aa, $81, $81, $81, $81, $fa, $ed, $5d

    rst $38

    db $16, $5e, $80, $31, $5f, $80, $81, $61, $80, $f2, $62, $80, $75, $b0, $ae, $d0
    db $30, $64, $0e, $83, $85, $86, $88, $02, $8a, $0a, $f3, $88, $65, $05, $81, $0a
    db $64, $8b, $8a, $0e, $8b, $8a, $0a, $88, $86, $0a, $88, $06, $8a, $00, $85, $0a
    db $f3, $06, $f3, $64, $0e, $81, $83, $84, $86, $64, $02, $88, $0a, $f3, $86, $64
    db $05, $8b, $0a, $89, $88, $0e, $89, $88, $0a, $86, $84, $0a, $86, $06, $88, $00
    db $83, $05, $f3, $b0, $ae, $d0, $30, $64, $0e, $83, $85, $86, $88, $02, $8a, $0a
    db $f3, $88, $65, $05, $81, $0a, $64, $8b, $8a, $0e, $8b, $8a, $0a, $88, $86, $0a
    db $88, $06, $8a, $00, $85, $0a, $f3, $06, $f3, $64, $0e, $81, $83, $84, $86, $64
    db $02, $88, $0a, $f3, $86, $64, $05, $8b, $0a, $89, $88, $0e, $89, $88, $0a, $86
    db $84, $0a, $86, $06, $88, $00, $83, $0e, $f3, $f3, $f3, $63, $85, $8a, $8c, $64
    db $83, $85, $8a, $65, $83, $65, $00, $85

    inc bc
    di
    ld c, $f3
    ld h, e
    add l
    adc d
    adc h
    ld h, h
    add e
    add l
    adc d
    ld h, l
    add e
    ld h, l
    nop
    add l
    nop
    di
    ld b, $f3
    ld h, h
    inc bc
    adc b
    ld b, $87
    ld [bc], a
    ld h, h
    add l
    ld a, [bc]
    add e
    add l
    dec b
    add a
    ld a, [bc]
    adc b
    nop
    add l
    inc bc
    di
    ld b, $f3
    ld h, h
    inc bc
    adc b
    ld b, $87
    ld [bc], a
    ld h, h
    add l
    ld a, [bc]
    add e
    add l
    dec b
    add a
    ld a, [bc]
    adc b
    nop
    adc h
    inc bc
    di
    ld b, $f3
    ld h, h
    inc bc
    adc b
    ld b, $87
    ld [bc], a
    ld h, h
    add l
    ld a, [bc]
    add e
    add l
    dec b
    add a
    ld a, [bc]
    adc b
    nop
    add l
    inc bc
    di
    ld b, $f3
    ld h, h
    inc bc
    adc b
    ld b, $87
    ld [bc], a
    ld h, h
    add l
    ld a, [bc]
    add e
    add l
    dec b
    add a
    ld a, [bc]
    adc b
    nop
    adc h
    inc bc
    di
    ld h, e
    ld c, $85
    add a
    adc b
    adc d
    add a
    adc b
    adc d
    adc h
    adc b
    adc d
    adc h
    ld h, h
    add c
    ld h, h
    add e
    add l
    add a
    adc b
    ld a, [$5e21]
    rst $38

    db $75, $b0, $ad, $d1, $30, $06, $f3, $b0, $ad, $d1, $30, $63, $0a, $86, $8a, $86
    db $8a, $86, $8a, $86, $8a, $63, $0a, $86, $8a, $86, $8a, $86, $8a, $86, $8a, $63
    db $0a, $83, $8a, $83, $8a, $83, $8a, $83, $8a, $63, $0a, $82, $8a, $82, $8a, $82
    db $8a, $82, $8a, $63, $0a, $84, $88, $84, $88, $84, $88, $84, $88, $63, $0a, $84
    db $88, $84, $88, $84, $88, $84, $88, $63, $0a, $81, $88, $81, $88, $81, $88, $81
    db $88, $0a, $62, $8c, $63, $88, $62, $8c, $63, $88, $62, $8c, $63, $88, $62, $8c
    db $63, $88, $63, $0a, $86, $8a, $86, $8a, $86, $8a, $86, $8a, $63, $0a, $86, $8a
    db $86, $8a, $86, $8a, $86, $8a, $63, $0a, $83, $8a, $83, $8a, $83, $8a, $83, $8a
    db $63, $0a, $82, $8a, $82, $8a, $82, $8a, $82, $8a, $63, $0a, $84, $88, $84, $88
    db $84, $88, $84, $88, $63, $0a, $84, $88, $84, $88, $84, $88, $84, $88, $63, $0a
    db $81, $88, $81, $88, $81, $88, $81, $88, $0a, $62, $8c, $63, $88, $62, $8c, $63
    db $88, $62, $8c, $63, $88, $62, $8c, $63, $88, $00, $f3

    nop
    di
    ld h, d
    ld a, [bc]
    adc h
    add l
    adc h
    add l
    adc h
    add l
    adc h
    add l
    adc h
    add l
    adc h
    add l
    adc h
    add l
    ld c, $61
    adc d
    ld h, d
    add e
    add a
    adc d
    ld h, e
    ld b, $88
    inc bc
    ld h, h
    add e
    ld b, $83
    ld h, h
    ld b, $81
    ld h, e
    adc h
    adc d
    ld a, [bc]
    add a
    adc b
    dec b
    adc d
    ld a, [bc]
    adc h
    inc bc
    adc b
    ld h, h
    ld c, $83
    add c
    ld h, e
    adc h
    adc d
    ld h, h
    ld c, $81
    ld h, e
    adc h
    adc d
    adc b
    ld h, e
    ld c, $8c
    adc d
    adc b
    add a
    ld h, e
    ld c, $8a
    adc b
    add a
    add l
    ld h, e
    ld b, $88
    inc bc
    ld h, h
    add e
    ld b, $83
    ld h, h
    ld b, $81
    ld h, e
    adc h
    adc d
    ld a, [bc]
    add a
    adc b
    dec b
    adc d
    ld a, [bc]
    adc h
    inc bc
    adc b
    ld h, e
    ld c, $85
    add a
    adc b
    adc d
    ld h, e
    ld c, $87
    adc b
    adc d
    adc h
    ld h, e
    ld c, $88
    adc d
    adc h
    ld h, h
    add c
    ld h, e
    ld c, $8a
    adc h
    ld h, h
    add c
    add e
    ld c, $63
    adc b
    ld h, h
    add e
    ld h, e
    adc h
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add e
    ld h, e
    adc h
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add e
    ld h, e
    adc h
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add e
    ld h, e
    adc h
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    add a
    ld h, h
    add e
    ld h, e
    adc d
    ld h, h
    add e
    ld c, $63
    add a
    ld h, h
    add e
    ld h, e
    adc d
    ld h, h
    add e
    ld c, $63
    add a
    ld h, h
    add e
    ld h, e
    adc d
    ld h, h
    add e
    ld c, $63
    add a
    ld h, h
    add e
    ld h, e
    adc d
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add e
    ld h, e
    adc h
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add e
    ld h, e
    adc h
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add e
    ld h, e
    adc h
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add e
    ld h, e
    adc h
    ld h, h
    add e
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    adc b
    ld h, h
    add l
    ld h, h
    add c
    ld h, h
    add l
    ld c, $63
    add a
    ld h, h
    add e
    ld h, e
    adc d
    ld h, h
    add e
    ld c, $63
    add a
    ld h, h
    add e
    ld h, e
    adc d
    ld h, h
    add e
    ld c, $63
    add a
    ld h, h
    add e
    ld h, e
    adc d
    ld h, h
    add e
    ld c, $63
    add a
    ld h, h
    add e
    ld h, e
    adc d
    ld h, h
    add e
    ld c, $63
    add l
    adc h
    adc b
    adc h
    ld c, $63
    add l
    adc h
    adc b
    adc h
    ld c, $63
    add l
    adc h
    adc b
    adc h
    ld c, $63
    add l
    adc h
    adc b
    adc h
    nop
    di
    ld a, [$5f38]
    rst $38

    db $75, $b1, $22, $ad, $06, $f3, $62, $09, $83, $86, $06, $8a, $86, $0a, $8a, $62
    db $09, $83, $86, $06, $8a, $86, $0a, $8a, $61, $09, $8a, $62, $85, $06, $88, $06
    db $85, $0a, $88, $61, $09, $8a, $62, $82, $06, $85, $82, $0a, $85, $62, $09, $81
    db $84, $06, $88, $84, $0a, $88, $62, $09, $81, $84, $06, $88, $84, $0a, $88, $61
    db $09, $88, $62, $83, $06, $86, $83, $0a, $86, $61, $09, $88, $8c, $62, $06, $83
    db $61, $06, $8c, $0a, $62, $83, $62, $09, $83, $86, $06, $8a, $86, $0a, $8a, $62
    db $09, $83, $86, $06, $8a, $86, $0a, $8a, $61, $09, $8a, $62, $85, $06, $88, $06
    db $85, $0a, $88, $61, $09, $8a, $62, $82, $06, $85, $82, $0a, $85, $62, $09, $81
    db $84, $06, $88, $84, $0a, $88, $62, $09, $81, $84, $06, $88, $84, $0a, $88, $61
    db $09, $88, $62, $83, $06, $86, $83, $0a, $86, $61, $09, $88, $8c, $62, $06, $83
    db $61, $06, $8c, $0a, $62, $83, $61, $0a, $85, $f3, $06, $85, $0a, $f3, $85, $f3

    add l
    ld h, c
    ld a, [bc]
    add l
    di
    ld b, $85
    ld a, [bc]
    di
    add l
    di
    add l
    ld h, c
    ld a, [bc]
    add l
    di
    ld b, $85
    ld a, [bc]
    di
    add l
    di
    add l
    ld h, c
    ld a, [bc]
    add l
    di
    add l
    di
    ld b, $61
    add l
    ld h, d
    add e
    ld b, $62
    adc b
    ld h, e
    add e
    ld h, d
    adc h
    ld h, e
    add e
    ld b, $63
    add c
    ld h, d
    adc h
    adc d
    adc b
    ld b, $62
    add a
    adc b
    adc d
    add e
    ld b, $62
    add c
    add l
    adc b
    adc d
    ld b, $62
    adc b
    ld h, e
    add e
    ld h, d
    adc h
    ld h, e
    add e
    ld b, $63
    add c
    ld h, d
    adc h
    adc d
    adc b
    ld b, $62
    add a
    adc b
    adc d
    add e
    ld b, $62
    adc b
    add a
    add l
    add e
    ld h, c
    ld a, [bc]
    adc b
    di
    ld b, $88
    ld a, [bc]
    di
    adc b
    di
    adc b
    ld h, d
    ld a, [bc]
    add c
    di
    ld b, $81
    ld a, [bc]
    di
    add c
    di
    add c
    ld h, d
    ld a, [bc]
    add e
    di
    ld b, $83
    ld a, [bc]
    di
    add e
    di
    add e
    ld h, d
    ld a, [bc]
    add c
    di
    ld b, $81
    ld a, [bc]
    di
    add c
    di
    add c
    ld h, c
    ld a, [bc]
    adc b
    di
    ld b, $88
    ld a, [bc]
    di
    adc b
    di
    adc b
    ld h, d
    ld a, [bc]
    add c
    di
    ld b, $81
    ld a, [bc]
    di
    add c
    di
    add c
    ld h, d
    ld a, [bc]
    add e
    di
    ld b, $83
    ld a, [bc]
    di
    add e
    di
    add e
    ld h, d
    ld a, [bc]
    add l
    di
    ld b, $85
    ld a, [bc]
    di
    add l
    di
    add l
    ld h, c
    ld a, [bc]
    add l
    di
    ld b, $85
    ld a, [bc]
    di
    add l
    di
    add l
    ld a, [$6187]
    rst $38

    db $75, $0e, $be, $ae, $83, $83, $83, $83, $75, $0e, $b8, $ae, $83, $81, $81, $b4
    db $ae, $85, $b8, $ae, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $83, $f3, $81, $81
    db $be, $ae, $83, $f3, $b8, $ae, $81, $81, $b8, $ae, $83, $81, $81, $b4, $ae, $85
    db $b8, $ae, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $83, $f3, $81, $81, $be, $ae
    db $83, $f3, $b8, $ae, $81, $81, $b8, $ae, $83, $81, $81, $b4, $ae, $85, $b8, $ae
    db $81, $81, $b4, $ae, $85, $b8, $ae, $81, $83, $f3, $81, $81, $be, $ae, $83, $f3
    db $b8, $ae, $81, $81, $b8, $ae, $83, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $81
    db $b4, $ae, $85, $b8, $ae, $81, $83, $f3, $81, $81, $be, $ae, $83, $f3, $b8, $ae
    db $81, $81, $b8, $ae, $83, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $81, $b4, $ae
    db $85, $b8, $ae, $81, $83, $f3, $81, $81, $be, $ae, $83, $f3, $b8, $ae, $81, $81
    db $b8, $ae, $83, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $81, $b4, $ae, $85, $b8
    db $ae, $81, $83, $f3, $81, $81, $be, $ae, $83, $f3, $b8, $ae, $81, $81, $b8, $ae
    db $83, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $81, $b4, $ae, $85, $b8, $ae, $81
    db $83, $f3, $81, $81, $be, $ae, $83, $f3, $b8, $ae, $81, $81, $b8, $ae, $83, $81
    db $81, $b4, $ae, $85, $b8, $ae, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $83, $f3
    db $81, $81, $be, $ae, $83, $f3, $b8, $ae, $81, $81, $b8, $ae, $83, $81, $81, $b4
    db $ae, $85, $b8, $ae, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $83, $f3, $81, $81
    db $be, $ae, $83, $f3, $b8, $ae, $81, $81, $b8, $ae, $83, $81, $81, $b4, $ae, $85
    db $b8, $ae, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $83, $f3, $81, $81, $be, $ae
    db $83, $f3, $b8, $ae, $81, $81, $b8, $ae, $83, $81, $81, $b4, $ae, $85, $b8, $ae
    db $81, $81, $b4, $ae, $85, $b8, $ae, $81, $83, $f3, $81, $81, $be, $ae, $83, $f3
    db $b8, $ae, $81, $81, $b8, $ae, $83, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $81
    db $b4, $ae, $85, $b8, $ae, $81, $83, $f3, $81, $81, $be, $ae, $83, $f3, $b8, $ae
    db $81, $81, $b8, $ae, $83, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $81, $b4, $ae
    db $85, $b8, $ae, $81, $83, $f3, $81, $81, $be, $ae, $83, $f3, $b8, $ae, $81, $81
    db $b8, $ae, $83, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $81, $b4, $ae, $85, $b8
    db $ae, $81, $83, $f3, $81, $81, $be, $ae, $83, $f3, $b8, $ae, $81, $81, $b8, $ae
    db $83, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $81, $b4, $ae, $85, $b8, $ae, $81
    db $83, $f3, $81, $81, $be, $ae, $83, $f3, $b8, $ae, $81, $81, $b8, $ae, $83, $81
    db $81, $b4, $ae, $85, $b8, $ae, $81, $81, $b4, $ae, $85, $b8, $ae, $81, $b4, $ae
    db $83, $83, $83, $83, $83, $83, $83, $83, $0a, $be, $ae, $85, $f3, $85, $f3, $f3
    db $85, $f3

    add l
    ld a, [bc]
    cp [hl]
    xor [hl]
    add l
    di
    add l
    di
    di
    add l
    di
    add l
    ld a, [bc]
    cp [hl]
    xor [hl]
    add l
    di
    add l
    di
    di
    add l
    di
    add l
    ld a, [bc]
    cp [hl]
    xor [hl]
    add l
    di
    add l
    di
    di
    add l
    di
    add l
    ld c, $b8
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    cp b
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    ld c, $b8
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    cp b
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    ld c, $b8
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    cp b
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    ld c, $b8
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    cp b
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    ld c, $b8
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    cp b
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    ld c, $b8
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    cp b
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    ld c, $b8
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    cp b
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    ld c, $b8
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    cp b
    xor [hl]
    add e
    di
    add c
    add c
    or h
    xor [hl]
    add e
    di
    cp b
    xor [hl]
    add c
    add c
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld c, $b4
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    xor [hl]
    add e
    di
    xor c
    add e
    add e
    add e
    xor [hl]
    add e
    add e
    add e
    ld a, [$62fa]
    rst $38
    rst $18
    ld h, [hl]
    add b
    ld a, [$0066]
    dec h
    ld h, a
    add b
    ccf
    ld h, a
    add b
    ld [hl], l
    or b
    xor a
    ret nc

    jr nc, @+$66

    ld c, $83
    adc b
    adc d
    ld h, l
    add e
    di
    di
    inc bc
    add c
    ld c, $f3
    ld c, $f3
    ld h, l
    add c
    add c
    add d
    ld b, $83
    rst $38
    ld [hl], l
    or b
    xor h
    pop de
    ld sp, $0e63
    adc d
    ld h, h
    add e
    add l
    adc d
    di
    di
    ld a, [bc]
    adc b
    rrca
    ld h, e
    add c
    add l
    adc b
    add l
    adc b
    ld h, h
    add c
    ld h, e
    adc b
    ld h, h
    add c
    add l
    ld h, h
    add c
    add l
    adc b
    ld c, $64
    di
    add l
    adc b
    adc c
    ld b, $8a
    rst $38
    ld [hl], l
    or c
    inc h
    xor h
    ld h, d
    add hl, bc
    add e
    ld c, $83
    di
    di
    inc bc
    add c
    ld c, $f3
    ld c, $f3
    ld h, c
    ld h, c
    adc b
    ld h, d
    add c
    add d
    ld b, $83
    rst $38
    rst $38

    db $4c, $67, $80, $09, $68, $80, $ac, $68, $80, $c4, $68, $80, $75, $b0, $ae, $d0
    db $30, $00, $f3, $f3, $64, $06, $f3, $81, $05, $86, $65, $0a, $83, $03, $65, $81
    db $0a, $a6, $81, $ae, $65, $81, $64, $8b, $65, $81, $03, $65, $83, $0a, $a6, $83
    db $ae, $83, $81, $64, $8b, $05, $65, $81, $0e, $81, $83, $05, $65, $81, $a6, $0e
    db $81, $83, $05, $65, $81, $a3, $0e, $81, $83, $05, $81, $ae, $0a, $65, $83, $05
    db $65, $81, $0a, $a6, $83, $83, $ae, $65, $81, $64, $8b, $65, $81, $03, $65, $83
    db $0a, $a6, $83, $ae, $83, $81, $64, $8b, $09, $65, $81, $0e, $86, $03, $86, $06
    db $88, $03, $65, $86, $0a, $a6, $86, $ae, $65, $86, $84, $86, $09, $88, $0e, $84
    db $03, $84, $06, $88, $03, $65, $8b, $0a, $a6, $8b, $ae, $8b, $8a, $88, $09, $65
    db $8a, $0e, $86, $03, $86, $0a, $81, $83, $03, $65, $81

    ld a, [bc]
    and [hl]
    add c
    xor [hl]
    ld h, l
    add [hl]
    add h
    add [hl]
    add hl, bc
    ld h, l
    adc b
    ld c, $84
    inc bc
    add h
    ld b, $88
    inc bc
    ld h, l
    adc e
    ld a, [bc]
    and [hl]
    adc e
    xor [hl]
    adc e
    adc d
    adc b
    add hl, bc
    ld h, l
    adc d
    ld c, $86
    ld [bc], a
    add [hl]
    ld b, $a6
    add [hl]
    and e
    add [hl]
    di
    di
    xor [hl]
    ld a, [$674d]
    rst $38

    db $75, $b0, $ad, $d2, $30, $00, $f3, $f3, $06, $f3, $63, $88, $05, $64, $81, $0a
    db $86, $03, $86, $0a, $a6, $86, $ae, $86, $86, $86, $03, $86, $0a, $a6, $86, $ae
    db $86, $86, $86, $00, $86, $06, $a6, $86, $a3, $86, $a2, $86, $a1, $86, $ae, $64
    db $03, $86, $0a, $a6, $86, $ae, $86, $86, $86, $64, $03, $86, $0a, $a6, $86, $ae
    db $86, $86, $86, $06, $64, $86, $03, $65, $81, $06, $65, $81, $03, $65, $81, $0a
    db $a6, $81, $f3, $06, $f3, $ae, $09, $65, $84, $0e, $64, $8b, $03, $8b, $06, $65
    db $84, $03, $65, $84, $0a, $a6, $84, $ae, $65, $84, $84, $84, $09, $84, $0e, $65
    db $81, $03, $65, $81, $06, $a6, $81, $ae, $00, $f3

    add hl, bc
    ld h, l
    add h
    ld c, $64
    adc e
    inc bc
    adc e
    ld b, $65
    add h
    inc bc
    add h
    ld a, [bc]
    and [hl]
    add h
    xor [hl]
    add h
    add h
    add h
    add hl, bc
    ld h, l
    add h
    ld c, $65
    add c
    ld [bc], a
    ld h, l
    add c
    ld b, $a6
    add c
    and e
    add c
    xor [hl]
    di
    di
    ld a, [$680a]
    rst $38

    db $75, $ae, $30, $b1, $22, $0a, $61, $86, $f3, $86, $f3, $0e, $86, $f3, $86, $f3
    db $86, $f3, $86, $f3, $fa, $b1, $68

    rst $38

    db $75, $0e, $b4, $ae, $81, $f3, $81, $81, $81, $f3, $81, $81, $81, $f3, $81, $81
    db $81, $f3, $81, $f3, $81, $f3, $81, $f3, $fa, $c5, $68

    rst $38
    db $ec
    ld l, b
    add b
    ret


    ld l, c
    add b
    jp z, $8069

    inc d
    ld l, d
    add b
    db $76
    or b
    xor [hl]
    ret nc

    jr nc, jr_00f_6900

    ld h, h
    add e
    ld h, e
    adc b
    ld h, h
    add c
    ld h, e
    adc b
    ld c, $64
    add c
    ld h, e
    adc b
    ld h, h

jr_00f_6900:
    add e
    ld h, e
    adc b
    ld c, $64
    add c
    ld h, e
    adc b
    ld h, h
    add c
    ld h, e
    adc b
    ld c, $64
    add e
    ld h, e
    adc b
    ld h, h
    add c
    ld h, e
    adc b
    ld c, $64
    add [hl]
    ld h, e
    adc e
    ld h, h
    add l
    ld h, e
    adc e
    ld c, $64
    add l
    ld h, e
    adc e
    ld h, h
    add [hl]
    ld h, e
    adc e
    ld c, $64
    add l
    ld h, e
    adc e
    ld h, h
    add l
    ld h, e
    adc e
    ld c, $64
    add [hl]
    ld h, e
    adc e
    ld h, h
    add l
    ld h, e
    adc e
    ld c, $64
    add e
    ld h, e
    adc b
    ld h, h
    add c
    ld h, e
    adc b
    ld c, $64
    add c
    ld h, e
    adc b
    ld h, h
    add e
    ld h, e
    adc b
    ld c, $64
    add c
    ld h, e
    adc b
    ld h, h
    add c
    ld h, e
    adc b
    ld c, $64
    add e
    ld h, e
    adc b
    ld h, h
    add c
    ld h, e
    adc b
    ld c, $64
    add [hl]
    ld h, e
    adc e
    ld h, h
    add l
    ld h, e
    adc e
    ld c, $64
    add l
    ld h, e
    adc e
    ld h, h
    add [hl]
    ld h, e
    adc e
    ld c, $64
    add l
    ld h, e
    adc e
    ld h, h
    add l
    ld h, e
    adc e
    ld c, $64
    add [hl]
    ld h, e
    adc e
    ld h, h
    add l
    ld h, e
    adc e
    ld c, $64
    adc b
    add e
    add a
    add e
    ld c, $64
    add a
    add e
    adc d
    add l
    ld c, $64
    adc c
    add l
    adc c
    add l
    ld c, $64
    adc h
    add [hl]
    adc e
    add [hl]
    ld c, $65
    add d
    ld h, h
    adc c
    ld h, l
    add c
    ld h, h
    adc c
    ld c, $65
    add c
    ld h, h
    adc c
    ld h, l
    add h
    ld h, h
    adc e
    ld c, $65
    add e
    ld h, h
    adc h
    ld h, l
    add e
    ld h, h
    adc h
    ld c, $65
    add a
    add [hl]
    add l
    add h
    ld c, $65
    add e
    add d
    add c
    ld h, h
    adc h
    adc e
    adc d
    adc c
    adc b
    ld a, [$68ed]
    rst $38
    rst $38
    db $76
    or c
    ld [hl+], a
    xor [hl]
    jr nc, jr_00f_69da

    ld h, c
    add [hl]
    di
    dec b
    add [hl]
    ld b, $86
    ld a, [bc]
    add [hl]
    ld a, [bc]

jr_00f_69da:
    ld h, c
    adc e
    di
    dec b
    adc e
    ld b, $8b
    ld a, [bc]
    adc e
    ld a, [bc]
    ld h, c
    add [hl]
    di
    dec b
    add [hl]
    ld b, $86
    ld a, [bc]
    add [hl]
    ld a, [bc]
    ld h, c
    adc e
    di
    dec b
    adc e
    ld b, $8b
    ld a, [bc]
    adc e
    ld a, [bc]
    ld h, d
    add e
    di
    add e
    ld b, $61
    add l
    ld a, [bc]
    add l
    ld b, $87
    ld a, [bc]
    ld h, c
    adc c
    di
    adc c
    ld b, $8b
    ld a, [bc]
    adc e
    ld b, $f3
    inc bc
    di
    ld a, [$69cf]
    rst $38
    db $76
    ld a, [bc]
    or h
    xor [hl]
    add c
    di
    add c
    di
    di
    add c
    di
    add c
    ld a, [bc]
    or h
    xor [hl]
    add c
    di
    add c
    di
    di
    add c
    di
    add c
    ld a, [bc]
    or h
    xor [hl]
    add c
    di
    add c
    di
    di
    add c
    di
    add c
    ld a, [bc]
    or h
    xor [hl]
    add c
    di
    add c
    di
    di
    add c
    di
    add c
    ld a, [bc]
    or h
    xor [hl]
    add c
    di
    add c
    di
    di
    add c
    di
    add c
    ld a, [bc]
    or h
    xor [hl]
    add c
    di
    add c
    di
    di
    add c
    di
    add c
    inc bc
    di
    ld a, [$6a14]
    rst $38

    db $69, $6a, $80, $7c, $6a, $80, $8f, $6a, $80, $90, $6a, $80, $76, $b0, $ae, $d0
    db $30, $0e, $64, $81, $8a, $88, $8a, $06, $88, $a6, $0a, $88, $a3, $88, $ff, $76
    db $b0, $ad, $d1, $30, $0e, $f3, $64, $86, $85, $86, $06, $85, $a6, $0a, $85, $a3
    db $85, $ff, $ff, $ff, $9d, $6a, $80, $b1, $6a, $80, $c7, $6a, $80, $c8, $6a, $80
    db $78, $b0, $ae, $d0, $30, $05, $64, $86, $0a, $85, $86, $65, $05, $81, $0a, $a6
    db $81, $a3, $81, $ff, $78, $b0, $ad, $d1, $30, $0a, $64, $81, $86, $8a, $65, $81
    db $64, $86, $05, $8a, $0a, $a6, $8a, $a3, $8a, $ff, $ff, $ff, $d5, $6a, $80, $e8
    db $6a, $80, $03, $6b, $80, $17, $6b, $80, $74, $b0, $ae, $d0, $30, $03, $64, $8c
    db $88, $8b, $00, $65, $81

    ld a, [bc]
    and [hl]
    add c
    and e
    add c
    rst $38

    db $74, $b0, $ad, $d1, $30, $06, $64, $85, $63, $88, $64, $83, $63, $8c, $64, $83
    db $63, $8b, $00, $64, $85

    ld a, [bc]
    and [hl]
    add l
    and e
    add l
    rst $38

    db $74, $b1, $22, $ae, $30, $03, $62, $81, $61, $88, $8b, $00, $62, $81

    ld a, [bc]
    and [hl]
    add c
    and e
    add c
    rst $38

    db $ff

    inc h
    ld l, e
    add b
    dec a
    ld l, e
    add b
    ld d, l
    ld l, e
    add b
    ld d, [hl]
    ld l, e
    add b
    ld [hl], h
    or c
    xor [hl]
    ret nc

    jr nc, jr_00f_6b38

    ld h, h
    add h
    add l
    add c
    add h
    add l
    add c
    ld h, e
    adc b
    add l
    add l
    di
    di
    adc h

jr_00f_6b38:
    di
    di
    ld h, h
    add c
    rst $38
    ld [hl], h
    or c
    xor h
    pop de
    jr nc, jr_00f_6b4d

    ld h, d
    adc b
    add a
    add [hl]
    add l
    ld c, $84
    di
    di
    add e

jr_00f_6b4d:
    di
    di
    add c
    di
    ld a, [bc]
    ld h, c
    add c
    rst $38
    rst $38
    rst $38

    db $63, $6b, $80, $86, $6b, $80, $a7, $6b, $80, $a8, $6b, $80, $75, $b0, $ae, $d0
    db $30, $0a, $65, $81, $64, $85, $88, $65, $81, $0a, $64, $84, $88, $65, $81, $64
    db $84, $64, $83, $88, $65, $81, $64, $81, $64, $a6, $0a, $81, $a3, $81, $ff, $75
    db $b0, $ad, $d1, $30, $0a, $64, $88, $63, $88, $64, $83, $88, $63, $8b, $64, $83
    db $88, $63, $8b, $63, $8a, $64, $83, $88, $63, $88, $a6, $0a, $88, $a3, $88, $ff
    db $ff, $ff

    or l
    ld l, e
    add b
    db $dd
    ld l, e
    add b
    ld [bc], a
    ld l, h
    add b
    ld a, $6c
    add b
    ld a, b
    or c
    jp nc, $af30

    dec bc
    ld h, e
    add e
    add c
    ld h, d
    adc h
    adc d
    adc h
    ld h, e
    add c
    ld h, e
    add [hl]
    add l
    add e
    add c
    add e
    add l
    ld h, e
    adc b
    ld h, h
    add c
    add e
    ld h, h
    adc b
    ld h, l
    add c
    add e
    ld b, $64
    adc b
    and [hl]
    ld b, $64
    adc b
    rst $38
    ld a, b
    or b
    jp nc, $ad30

    dec bc
    di
    di
    di
    di
    di
    di
    ld h, e
    add e
    add c
    ld h, d
    adc h
    adc d
    adc h
    ld h, e
    add c
    ld h, e
    add c
    add e
    adc b
    ld h, h
    add c
    add e
    adc b
    ld h, l
    ld b, $83
    and [hl]
    ld h, l
    ld b, $83
    rst $38
    ld a, b
    or c
    inc h
    xor a
    dec bc
    di
    di
    di
    di
    di
    di
    di
    di
    di
    di
    di
    di
    ld h, c
    adc b
    ld h, d
    add c
    add e
    ld h, d
    adc b
    ld h, e
    add c
    add e
    ld h, d
    adc b
    adc b
    adc b
    di
    di
    di
    adc b
    adc b
    adc b
    adc b
    adc b
    ld h, e
    adc b
    di
    di
    di
    ld h, d
    adc b
    adc b
    adc b
    ld h, e
    adc b
    adc b
    adc b
    ld h, d
    adc b
    adc b
    di
    ld a, [$6c1d]
    rst $38
    ld a, b
    dec bc
    di
    di
    di
    di
    di
    di
    dec bc
    di
    di
    di
    di
    di
    di
    di
    di
    di
    di
    di
    di
    or h
    xor e
    add c
    di
    di
    and [hl]
    add c
    add c
    add c
    or h
    xor e
    add c
    di
    di
    and [hl]
    add c
    add c
    add c
    or h
    xor e
    add c
    di
    di
    and [hl]
    add c
    add c
    add c
    or h
    xor e
    add c
    xor b
    add c
    add c
    xor e
    add c
    add c
    add c
    ld a, [$6c53]
    rst $38
    adc b
    ld l, h
    add b
    ld [c], a
    ld l, l
    nop
    db $e3
    ld l, l
    add b
    and $6e
    add b
    ld [hl], h
    or c
    jp nc, $aa30

    ld h, h
    ld a, [bc]
    add e
    di
    add d
    di
    ld h, e
    adc h
    ld c, $64
    add d
    ld a, [bc]
    ld h, e
    adc h
    ld c, $85
    di
    ld a, [bc]
    ld h, e
    add l
    ld c, $89
    adc d
    adc e
    adc h
    add l
    di
    ld a, [bc]
    add e
    ld c, $87
    adc b
    adc c
    adc d
    add e
    di
    add hl, bc
    ld h, e
    add d
    or b
    jp nc, $a631

    ld a, [bc]
    ld h, l
    add l
    add hl, bc
    adc d
    ld b, $88
    ld c, $a5
    adc b
    and h
    adc b
    and e
    adc b
    and d
    adc b
    and c
    adc b
    and [hl]
    ld a, [bc]
    di
    ld h, l
    add e
    add l
    add hl, bc
    adc d
    ld a, [bc]
    adc b
    ld c, $a5
    adc b
    and h
    adc b
    and e
    adc b
    and d
    adc b
    and c
    adc b
    or c
    jp nc, $aa30

    ld h, h
    ld a, [bc]
    add e
    di
    add d
    di
    ld h, e
    adc h
    ld c, $64
    add d
    ld a, [bc]
    ld h, e
    adc h
    ld c, $85
    di
    ld a, [bc]
    ld h, e
    add l
    ld c, $89
    adc d
    adc e
    adc h
    add l
    di
    ld a, [bc]
    add e
    ld c, $87
    adc b
    adc c
    adc d
    add e
    di
    add hl, bc
    ld h, e
    add d
    or b
    jp nc, $a631

    ld a, [bc]
    ld h, l
    add l
    add hl, bc
    adc d
    ld b, $88
    ld c, $a5
    adc b
    and h
    adc b
    and e
    adc b
    and d
    adc b
    and c
    adc b
    and [hl]
    ld a, [bc]
    di
    ld h, l

jr_00f_6d24:
    add e
    add l
    add hl, bc
    adc d
    ld a, [bc]
    adc b
    ld c, $a5
    adc b
    and h
    adc b
    and e
    adc b
    and d
    adc b
    and c
    adc b
    or b
    jp nc, $a630

    ld h, h
    ld c, $85
    adc b
    adc c
    adc d
    adc d
    ld h, e
    adc d
    di
    ld a, [bc]
    adc d
    ld c, $64
    add e
    add h
    add l
    ld h, e
    adc d
    add hl, bc
    adc b
    ld c, $63
    adc d
    adc b
    ld h, h
    add l
    add e
    adc d
    adc b
    add a
    add e
    add e
    add h
    add l
    add c
    add d
    add e
    ld h, e
    adc e
    adc c
    ld c, $64
    add e
    ld h, e
    adc h
    adc b
    ld h, h
    add l
    add d
    ld h, e
    adc d
    ld h, h
    add a
    add h
    ld h, e
    adc h
    ld h, h
    adc c
    add [hl]
    add e
    adc e
    adc b
    ld a, [bc]
    add l
    or b
    pop de
    jr nc, jr_00f_6d24

    ld h, h
    ld c, $88
    ld h, l
    add c
    add e
    ld h, h
    adc b
    di
    adc b
    di
    adc b
    adc b
    ld h, l
    add c
    add e
    ld h, h
    adc b
    ld h, l
    add c
    add e
    add c
    ld h, h
    adc b
    ld h, h
    ld c, $88
    ld h, l
    add c
    add e
    ld h, h
    adc b
    di
    adc b
    di
    adc b
    adc b
    ld h, l
    add c
    add e
    ld h, h
    adc b
    ld h, l
    add c
    add e
    add c
    ld h, h
    adc b
    ld h, h
    ld c, $88
    ld h, l
    add c
    add e
    ld h, h
    adc b
    di
    adc b
    di
    adc b
    adc b
    ld h, l
    add c
    add e
    ld h, h
    adc b
    ld h, l
    add c
    add e
    add c
    ld h, h
    adc b
    ld c, $64
    adc d
    ld h, l
    add e
    add l
    ld h, h
    adc d
    di
    adc d
    di
    adc d
    adc d
    ld h, l
    add e
    add l
    ld h, h
    adc d
    ld h, l
    add e
    add l
    add e
    ld h, h
    adc d
    ld a, [$6c89]
    rst $38
    rst $38
    ld [hl], h
    or b
    inc h
    xor d
    jr nc, jr_00f_6df3

    ld h, d
    add l
    di
    add l
    adc h
    add hl, bc
    ld h, e
    add e
    ld h, d
    ld a, [bc]

jr_00f_6df3:
    adc h
    ld h, e
    add e
    ld c, $85
    ld a, [bc]
    ld h, d
    add l
    di
    add hl, bc
    add l
    ld h, e
    add e
    ld a, [bc]
    ld h, d
    adc h
    ld h, e
    add e
    add l
    ld a, [bc]
    ld h, d
    adc d
    di
    adc d
    ld c, $63
    add e
    add l
    adc b
    ld a, [bc]
    add l
    ld a, [bc]
    adc b
    add l
    ld c, $8a
    ld a, [bc]
    ld h, d
    adc d
    di
    adc d
    ld c, $63
    add e
    add l
    adc b
    ld a, [bc]
    add l
    ld a, [bc]
    adc b
    add l
    ld c, $83
    ld a, [bc]
    ld h, d
    add l
    di
    add l
    adc h
    add hl, bc
    ld h, e
    add e
    ld h, d
    ld a, [bc]
    adc h
    ld h, e
    add e
    ld c, $85
    ld a, [bc]
    ld h, d
    add l
    di
    add hl, bc
    add l
    ld h, e
    add e
    ld a, [bc]
    ld h, d
    adc h
    ld h, e
    add e
    add l
    ld a, [bc]
    ld h, d
    adc d
    di
    adc d
    ld c, $63
    add e
    add l
    adc b
    ld a, [bc]
    add l
    ld a, [bc]
    adc b
    add l
    ld c, $8a
    ld a, [bc]
    ld h, d
    adc d
    di
    adc d
    ld c, $63
    add e
    add l
    adc b
    ld a, [bc]
    add l
    ld a, [bc]
    adc b
    add l
    ld c, $83
    or c
    inc h
    jr nc, jr_00f_6ece

    add l
    adc b
    adc c
    adc d
    adc d
    ld h, c
    adc d
    di
    ld a, [bc]
    adc d
    ld c, $62
    add e
    add h
    add l
    ld h, c
    adc d
    add hl, bc
    adc b
    ld c, $62
    adc d
    adc b
    ld h, e
    add l
    add e
    adc d
    adc b
    add a
    add e
    add e
    add h
    add l
    add c
    add d
    add e
    ld h, d
    adc e
    adc c
    or b
    inc h
    xor d
    jr nc, jr_00f_6efa

    add hl, bc
    adc b
    adc d
    adc h
    ld h, e
    add d
    ld b, $84
    ld h, d
    ld c, $88
    di
    adc b
    di
    di
    adc b
    di
    adc b
    di
    di
    adc b
    di
    adc b
    di
    di
    di
    adc d
    di
    adc d
    di
    di
    adc d
    di
    adc d
    di
    di
    adc d
    di
    adc d
    di
    di
    di
    adc b
    di
    adc b
    di
    di
    adc b
    di
    adc b
    di
    di
    adc b
    di

jr_00f_6ece:
    adc b
    di
    di
    di
    adc d
    di
    adc d
    di
    di
    adc d
    di
    adc d
    di
    di
    adc d
    di
    adc d
    di
    di
    di
    ld a, [$6de4]
    rst $38
    ld [hl], h
    jr nc, jr_00f_6ef3

    cp b
    xor b
    add e
    add c
    or h
    and a
    add e
    cp b
    xor b
    add c

jr_00f_6ef3:
    cp b
    xor b
    add e
    add c
    ld c, $b4
    and a

jr_00f_6efa:
    add e
    cp b
    xor b
    add e
    add c
    add e
    ld a, [bc]
    di
    cp b
    xor b
    add c
    or h
    and a
    add e
    ld c, $b8
    xor b
    add c
    add e
    ld a, [bc]
    di
    cp b
    xor b
    add c
    add e
    add c
    ld a, [bc]
    cp b
    xor b
    add e
    add c
    or h
    and a
    add e
    cp b
    xor b
    add c
    cp b
    xor b
    add e
    add c
    ld c, $b4
    and a
    add e
    cp b
    xor b
    add e
    add c
    add e
    ld a, [bc]
    di
    cp b
    xor b
    add c
    or h
    and a
    add e
    ld c, $b8
    xor b
    add c
    add e
    ld a, [bc]
    di
    cp b
    xor b
    add c
    add e
    add c
    ld a, [bc]
    cp b
    xor b
    add e
    add c
    or h
    and a
    add e
    cp b
    xor b
    add c
    cp b
    xor b
    add e
    add c
    ld c, $b4
    and a
    add e
    cp b
    xor b
    add e
    add c
    add e
    ld a, [bc]
    di
    cp b
    xor b
    add c
    or h
    and a
    add e
    ld c, $b8
    xor b
    add c
    add e
    ld a, [bc]
    di
    cp b
    xor b
    add c
    add e
    add c
    ld a, [bc]
    cp b
    xor b
    add e
    add c
    or h
    and a
    add e
    cp b
    xor b
    add c
    cp b
    xor b
    add e
    add c
    ld c, $b4
    and a
    add e
    cp b
    xor b
    add e
    add c
    add e
    ld a, [bc]
    di
    cp b
    xor b
    add c
    or h
    and a
    add e
    ld c, $b8
    xor b
    add c
    add e
    ld a, [bc]
    di
    cp b
    xor b
    add c
    add e
    add c
    ld c, $b8
    xor b
    add e
    add c
    ld a, [bc]
    cp c
    xor b
    add c
    ld c, $b8
    xor b
    add e
    add c
    ld a, [bc]
    cp c
    xor b
    add c
    ld c, $b8
    xor b
    add e
    add c
    ld a, [bc]
    cp c
    xor b
    add c
    ld c, $b8
    xor b
    add e
    add c
    ld a, [bc]
    cp c
    xor b
    add c
    ld c, $b8
    xor b
    add e
    add c
    ld a, [bc]
    cp c
    xor b
    add c
    ld c, $b8
    xor b
    add e
    add c
    ld a, [bc]
    cp c
    xor b
    add c
    ld c, $b8
    xor b
    add e
    add c
    ld a, [bc]
    cp c
    xor b
    add c
    ld c, $b8
    xor b
    add e
    add c
    ld a, [bc]
    cp c
    xor b
    add c
    ld c, $b4
    and a
    add e
    di
    cp b
    xor b
    add e
    or h
    and a
    add e
    di
    cp b
    xor b
    add e
    or h
    and a
    add e
    di
    cp b
    xor b
    add e
    or h
    and a
    add e
    di
    cp b
    xor b
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    cp b
    xor b
    add e
    di
    add e
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    di
    add e
    cp b
    xor b
    add e
    di
    add e
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    di
    add e
    cp b
    xor b
    add e
    di
    add e
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    di
    add e
    cp b
    xor b
    add e
    di
    add e
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    di
    add e
    cp b
    xor b
    add e
    di
    add e
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    di
    add e
    cp b
    xor b
    add e
    di
    add e
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    di
    add e
    cp b
    xor b
    add e
    di
    add e
    add e
    or h
    and a
    add e
    cp b
    xor b
    add e
    di
    add e
    cp b
    xor b
    add e
    di
    add e
    add e
    or h
    and a
    add e
    add e
    add e
    add e
    ld a, [$6ee6]
    rst $38

    db $87, $70, $00, $88, $70, $80, $ae, $70, $00, $af, $70, $00

    rst $38

    db $7a, $af, $b1, $30, $d2, $0e, $64, $81, $63, $88, $8a, $64, $81, $0e, $65, $64
    db $88, $8a, $65, $81, $a4, $0e, $65, $64, $88, $8a, $65, $81, $a3, $0e, $65, $64
    db $88, $a2, $8a, $65, $81, $ff

    rst $38
    rst $38

    db $bc, $70, $00, $bd, $70, $80, $d9, $70, $00, $da, $70, $00

    rst $38

    db $7a, $af, $b1, $30, $d2, $65, $0e, $8a, $f3, $64, $8a, $f3, $a8, $65, $0e, $8a
    db $f3, $64, $8a, $65, $8a, $a6, $8a, $a3, $8a, $a1, $8a, $ff

    rst $38
    rst $38

    db $e7, $70, $00, $e8, $70, $80, $03, $71, $00, $04, $71, $00

    rst $38

    db $7b, $b1, $d2, $30, $af, $61, $06, $88, $0e, $62, $81, $88, $8c, $63, $83, $86
    db $8a, $a2, $0e, $62, $81, $88, $8c, $63, $83, $86, $8a, $ff

    rst $38
    ld de, $0071
    ld [de], a
    ld [hl], c
    add b
    inc l
    ld [hl], c
    nop
    dec l
    ld [hl], c
    nop
    rst $38
    ld a, d
    jp nc, $b130

    xor a
    ld de, $8561
    add [hl]
    add l
    add [hl]
    add l
    add [hl]
    add l
    add [hl]
    add l
    add [hl]
    add l
    add [hl]
    add l
    add [hl]
    add l
    add [hl]
    add l
    add [hl]
    rst $38
    rst $38
    rst $38

    db $3a, $71, $00, $3b, $71, $80, $81, $71, $00, $82, $71, $00

    rst $38

    db $7a, $af, $b1, $30, $d2, $0b, $64, $83, $65, $83, $8a, $64, $83, $65, $83, $8a
    db $0b, $64, $83, $65, $83, $8a, $64, $83, $65, $83, $8a, $a6, $0b, $64, $83, $65
    db $83, $8a, $a5, $0b, $64, $83, $65, $83, $8a, $a4, $0b, $64, $83, $65, $83, $8a
    db $a3, $0b, $64, $83, $65, $83, $8a, $a2, $0b, $64, $83, $65, $83, $8a, $a1, $0b
    db $64, $83, $65, $83, $8a, $ff

    rst $38
    rst $38

    db $8f, $71, $00, $90, $71, $80, $dd, $71, $00, $de, $71, $00

    rst $38

    db $79, $af, $b1, $30, $d2, $11, $65, $8c, $8b, $8a, $89, $88, $87, $86, $85, $84
    db $83, $82, $81, $11, $64, $8c, $8b, $8a, $89, $88, $87, $86, $85, $84, $83, $82
    db $81, $11, $63, $8c, $8b, $8a, $89, $88, $87, $86, $85, $84, $83, $82, $81, $11
    db $62, $8c, $8b, $8a, $89, $88, $87, $86, $85, $84, $83, $82, $81, $a3, $11, $62
    db $8c, $8b, $8a, $89, $88, $87, $86, $85, $84, $83, $82, $81, $ff

    rst $38
    rst $38

    db $eb, $71, $00, $ec, $71, $80, $0a, $72, $00, $0b, $72, $00

    rst $38

    db $7a, $30, $d0, $b0, $af, $11, $62, $88, $89, $8a, $8b, $8c, $f3, $f3, $61, $86
    db $85, $84, $83, $82, $81, $a6, $61, $86, $85, $84, $83, $82, $81, $ff

    rst $38
    rst $38

    db $18, $72, $00, $19, $72, $80, $42, $72, $00, $43, $72, $00

    rst $38

    db $7a, $af, $b1, $30, $d1, $11, $62, $81, $82, $83, $84, $85, $86, $88, $62, $85
    db $8c, $63, $85, $8c, $64, $85, $8c, $65, $85, $8c, $a6, $64, $85, $8c, $65, $85
    db $8c, $a3, $64, $85, $8c, $65, $85, $8c, $ff

    rst $38
    rst $38
    ld d, b
    ld [hl], d
    nop
    ld d, c
    ld [hl], d
    add b
    add l
    ld [hl], d
    nop
    add [hl]
    ld [hl], d
    nop
    rst $38
    ld a, d
    xor a
    cp [hl]
    jr nc, @-$2c

    ld h, d
    ld de, $8685
    add a
    adc b
    di
    di
    add d
    add d
    di
    di
    di
    di
    di
    di
    ld de, $8685
    add a
    adc b

jr_00f_726b:
    di
    di
    add d
    add d
    di
    di
    di
    di
    di
    di
    ld de, $8685
    add a
    adc b
    di
    di
    add d
    add d
    di
    di
    di
    di
    di
    di
    rst $38
    rst $38
    rst $38
    sub e
    ld [hl], d
    nop
    sub h
    ld [hl], d
    add b
    ret c

    ld [hl], d
    nop
    reti


    ld [hl], d
    nop
    rst $38
    ld a, d
    xor a
    or c
    jr nc, jr_00f_726b

    ld h, d
    adc h
    adc e
    adc d
    adc c
    adc b
    ld h, e
    adc h
    adc e
    adc d
    adc c
    adc b
    ld h, h
    adc h
    adc e
    adc d
    adc c
    adc b
    ld h, l
    adc h
    adc e
    adc d
    adc c
    adc b
    ld h, h
    adc h
    adc e
    adc d
    adc c
    adc b
    ld h, e
    adc h
    adc e
    adc d
    adc c
    adc b
    ld h, h
    adc h
    adc e
    adc d
    adc c
    adc b
    ld h, l
    adc h
    adc e
    adc d
    adc c
    adc b
    and [hl]
    ld h, l
    adc h
    adc e
    adc d
    adc c
    adc b
    and e
    ld h, l
    adc h
    adc e
    adc d
    adc c
    adc b
    rst $38
    rst $38
    rst $38

    db $e6, $72, $00, $e7, $72, $80, $19, $73, $00, $1a, $73, $00

    rst $38

    db $7a, $af, $b1, $30, $d2, $11, $62, $85, $86, $87, $88, $65, $8b, $8a, $89, $88
    db $87, $86, $85, $84, $82, $81, $a6, $11, $65, $87, $86, $85, $84, $82, $81, $a3
    db $11, $65, $87, $86, $85, $84, $82, $81, $a1, $11, $65, $87, $86, $85, $84, $82
    db $81, $ff

    rst $38
    rst $38

    db $27, $73, $00, $28, $73, $80, $70, $73, $00, $71, $73, $00

    rst $38

    db $79, $af, $b1, $d2, $30, $11, $62, $83, $82, $81, $64, $8c, $8b, $8a, $89, $88
    db $11, $65, $81, $64, $8c

    adc e
    adc d
    adc c
    adc b
    add a
    add [hl]
    ld de, $8265
    add c
    ld h, h
    adc h
    adc e
    adc d
    adc c
    adc b
    add a
    ld de, $8365
    add d
    add c
    ld h, h
    adc h
    adc e
    adc d
    adc c
    adc b
    and [hl]
    ld de, $8465
    add e
    add d
    add c
    ld h, h
    adc e
    adc d
    adc c
    and e
    ld de, $8565
    add h
    add e
    add d
    add c
    ld h, h
    adc h
    adc e
    adc d
    rst $38
    rst $38
    ld a, [hl]
    ld [hl], e
    nop
    ld a, a
    ld [hl], e
    add b
    db $fc
    ld [hl], e
    nop
    db $fd
    ld [hl], e
    nop
    rst $38
    ld a, d
    jp nc, $b030

    xor a
    ld de, $8165
    add l
    adc b
    add l
    add c
    ld de, $8365
    add a
    adc d
    add a
    add e
    ld de, $8565
    adc c
    adc h
    adc c
    add l
    ld de, $8765
    adc e
    ld h, l
    add d
    ld h, h
    adc e
    and [hl]
    ld de, $8165
    add l
    adc b
    add l
    add c
    ld de, $8365
    add a
    adc d
    add a
    add e
    ld de, $8565
    adc c
    adc h
    adc c
    add l
    ld de, $8765
    adc e
    ld h, l
    add d
    ld h, h
    adc e
    and e
    ld de, $8165
    add l
    adc b
    add l
    add c
    ld de, $8365
    add a
    adc d
    add a
    add e
    ld de, $8565
    adc c
    adc h
    adc c
    add l
    ld de, $8765
    adc e
    ld h, l
    add d
    ld h, h
    adc e
    and d
    ld de, $8165
    add l

jr_00f_73e2:
    adc b
    add l
    add c
    ld de, $8365
    add a
    adc d
    add a
    add e
    ld de, $8565
    adc c
    adc h
    adc c
    add l
    ld de, $8765
    adc e
    ld h, l
    add d
    ld h, h
    adc e
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld [hl], h
    nop
    dec bc
    ld [hl], h
    add b
    add hl, sp
    ld [hl], h
    nop
    ld a, [hl-]
    ld [hl], h
    nop
    rst $38
    ld a, d
    xor a
    or c
    jr nc, jr_00f_73e2

    ld de, $8165
    ld h, h
    adc b
    add l
    add c
    ld h, e
    adc h
    ld h, h
    add e
    adc b
    adc h
    ld de, $8166
    ld h, l
    adc b
    add l
    add c
    ld h, h
    adc h
    ld h, l
    add e
    adc b
    adc h
    and [hl]
    ld h, h
    adc h
    ld h, l
    add e
    adc b
    adc h
    and e
    ld h, h
    adc h
    ld h, l
    add e
    adc b
    adc h
    rst $38
    rst $38
    rst $38
    ld b, a
    ld [hl], h
    nop
    ld c, b
    ld [hl], h
    add b
    ld a, d
    ld [hl], h
    nop
    ld a, e
    ld [hl], h
    nop
    rst $38
    ld a, d
    xor a
    or c
    jr nc, @-$2c

    ld de, $8365
    add d
    add e
    add l
    add h
    add l
    add a
    add [hl]
    add a
    adc c
    adc b
    adc c
    adc e
    adc d
    adc e

jr_00f_745e:
    and [hl]
    ld de, $8965
    adc b
    adc c
    adc e
    adc d
    adc e
    and e
    ld de, $8965
    adc b
    adc c
    adc e
    adc d
    adc e
    and c
    ld de, $8965
    adc b
    adc c
    adc e
    adc d
    adc e
    rst $38
    rst $38
    rst $38
    adc b
    ld [hl], h
    nop
    adc c
    ld [hl], h
    add b
    and e
    ld [hl], h
    nop
    and h
    ld [hl], h
    nop
    rst $38

jr_00f_7489:
    ld a, d
    xor a
    or b
    jr nc, jr_00f_745e

    ld c, $65
    adc c
    add a
    add l
    adc h
    and [hl]
    ld c, $65
    adc c
    add a
    add l
    adc h
    and d
    ld c, $65
    adc c
    add a
    add l
    adc h
    rst $38
    rst $38
    rst $38
    or c
    ld [hl], h
    nop
    or d
    ld [hl], h
    add b
    adc $74
    nop
    rst $08
    ld [hl], h
    nop
    rst $38
    ld a, d
    xor a
    or c
    jr nc, jr_00f_7489

    ld h, l
    ld c, $8a
    di
    ld h, h
    adc d
    di
    xor b
    ld h, l
    ld c, $8a
    di
    ld h, h
    adc d
    ld h, l
    adc d
    and [hl]
    adc d
    and e
    adc d
    and c
    adc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
