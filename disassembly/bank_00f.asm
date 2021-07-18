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


    ld [hl], b
    ld b, a
    call c, $bd43
    ld b, a
    sbc [hl]
    ld b, a
    xor [hl]
    ld b, a

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


    sub b
    ld b, l
    sub b
    ld b, l
    and $44
    ld d, l
    ld b, h
    xor d
    ld b, l
    xor d
    ld b, l
    or a
    ld b, [hl]
    add l
    ld b, h
    inc l
    ld b, [hl]
    inc c
    ld b, [hl]
    ld c, l
    ld b, l
    add hl, bc
    ld b, l
    add hl, bc
    ld b, l
    ret nz

    ld b, h
    inc h
    ld b, l
    inc b
    ld b, h
    ld h, l
    ld b, l
    ld a, c
    ld b, l
    sbc b
    ld b, h
    pop de
    ld b, l
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
    db $db
    ld b, [hl]
    add sp, $46
    inc b
    ld b, a
    ld e, $47
    and d
    ld b, h
    db $eb
    ld b, l
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


    ld de, $4422
    adc b
    rst $38
    rrca
    ldh a, [$79]
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


    ld bc, $0005
    nop
    inc de
    rla
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


    cp b
    ld c, b
    add $48
    call nc, $dd48
    ld c, b
    ld [c], a
    ld c, b
    ldh a, [rOBP0]
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


    inc l
    nop
    sbc l
    nop
    rlca
    ld bc, $016b
    ret


    ld bc, $0223
    ld [hl], a
    ld [bc], a
    rst $00
    ld [bc], a
    ld [de], a
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    jp c, Jump_000_1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    dec bc
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
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


    db $e3
    ld c, c
    xor $49
    ld sp, hl
    ld c, c
    ld [$134a], sp
    ld c, d
    ld e, $4a
    add hl, hl
    ld c, d
    jr c, jr_00f_4a2d

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

jr_00f_4a2d:
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
    ld bc, $7080
    ld h, b
    ld b, b
    jr c, jr_00f_4add

    jr nz, @+$17

    inc e
    jr jr_00f_4ac2

    ld a, [bc]
    ld c, $0c
    ld [$0605], sp
    inc b
    ld [bc], a
    ld bc, $6270
    ld d, h
    jr c, jr_00f_4af1

    ld a, [hl+]
    inc e

jr_00f_4ac2:
    ld [de], a
    jr jr_00f_4ada

    ld c, $09
    inc c
    ld a, [bc]
    rlca
    inc b
    dec b
    inc bc
    ld bc, $6001
    ld d, h
    ld c, b
    jr nc, jr_00f_4afe

    inc h
    jr @+$12

    dec d
    ld [de], a
    inc c

jr_00f_4ada:
    ld [$090a], sp

jr_00f_4add:
    ld b, $04
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

jr_00f_4af1:
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $4000
    jr c, jr_00f_4b2a

    jr nz, jr_00f_4b18

    jr jr_00f_4b0e

jr_00f_4afe:
    ld a, [bc]
    ld c, $0c
    ld [$0705], sp
    ld b, $04
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $3000
    ld a, [hl+]
    inc h

jr_00f_4b0e:
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
    ld bc, $0000
    jr nz, jr_00f_4b3d

    jr jr_00f_4b33

    ld c, $0c

jr_00f_4b25:
    ld [$0705], sp
    ld b, $04

jr_00f_4b2a:
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0101
    nop
    nop

jr_00f_4b33:
    db $10
    ld c, $0c
    ld [$0607], sp
    inc b
    ld [bc], a
    inc bc
    inc bc

jr_00f_4b3d:
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
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
    ld e, $4d
    ld [hl+], a
    ld c, l
    ld h, $4d
    dec hl
    ld c, l
    ld l, $4d
    ld [hl-], a
    ld c, l
    ld [hl], $4d
    ld a, [hl-]
    ld c, l
    ld a, $4d
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
    ld e, h
    ld c, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp c
    ld c, l
    ret


    ld c, l
    reti


    ld c, l
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
    ldh a, [rIE]
    nop
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    add hl, bc
    rrca
    ldh a, [rIE]
    rst $38
    jr nz, @+$01

    rst $38
    pop af
    rrca
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
    and c
    ld b, $00
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
    pop af
    inc b
    nop
    rst $38
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
    jp c, $0198

    ld [hl], b
    inc de
    ld d, a
    sbc e
    rst $18
    ei
    ld [hl], e
    inc bc
    ld a, e
    db $fd
    adc c
    ld [hl], l
    ld sp, $0000
    nop
    ld bc, $3512
    adc d
    call $ffee
    rst $38
    cp $ed
    jp z, Jump_000_3285

    ld de, $0100
    inc hl
    ld d, [hl]
    ld a, b
    sbc c
    sbc b
    db $76
    ld h, a
    sbc d
    rst $18
    cp $c9
    add l
    ld b, d
    ld de, $1200
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
    ld b, b
    ld d, h
    ld c, l
    ld d, h
    dec h
    ld e, b
    jp nz, Jump_000_0a5b

    ld e, [hl]
    db $d3
    ld h, [hl]
    ld b, b
    ld h, a
    ldh [rBCPS], a
    ld e, l
    ld l, d
    sub c
    ld l, d
    ret


    ld l, d
    jr jr_00f_5483

    ld d, a
    ld l, e
    xor c
    ld l, e
    ld a, h
    ld l, h
    ld a, e
    ld [hl], b
    or b
    ld [hl], b
    db $db
    ld [hl], b
    dec b
    ld [hl], c
    ld l, $71
    add e
    ld [hl], c
    rst $18
    ld [hl], c
    inc c
    ld [hl], d
    ld b, h
    ld [hl], d
    add a
    ld [hl], d
    jp c, Jump_000_1b72

    ld [hl], e
    ld [hl], d
    ld [hl], e
    cp $73
    dec sp
    ld [hl], h
    ld a, h
    ld [hl], h
    and l
    ld [hl], h
    ld c, h
    ld d, h
    rst $38
    ld c, h
    ld d, h
    rst $38
    ld c, h
    ld d, h
    rst $38
    ld c, h
    ld d, h
    rst $38
    rst $38
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
    jp nc, Jump_00f_6330

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
    adc $5b
    add b
    ld c, c
    ld e, h
    add b
    ld l, [hl]
    ld e, l
    add b
    db $eb
    ld e, l
    add b
    ld [hl], l
    or b
    xor [hl]
    pop de
    jr nc, jr_00f_5bd7

    ld h, e
    adc h
    ld h, h

jr_00f_5bd7:
    add e
    ld h, h
    inc bc
    add c
    ld h, e
    adc d
    inc bc
    ld h, e
    adc h
    ld h, h
    add e
    inc bc
    ld h, h
    add c
    ld b, $63
    adc h
    adc d
    ld h, h
    ld b, $f3
    adc b
    add a
    add l
    add e
    inc bc
    adc h
    ld a, [bc]
    di
    adc h
    ld h, l
    inc bc
    add c
    ld a, [bc]
    di
    ld h, h
    adc h
    adc d
    adc b
    inc bc
    adc d
    add e
    ld b, $65
    di
    add e
    add c
    ld h, h
    adc h
    ld [bc], a
    ld h, l
    add c
    ld a, [bc]
    add c
    add e
    ld h, l
    inc bc
    add l
    ld b, $81
    add l
    nop
    ld h, l
    add e
    ld h, h
    ld b, $f3
    adc b
    add a
    add l
    add e
    inc bc
    adc h
    ld a, [bc]
    di
    adc h
    ld h, l
    inc bc
    add c
    ld a, [bc]
    di
    ld h, h
    adc h
    adc d
    adc b
    inc bc
    adc d
    add e
    ld b, $65
    di
    add e
    add c
    ld h, h
    adc h
    ld [bc], a
    ld h, l
    add c
    ld a, [bc]
    add c
    add e
    ld h, l
    inc bc
    add l
    ld b, $81
    add l
    nop
    ld h, l
    add e
    ld a, [$5bcf]
    rst $38
    ld [hl], l
    or c
    xor e
    jp nc, RST_30

    di
    di
    inc bc
    adc b
    add l
    adc d
    add e
    ld h, e
    ld a, [bc]
    adc b
    ld c, $8c
    adc d
    ld a, [bc]
    adc h
    adc d
    ld c, $8c
    adc d
    ld a, [bc]
    adc h
    adc d
    adc b
    ld a, [bc]
    add e
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add e
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add a
    adc b
    ld a, [bc]
    ld h, e
    add l
    ld h, h
    ld c, $81
    ld h, e
    adc h
    ld a, [bc]
    ld h, h
    add c
    ld h, e
    add l
    ld c, $64
    add c
    ld h, e
    adc h
    ld a, [bc]
    ld h, h
    add c
    ld h, e
    adc h
    adc d
    ld a, [bc]
    ld h, e
    add e
    ld c, $8a
    adc b
    ld a, [bc]
    adc d
    add e
    ld c, $8a
    adc b
    ld a, [bc]
    adc d
    adc b
    add a
    ld a, [bc]
    ld h, e
    add e
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add e
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add a
    adc b
    ld a, [bc]
    ld h, e
    add l
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add l
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add a
    adc b
    ld a, [bc]
    ld h, e
    add c
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add c
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add a
    adc b
    ld a, [bc]
    ld h, e
    add e
    ld c, $8a
    adc b
    ld a, [bc]
    adc d
    add e
    ld c, $8a
    adc b
    ld a, [bc]
    adc d
    ld c, $83
    add l
    add a
    add e
    ld h, e
    ld a, [bc]
    adc b
    ld c, $8c
    adc d
    ld a, [bc]
    adc h
    adc d
    ld c, $8c
    adc d
    ld a, [bc]
    adc h
    adc d
    adc b
    ld a, [bc]
    add e
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add e
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add a
    adc b
    ld a, [bc]
    ld h, e
    add l
    ld h, h
    ld c, $81
    ld h, e
    adc h
    ld a, [bc]
    ld h, h
    add c
    ld h, e
    add l
    ld c, $64
    add c
    ld h, e
    adc h
    ld a, [bc]
    ld h, h
    add c
    ld h, e
    adc h
    adc d
    ld a, [bc]
    ld h, e
    add e
    ld c, $8a
    adc b
    ld a, [bc]
    adc d
    add e
    ld c, $8a
    adc b
    ld a, [bc]
    adc d
    adc b
    add a
    ld a, [bc]
    ld h, e
    add e
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add e
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add a
    adc b
    ld a, [bc]
    ld h, e
    add l
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add l
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add a
    adc b
    ld a, [bc]
    ld h, e
    add c
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add c
    ld c, $88
    add a
    ld a, [bc]
    adc b
    add a
    adc b
    ld a, [bc]
    ld h, e
    add e
    ld c, $8a
    adc b
    ld a, [bc]
    adc d
    add e
    ld c, $8a
    adc b
    ld a, [bc]
    adc d
    ld c, $83
    add l
    add a
    adc b
    ld a, [$5c4a]
    rst $38
    ld [hl], l
    or c
    inc h
    xor l
    nop
    di
    di
    di
    di
    ld h, d
    inc bc
    adc b
    ld b, $87
    add l
    ld h, d
    inc bc
    add e
    ld b, $63
    add e
    ld h, d
    add e
    ld b, $63
    add c
    ld h, d
    adc h
    adc d
    adc b
    inc bc
    ld h, d
    add e
    ld b, $87
    adc d
    inc bc
    ld h, d
    adc h
    ld b, $63
    add e
    ld h, d
    adc h
    ld b, $63
    add l
    add e
    add c
    ld h, d
    adc h
    inc bc
    ld h, d
    adc d
    ld b, $63
    add c
    adc d
    ld b, $63
    add e
    add c
    ld h, d
    adc h
    adc d
    ld h, d
    inc bc
    adc b
    ld b, $87
    add l
    ld h, d
    inc bc
    add e
    ld b, $63
    add e
    ld h, d
    add e
    ld b, $63
    add c
    ld h, d
    adc h
    adc d
    adc b
    inc bc
    ld h, d
    add e
    ld b, $87
    adc d
    inc bc
    ld h, d
    adc h
    ld b, $63
    add e
    ld h, d
    adc h
    ld b, $63
    add l
    add e
    add c
    ld h, d
    adc h
    inc bc
    ld h, d
    adc d
    ld b, $63
    add c
    adc d
    ld b, $63
    add e
    add c
    ld h, d
    adc h
    adc d
    ld a, [$5d72]
    rst $38
    ld [hl], l
    jr nc, jr_00f_5dfc

    or h
    xor d
    add c
    di
    add c
    add c
    or h
    xor d
    add c
    di
    add c
    add c
    or h
    xor d

jr_00f_5dfc:
    add c
    di
    add c
    add c
    or h
    xor d
    add c
    add c
    add c
    add c
    ld a, [$5ded]
    rst $38
    ld d, $5e
    add b
    ld sp, $805f
    add c
    ld h, c
    add b
    ld a, [c]
    ld h, d
    add b
    ld [hl], l
    or b
    xor [hl]
    ret nc

    jr nc, jr_00f_5e80

    ld c, $83
    add l
    add [hl]
    adc b
    ld [bc], a
    adc d
    ld a, [bc]
    di
    adc b
    ld h, l
    dec b
    add c
    ld a, [bc]
    ld h, h
    adc e
    adc d
    ld c, $8b
    adc d
    ld a, [bc]
    adc b
    add [hl]
    ld a, [bc]
    adc b
    ld b, $8a
    nop
    add l
    ld a, [bc]
    di
    ld b, $f3
    ld h, h
    ld c, $81
    add e
    add h
    add [hl]
    ld h, h
    ld [bc], a
    adc b
    ld a, [bc]
    di
    add [hl]
    ld h, h
    dec b
    adc e
    ld a, [bc]
    adc c
    adc b
    ld c, $89
    adc b
    ld a, [bc]
    add [hl]
    add h
    ld a, [bc]
    add [hl]
    ld b, $88
    nop
    add e
    dec b
    di
    or b
    xor [hl]
    ret nc

    jr nc, @+$66

    ld c, $83
    add l
    add [hl]
    adc b
    ld [bc], a
    adc d
    ld a, [bc]
    di
    adc b
    ld h, l
    dec b
    add c
    ld a, [bc]
    ld h, h
    adc e
    adc d
    ld c, $8b
    adc d
    ld a, [bc]
    adc b
    add [hl]
    ld a, [bc]
    adc b
    ld b, $8a
    nop
    add l
    ld a, [bc]

jr_00f_5e80:
    di
    ld b, $f3
    ld h, h
    ld c, $81
    add e
    add h
    add [hl]
    ld h, h
    ld [bc], a
    adc b
    ld a, [bc]
    di
    add [hl]
    ld h, h
    dec b
    adc e
    ld a, [bc]
    adc c
    adc b
    ld c, $89
    adc b
    ld a, [bc]
    add [hl]
    add h
    ld a, [bc]
    add [hl]
    ld b, $88
    nop
    add e
    ld c, $f3
    di
    di
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
    ld [hl], l
    or b
    xor l
    pop de
    jr nc, jr_00f_5f3d

    di
    or b
    xor l
    pop de
    jr nc, jr_00f_5fa0

jr_00f_5f3d:
    ld a, [bc]
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    ld h, e
    ld a, [bc]
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    ld h, e
    ld a, [bc]
    add e
    adc d
    add e
    adc d
    add e
    adc d
    add e
    adc d
    ld h, e
    ld a, [bc]
    add d
    adc d
    add d
    adc d
    add d
    adc d
    add d
    adc d
    ld h, e
    ld a, [bc]
    add h
    adc b
    add h
    adc b
    add h
    adc b
    add h
    adc b
    ld h, e
    ld a, [bc]
    add h
    adc b
    add h
    adc b
    add h
    adc b
    add h
    adc b
    ld h, e
    ld a, [bc]
    add c
    adc b
    add c
    adc b
    add c
    adc b
    add c
    adc b
    ld a, [bc]
    ld h, d
    adc h
    ld h, e
    adc b
    ld h, d
    adc h
    ld h, e
    adc b
    ld h, d
    adc h
    ld h, e
    adc b
    ld h, d
    adc h
    ld h, e
    adc b
    ld h, e
    ld a, [bc]
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    ld h, e
    ld a, [bc]
    add [hl]

jr_00f_5fa0:
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    ld h, e
    ld a, [bc]
    add e
    adc d
    add e
    adc d
    add e
    adc d
    add e
    adc d
    ld h, e
    ld a, [bc]
    add d
    adc d
    add d
    adc d
    add d
    adc d
    add d
    adc d
    ld h, e
    ld a, [bc]
    add h
    adc b
    add h
    adc b
    add h
    adc b
    add h
    adc b
    ld h, e
    ld a, [bc]
    add h
    adc b
    add h
    adc b
    add h
    adc b
    add h
    adc b
    ld h, e
    ld a, [bc]
    add c
    adc b
    add c
    adc b
    add c
    adc b
    add c
    adc b
    ld a, [bc]
    ld h, d
    adc h
    ld h, e
    adc b
    ld h, d
    adc h
    ld h, e
    adc b
    ld h, d
    adc h
    ld h, e
    adc b
    ld h, d
    adc h
    ld h, e
    adc b
    nop
    di
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
    ld [hl], l
    or c
    ld [hl+], a
    xor l
    ld b, $f3
    ld h, d
    add hl, bc
    add e
    add [hl]
    ld b, $8a
    add [hl]
    ld a, [bc]
    adc d
    ld h, d
    add hl, bc
    add e
    add [hl]
    ld b, $8a
    add [hl]
    ld a, [bc]
    adc d
    ld h, c
    add hl, bc
    adc d
    ld h, d
    add l
    ld b, $88
    ld b, $85
    ld a, [bc]
    adc b
    ld h, c
    add hl, bc
    adc d
    ld h, d
    add d
    ld b, $85
    add d
    ld a, [bc]
    add l
    ld h, d
    add hl, bc
    add c
    add h
    ld b, $88
    add h
    ld a, [bc]
    adc b
    ld h, d
    add hl, bc
    add c
    add h
    ld b, $88
    add h
    ld a, [bc]
    adc b
    ld h, c
    add hl, bc
    adc b
    ld h, d
    add e
    ld b, $86
    add e
    ld a, [bc]
    add [hl]
    ld h, c
    add hl, bc
    adc b
    adc h
    ld h, d
    ld b, $83
    ld h, c
    ld b, $8c
    ld a, [bc]
    ld h, d
    add e
    ld h, d
    add hl, bc
    add e
    add [hl]
    ld b, $8a
    add [hl]
    ld a, [bc]
    adc d
    ld h, d
    add hl, bc
    add e
    add [hl]
    ld b, $8a
    add [hl]
    ld a, [bc]
    adc d
    ld h, c
    add hl, bc
    adc d
    ld h, d
    add l
    ld b, $88
    ld b, $85
    ld a, [bc]
    adc b
    ld h, c
    add hl, bc
    adc d
    ld h, d
    add d
    ld b, $85
    add d
    ld a, [bc]
    add l
    ld h, d
    add hl, bc
    add c
    add h
    ld b, $88
    add h
    ld a, [bc]
    adc b
    ld h, d
    add hl, bc
    add c
    add h
    ld b, $88
    add h
    ld a, [bc]
    adc b
    ld h, c
    add hl, bc
    adc b
    ld h, d
    add e
    ld b, $86
    add e
    ld a, [bc]
    add [hl]
    ld h, c
    add hl, bc
    adc b
    adc h
    ld h, d
    ld b, $83
    ld h, c
    ld b, $8c
    ld a, [bc]
    ld h, d
    add e
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
    ld [hl], l
    ld c, $be
    xor [hl]
    add e
    add e
    add e
    add e
    ld [hl], l
    ld c, $b8
    xor [hl]
    add e
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c

Jump_00f_6330:
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add e
    di
    add c
    add c
    cp [hl]
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
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    add c
    or h
    xor [hl]
    add l
    cp b
    xor [hl]
    add c
    or h
    xor [hl]
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
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

    jr nc, jr_00f_6749

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
    ld c, h
    ld h, a
    add b
    add hl, bc
    ld l, b
    add b
    xor h
    ld l, b
    add b

jr_00f_6749:
    call nz, $8068
    ld [hl], l
    or b
    xor [hl]
    ret nc

    jr nc, jr_00f_6752

jr_00f_6752:
    di
    di
    ld h, h
    ld b, $f3
    add c
    dec b
    add [hl]
    ld h, l
    ld a, [bc]
    add e
    inc bc
    ld h, l
    add c
    ld a, [bc]
    and [hl]
    add c
    xor [hl]
    ld h, l
    add c
    ld h, h
    adc e
    ld h, l
    add c
    inc bc
    ld h, l
    add e
    ld a, [bc]
    and [hl]
    add e
    xor [hl]
    add e
    add c
    ld h, h
    adc e
    dec b
    ld h, l
    add c
    ld c, $81
    add e
    dec b
    ld h, l
    add c
    and [hl]
    ld c, $81
    add e
    dec b
    ld h, l
    add c
    and e
    ld c, $81
    add e
    dec b
    add c
    xor [hl]
    ld a, [bc]
    ld h, l
    add e
    dec b
    ld h, l
    add c
    ld a, [bc]
    and [hl]
    add e
    add e
    xor [hl]
    ld h, l
    add c
    ld h, h
    adc e
    ld h, l
    add c
    inc bc
    ld h, l
    add e
    ld a, [bc]
    and [hl]
    add e
    xor [hl]
    add e
    add c
    ld h, h
    adc e
    add hl, bc
    ld h, l
    add c
    ld c, $86
    inc bc
    add [hl]
    ld b, $88
    inc bc
    ld h, l
    add [hl]
    ld a, [bc]
    and [hl]
    add [hl]
    xor [hl]
    ld h, l
    add [hl]
    add h
    add [hl]
    add hl, bc
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
    inc bc
    add [hl]
    ld a, [bc]
    add c
    add e
    inc bc
    ld h, l
    add c
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
    ld [hl], l
    or b
    xor l
    jp nc, RST_30

    di
    di
    ld b, $f3
    ld h, e
    adc b
    dec b
    ld h, h
    add c
    ld a, [bc]
    add [hl]
    inc bc
    add [hl]
    ld a, [bc]
    and [hl]
    add [hl]
    xor [hl]
    add [hl]
    add [hl]
    add [hl]
    inc bc
    add [hl]
    ld a, [bc]
    and [hl]
    add [hl]
    xor [hl]
    add [hl]
    add [hl]
    add [hl]
    nop
    add [hl]
    ld b, $a6
    add [hl]
    and e
    add [hl]
    and d
    add [hl]
    and c
    add [hl]
    xor [hl]
    ld h, h
    inc bc
    add [hl]
    ld a, [bc]
    and [hl]
    add [hl]
    xor [hl]
    add [hl]
    add [hl]
    add [hl]
    ld h, h
    inc bc
    add [hl]
    ld a, [bc]
    and [hl]
    add [hl]
    xor [hl]
    add [hl]
    add [hl]
    add [hl]
    ld b, $64
    add [hl]
    inc bc
    ld h, l
    add c
    ld b, $65
    add c
    inc bc
    ld h, l
    add c
    ld a, [bc]
    and [hl]
    add c
    di
    ld b, $f3
    xor [hl]
    add hl, bc
    ld h, l

jr_00f_6861:
    add h
    ld c, $64
    adc e
    inc bc
    adc e
    ld b, $65
    add h
    inc bc
    ld h, l
    add h
    ld a, [bc]
    and [hl]
    add h
    xor [hl]
    ld h, l
    add h
    add h
    add h
    add hl, bc
    add h
    ld c, $65
    add c
    inc bc
    ld h, l
    add c
    ld b, $a6
    add c
    xor [hl]
    nop
    di
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
    ld [hl], l
    xor [hl]
    jr nc, jr_00f_6861

    ld [hl+], a
    ld a, [bc]
    ld h, c
    add [hl]
    di
    add [hl]
    di
    ld c, $86
    di
    add [hl]
    di
    add [hl]
    di
    add [hl]
    di
    ld a, [$68b1]
    rst $38
    ld [hl], l
    ld c, $b4
    xor [hl]
    add c
    di
    add c
    add c
    add c
    di
    add c
    add c
    add c
    di
    add c
    add c
    add c
    di
    add c
    di
    add c
    di
    add c
    di
    ld a, [$68c5]
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
    ld l, c
    ld l, d
    add b
    ld a, h
    ld l, d
    add b
    adc a
    ld l, d
    add b
    sub b
    ld l, d
    add b
    db $76
    or b
    xor [hl]
    ret nc

    jr nc, jr_00f_6a7d

    ld h, h
    add c
    adc d
    adc b
    adc d
    ld b, $88
    and [hl]
    ld a, [bc]
    adc b
    and e
    adc b
    rst $38
    db $76

jr_00f_6a7d:
    or b
    xor l
    pop de
    jr nc, jr_00f_6a90

    di
    ld h, h
    add [hl]
    add l
    add [hl]
    ld b, $85
    and [hl]
    ld a, [bc]
    add l
    and e
    add l
    rst $38
    rst $38

jr_00f_6a90:
    rst $38
    sbc l
    ld l, d
    add b
    or c
    ld l, d
    add b
    rst $00
    ld l, d
    add b
    ret z

    ld l, d
    add b
    ld a, b
    or b
    xor [hl]
    ret nc

    jr nc, jr_00f_6aa8

    ld h, h
    add [hl]
    ld a, [bc]
    add l
    add [hl]

jr_00f_6aa8:
    ld h, l
    dec b
    add c
    ld a, [bc]
    and [hl]
    add c
    and e
    add c
    rst $38
    ld a, b
    or b
    xor l
    pop de
    jr nc, jr_00f_6ac1

    ld h, h
    add c
    add [hl]
    adc d
    ld h, l
    add c
    ld h, h
    add [hl]
    dec b
    adc d

jr_00f_6ac1:
    ld a, [bc]
    and [hl]
    adc d
    and e
    adc d
    rst $38
    rst $38
    rst $38
    push de
    ld l, d
    add b
    add sp, $6a
    add b
    inc bc
    ld l, e
    add b
    rla
    ld l, e
    add b
    ld [hl], h
    or b
    xor [hl]
    ret nc

    jr nc, jr_00f_6ade

    ld h, h
    adc h
    adc b

jr_00f_6ade:
    adc e
    nop
    ld h, l
    add c
    ld a, [bc]
    and [hl]
    add c
    and e
    add c
    rst $38
    ld [hl], h
    or b
    xor l
    pop de
    jr nc, jr_00f_6af4

    ld h, h
    add l
    ld h, e
    adc b
    ld h, h
    add e

jr_00f_6af4:
    ld h, e
    adc h
    ld h, h
    add e
    ld h, e
    adc e
    nop
    ld h, h
    add l
    ld a, [bc]
    and [hl]
    add l
    and e
    add l
    rst $38
    ld [hl], h
    or c
    ld [hl+], a
    xor [hl]
    jr nc, jr_00f_6b0c

    ld h, d
    add c
    ld h, c

jr_00f_6b0c:
    adc b
    adc e
    nop
    ld h, d
    add c
    ld a, [bc]
    and [hl]
    add c
    and e
    add c
    rst $38
    rst $38
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
    ld h, e
    ld l, e
    add b
    add [hl]
    ld l, e
    add b
    and a
    ld l, e
    add b
    xor b
    ld l, e
    add b
    ld [hl], l
    or b
    xor [hl]
    ret nc

    jr nc, jr_00f_6b73

    ld h, l
    add c
    ld h, h
    add l
    adc b
    ld h, l
    add c
    ld a, [bc]
    ld h, h
    add h

jr_00f_6b73:
    adc b
    ld h, l
    add c
    ld h, h
    add h
    ld h, h
    add e
    adc b
    ld h, l
    add c
    ld h, h
    add c
    ld h, h
    and [hl]
    ld a, [bc]
    add c
    and e
    add c
    rst $38
    ld [hl], l
    or b
    xor l
    pop de
    jr nc, jr_00f_6b96

    ld h, h
    adc b
    ld h, e
    adc b
    ld h, h
    add e
    adc b
    ld h, e
    adc e
    ld h, h

jr_00f_6b96:
    add e
    adc b
    ld h, e
    adc e
    ld h, e
    adc d
    ld h, h
    add e
    adc b
    ld h, e
    adc b
    and [hl]
    ld a, [bc]
    adc b
    and e
    adc b
    rst $38
    rst $38
    rst $38
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

jr_00f_705f:
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
    add a
    ld [hl], b
    nop
    adc b
    ld [hl], b
    add b
    xor [hl]
    ld [hl], b
    nop
    xor a
    ld [hl], b
    nop
    rst $38
    ld a, d
    xor a
    or c
    jr nc, jr_00f_705f

    ld c, $64
    add c
    ld h, e
    adc b
    adc d
    ld h, h

jr_00f_7094:
    add c
    ld c, $65
    ld h, h
    adc b
    adc d
    ld h, l
    add c
    and h
    ld c, $65
    ld h, h
    adc b
    adc d
    ld h, l
    add c
    and e
    ld c, $65
    ld h, h
    adc b
    and d
    adc d
    ld h, l
    add c
    rst $38
    rst $38
    rst $38
    cp h
    ld [hl], b
    nop
    cp l
    ld [hl], b
    add b
    reti


    ld [hl], b
    nop
    jp c, Jump_000_0070

    rst $38
    ld a, d
    xor a
    or c
    jr nc, jr_00f_7094

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
    rst $20
    ld [hl], b
    nop
    add sp, $70
    add b
    inc bc
    ld [hl], c
    nop
    inc b
    ld [hl], c
    nop
    rst $38
    ld a, e
    or c
    jp nc, $af30

    ld h, c
    ld b, $88
    ld c, $62
    add c
    adc b
    adc h
    ld h, e
    add e
    add [hl]
    adc d
    and d
    ld c, $62
    add c
    adc b
    adc h
    ld h, e
    add e
    add [hl]
    adc d
    rst $38
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

jr_00f_7112:
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
    ld a, [hl-]
    ld [hl], c
    nop
    dec sp
    ld [hl], c
    add b
    add c
    ld [hl], c
    nop
    add d
    ld [hl], c
    nop
    rst $38
    ld a, d
    xor a
    or c
    jr nc, jr_00f_7112

    dec bc
    ld h, h
    add e
    ld h, l
    add e
    adc d
    ld h, h
    add e
    ld h, l
    add e
    adc d
    dec bc
    ld h, h
    add e
    ld h, l
    add e
    adc d
    ld h, h
    add e
    ld h, l
    add e
    adc d
    and [hl]
    dec bc
    ld h, h
    add e
    ld h, l
    add e
    adc d
    and l
    dec bc
    ld h, h
    add e
    ld h, l
    add e
    adc d
    and h
    dec bc
    ld h, h

jr_00f_7167:
    add e
    ld h, l
    add e
    adc d
    and e
    dec bc
    ld h, h
    add e
    ld h, l
    add e
    adc d
    and d
    dec bc
    ld h, h
    add e
    ld h, l
    add e
    adc d
    and c
    dec bc
    ld h, h
    add e
    ld h, l
    add e
    adc d
    rst $38
    rst $38
    rst $38
    adc a
    ld [hl], c
    nop
    sub b
    ld [hl], c
    add b
    db $dd
    ld [hl], c
    nop
    sbc $71
    nop
    rst $38
    ld a, c
    xor a
    or c
    jr nc, jr_00f_7167

    ld de, $8c65
    adc e
    adc d
    adc c
    adc b
    add a
    add [hl]
    add l
    add h
    add e
    add d
    add c
    ld de, $8c64
    adc e
    adc d
    adc c
    adc b
    add a
    add [hl]
    add l
    add h
    add e
    add d
    add c
    ld de, $8c63
    adc e
    adc d
    adc c
    adc b
    add a
    add [hl]
    add l
    add h
    add e
    add d
    add c

jr_00f_71bf:
    ld de, $8c62
    adc e
    adc d
    adc c
    adc b
    add a
    add [hl]
    add l
    add h
    add e
    add d
    add c
    and e
    ld de, $8c62
    adc e
    adc d
    adc c
    adc b
    add a
    add [hl]
    add l
    add h
    add e
    add d
    add c
    rst $38
    rst $38
    rst $38
    db $eb
    ld [hl], c
    nop
    db $ec
    ld [hl], c
    add b
    ld a, [bc]
    ld [hl], d
    nop
    dec bc
    ld [hl], d
    nop
    rst $38
    ld a, d
    jr nc, jr_00f_71bf

jr_00f_71ef:
    or b
    xor a
    ld de, $8862
    adc c
    adc d
    adc e
    adc h
    di
    di
    ld h, c
    add [hl]
    add l
    add h
    add e
    add d
    add c
    and [hl]
    ld h, c
    add [hl]
    add l
    add h
    add e
    add d
    add c
    rst $38
    rst $38
    rst $38
    jr jr_00f_7280

    nop
    add hl, de
    ld [hl], d
    add b
    ld b, d
    ld [hl], d
    nop
    ld b, e
    ld [hl], d
    nop
    rst $38
    ld a, d
    xor a
    or c
    jr nc, jr_00f_71ef

    ld de, $8162
    add d
    add e
    add h
    add l
    add [hl]
    adc b
    ld h, d

jr_00f_7228:
    add l
    adc h
    ld h, e
    add l
    adc h
    ld h, h
    add l
    adc h
    ld h, l
    add l
    adc h
    and [hl]
    ld h, h
    add l
    adc h
    ld h, l
    add l
    adc h
    and e
    ld h, h
    add l
    adc h
    ld h, l
    add l
    adc h
    rst $38
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
    jr nc, jr_00f_7228

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

jr_00f_7280:
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

jr_00f_72be:
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
    and $72
    nop
    rst $20
    ld [hl], d
    add b
    add hl, de
    ld [hl], e
    nop
    ld a, [de]
    ld [hl], e
    nop
    rst $38
    ld a, d
    xor a
    or c
    jr nc, jr_00f_72be

    ld de, $8562
    add [hl]
    add a
    adc b
    ld h, l
    adc e
    adc d
    adc c
    adc b
    add a
    add [hl]
    add l
    add h
    add d
    add c
    and [hl]
    ld de, $8765
    add [hl]
    add l
    add h
    add d
    add c
    and e
    ld de, $8765
    add [hl]
    add l
    add h
    add d
    add c
    and c
    ld de, $8765
    add [hl]
    add l
    add h
    add d
    add c
    rst $38
    rst $38
    rst $38
    daa
    ld [hl], e
    nop
    jr z, @+$75

    add b
    ld [hl], b
    ld [hl], e
    nop
    ld [hl], c
    ld [hl], e
    nop
    rst $38
    ld a, c
    xor a
    or c
    jp nc, Jump_000_1130

    ld h, d
    add e
    add d
    add c
    ld h, h
    adc h
    adc e
    adc d
    adc c
    adc b
    ld de, $8165
    ld h, h
    adc h
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
