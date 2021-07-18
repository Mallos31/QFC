; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    xor a
    ld [$c558], a
    call Call_000_0783
    di
    call Call_000_0679
    ld hl, $0bfc
    ldh a, [$8b]
    cp $02
    call nc, Call_000_09b0
    ldh a, [$8b]
    cp $01
    jr nz, jr_004_407b

    ld hl, $54da
    ld bc, $0720
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $4af2
    ld de, $8800
    ld bc, $0090
    ld a, $00
    call Call_000_07ce
    ld hl, $5bfa
    call Call_000_0d52
    ld hl, $5bfa
    call Call_000_0d37
    ld hl, $9800
    call Call_000_098d
    ld hl, $4dbc
    inc hl
    ld de, $98f4
    ld a, $01
    call Call_000_080b
    ld hl, $4de3
    inc hl
    ld de, $9974
    ld a, $01
    call Call_000_080b
    ld hl, $4cb7
    inc hl
    ld de, $98f4
    ld a, $00
    call Call_000_080b
    ld hl, $4cde
    inc hl
    ld de, $9974
    ld a, $00
    call Call_000_080b
    jr jr_004_40b5

jr_004_407b:
    ld hl, $43e2
    ld de, $8000
    ld bc, $0710
    ld a, $00
    call Call_000_07ce
    ld hl, $4af2
    ld de, $8800
    ld bc, $0090
    ld a, $00
    call Call_000_07ce
    ld hl, $9800
    call Call_000_098d
    ld hl, $4bb2
    inc hl
    ld de, $98f4
    ld a, $00
    call Call_000_080b
    ld hl, $4bd9
    inc hl
    ld de, $9974
    ld a, $00
    call Call_000_080b

jr_004_40b5:
    ld hl, $c100
    ld [hl], $a0

Jump_004_40ba:
    inc hl
    ld [hl], $20
    inc hl
    ld [hl], $80
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $28
    inc hl
    ld [hl], $81
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $30
    inc hl
    ld [hl], $82
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $38
    inc hl
    ld [hl], $83
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $48
    inc hl
    ld [hl], $87
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $50
    inc hl
    ld [hl], $88
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $58
    inc hl
    ld [hl], $83
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $68
    inc hl
    ld [hl], $84
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $70
    inc hl
    ld [hl], $85
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $a0
    inc hl
    ld [hl], $78
    inc hl
    ld [hl], $86
    inc hl
    ld [hl], $06
    inc hl
    xor a
    ld [$cf0b], a
    ld a, $e8
    ld [$cf0c], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $1b
    ld [$cf1b], a
    ld [$cf1c], a
    ld [$cf1d], a
    ld a, $d3
    call Call_000_04a0
    ld a, $0d
    ld [$dd00], a
    xor a
    ld [$dd01], a
    call Call_000_0389
    ld de, $00e8
    ld a, [$43de]
    ldh [$a1], a
    xor a
    ldh [$a2], a

Jump_004_4168:
jr_004_4168:
    call Call_000_0389
    call Call_000_0616
    call Call_000_06f6
    ldh a, [$8d]
    and $09
    jp nz, Jump_004_42d0

    ld a, e
    or d
    jp z, Jump_004_42ab

    dec de
    ld a, e
    ld [$cf0c], a
    cp $71
    jr nc, jr_004_419e

    cp $28
    jr c, jr_004_419e

    and $07
    jr nz, jr_004_419e

    ld a, [$cf0c]
    ld b, a
    ld a, $70
    sub b
    rra
    ld hl, $c100
    call Call_000_07e6
    ld [hl], $48

jr_004_419e:
    ldh a, [$a1]
    dec a
    ldh [$a1], a
    jr nz, jr_004_4168

    ldh a, [$a2]
    inc a
    and $03
    ldh [$a2], a
    ld b, a
    ld hl, $43de
    call Call_000_07e6
    ld a, [hl]
    ldh [$a1], a
    ldh a, [$8b]
    cp $01
    jp nz, Jump_004_427a

    push de
    ldh a, [$a2]
    add a
    ld hl, $4ba2
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $98f4
    ld a, $01
    call Call_000_08a4
    call Call_000_0389
    pop de
    ld a, e
    and a
    jr z, jr_004_41f3

    dec de
    ld a, e
    ld [$cf0c], a
    and $07
    jr nz, jr_004_41f3

    ld a, [$cf0c]
    ld b, a
    ld a, $70
    sub b
    rra
    ld hl, $c100
    call Call_000_07e6
    ld [hl], $48

jr_004_41f3:
    push de
    ldh a, [$a2]
    add a
    ld hl, $4b92
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $98f4
    ld a, $00
    call Call_000_08a4
    call Call_000_0389
    pop de
    ld a, e
    and a
    jr z, jr_004_4229

    dec de
    ld a, e
    ld [$cf0c], a
    and $07
    jr nz, jr_004_4229

    ld a, [$cf0c]
    ld b, a
    ld a, $70
    sub b
    rra
    ld hl, $c100
    call Call_000_07e6
    ld [hl], $48

jr_004_4229:
    push de
    ldh a, [$a2]
    add a
    inc a
    ld hl, $4b92
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9974
    ld a, $00
    call Call_000_08a4
    call Call_000_0389
    pop de
    ld a, e
    and a
    jr z, jr_004_4260

    dec de
    ld a, e
    ld [$cf0c], a
    and $07
    jr nz, jr_004_4260

    ld a, [$cf0c]
    ld b, a
    ld a, $70
    sub b
    rra
    ld hl, $c100
    call Call_000_07e6
    ld [hl], $48

jr_004_4260:
    push de
    ldh a, [$a2]
    add a
    inc a
    ld hl, $4ba2
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9974
    ld a, $01
    call Call_000_08a4
    pop de
    jp Jump_004_4168


Jump_004_427a:
    push de
    ldh a, [$a2]
    add a
    ld hl, $4b82
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $98f4
    ld a, $00
    call Call_000_08a4
    call Call_000_0389
    ldh a, [$a2]
    add a
    inc a
    ld hl, $4b82
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9974
    ld a, $00
    call Call_000_08a4
    pop de
    jp Jump_004_4168


Jump_004_42ab:
    ldh a, [$a1]
    dec a
    ldh [$a1], a
    and a
    jp nz, Jump_004_4168

    ld a, $08
    ldh [$a1], a
    ld b, $48
    ld hl, $c100
    ld a, [hl]
    cp b
    jr nz, jr_004_42c3

    ld b, $a0

jr_004_42c3:
    ld c, $0a

jr_004_42c5:
    ld [hl], b
    inc hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_004_42c5

    jp Jump_004_4168


Jump_004_42d0:
    ld a, $0f
    ld [$dd01], a
    ret


    ld a, $03
    ld hl, $4000
    jp Jump_000_0077


    jr jr_004_42e3

    jp Jump_004_4168


jr_004_42e3:
    call Call_000_0783
    di
    call Call_000_0679
    ld hl, $0bfc
    ldh a, [$8b]
    cp $02
    call nc, Call_000_09b0
    ldh a, [$8b]
    cp $01
    jr nz, jr_004_432c

    ld hl, $5c3a
    ld bc, $0530
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $643e
    call Call_000_0d52
    ld hl, $643e
    call Call_000_0d52
    ld hl, $62d4
    ld de, $9800
    ld a, $01
    call Call_000_080b
    ld hl, $616a
    ld de, $9800
    ld a, $00
    call Call_000_080b
    jr jr_004_4349

jr_004_432c:
    ld hl, $4ec1
    ld de, $8000
    ld bc, $0540
    ld a, $00
    call Call_000_07ce
    ld hl, $9800
    call Call_000_098d
    ld hl, $5401
    ld de, $9882
    call Call_000_080b

jr_004_4349:
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $1b
    ld [$cf1b], a
    ld [$cf1c], a
    ld [$cf1d], a
    ld a, $d7
    call Call_000_04a0
    ld a, $09
    ld [$dd00], a
    xor a
    ld [$dd01], a
    call Call_000_0389
    ld a, $07
    ldh [$a1], a
    xor a
    ldh [$a2], a

jr_004_437b:
    call Call_000_0616
    call Call_000_0389
    call Call_000_06f6
    ldh a, [$8d]
    and $09
    jr nz, jr_004_43d8

    ld hl, $ffa1
    dec [hl]
    jr nz, jr_004_437b

    ld a, $07
    ldh [$a1], a
    ldh a, [$a2]
    inc a
    cp $03
    jr c, jr_004_439c

    xor a

jr_004_439c:
    ldh [$a2], a
    ldh a, [$8b]
    cp $01
    jr nz, jr_004_43c4

    ld hl, $6484
    ldh a, [$a2]
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9986
    ld a, $01
    call Call_000_08a4
    ld hl, $647e
    ldh a, [$a2]
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_004_43cf

jr_004_43c4:
    ld hl, $54b3
    ldh a, [$a2]
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_004_43cf:
    ld de, $9986
    xor a
    call Call_000_08a4
    jr jr_004_437b

jr_004_43d8:
    ld a, $0f
    ld [$dd01], a
    ret


    dec b
    ld [bc], a
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_43eb:
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
    ld bc, $0100
    nop
    rlca
    nop
    inc de
    rrca
    daa
    jr jr_004_4461

    jr nz, jr_004_43eb

    nop

jr_004_440c:
    ld b, b
    add b
    add b
    nop
    nop

Jump_004_4411:
    nop
    add b
    nop
    ld b, b
    add b
    ld h, b
    ret nz

    add b
    ld h, b
    ld d, b
    jr nz, jr_004_443d

    db $10
    jr jr_004_4420

jr_004_4420:
    jr jr_004_4422

jr_004_4422:
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    db $10
    rrca
    jr nz, jr_004_444f

    ld b, c
    ccf
    ld [bc], a
    nop
    ld a, [hl]
    nop
    add e
    ld a, h
    inc b
    ei
    nop
    rst $38
    nop

jr_004_443d:
    rst $38
    rrca
    rst $38
    db $fd
    cp $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr c, jr_004_440c

    ld c, $f0
    ld l, d

jr_004_444f:
    or h
    or l
    ld h, d
    ld [$0800], sp
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4461:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    ccf
    or a
    ld a, b
    sbc a
    ld h, b
    ld a, a
    add b
    di
    nop
    ld l, c
    inc c
    inc a
    ld c, $1b
    dec c
    ld a, a
    add c
    db $f4
    dec bc
    ld hl, sp+$0a
    and d
    jr jr_004_449b

jr_004_448b:
    dec b
    daa
    ld b, [hl]
    ld l, h
    or $ff
    rst $38
    ld c, e
    ld h, d
    ld sp, $2242
    ld d, b
    ld [hl+], a
    or b
    or h

jr_004_449b:
    jr nz, jr_004_443d

    ldh [$e0], a
    ld h, b
    ld [hl], b
    ld h, b
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
    ld [bc], a
    ld bc, $0300
    ld e, $00
    jr nz, @+$21

    ld de, $6220
    ld bc, $0649
    sbc b
    ld h, b
    ld h, d
    add c
    ld a, $fe
    rrca
    rra
    dec h
    rst $00
    dec bc
    ld a, [c]
    push hl
    add hl, de
    ld a, [bc]
    inc b
    ld d, a
    jr nz, jr_004_448b

    ld bc, $f060
    ldh [$f0], a
    ldh a, [$e0]
    ret nz

    ld h, b
    and b
    ret nz

    ld b, b
    nop
    nop
    add b
    add b
    ret nz

    add b
    nop
    ret nz

    nop
    jr nz, jr_004_4528

    ld b, [hl]
    jr c, @+$22

    rra
    inc c
    inc bc
    inc b
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, c
    ld a, $01
    nop
    nop
    nop
    dec b
    ld [bc], a
    jr nz, jr_004_4526

    nop
    db $fc
    ld [$40f0], sp
    add b
    inc c
    nop
    ld hl, sp+$00
    dec d
    ld [bc], a
    ld l, $40
    ret


    ld h, b
    push hl
    ld [hl], d
    add sp, $67
    xor b
    ld h, a
    ld c, b
    daa
    db $f4
    ld [bc], a
    and l
    add hl, bc
    nop
    dec c

jr_004_4526:
    xor $04

jr_004_4528:
    db $e3
    ld b, $b3
    ld b, a
    ld [hl], c
    add e
    add c
    ld bc, $7934
    ld b, b
    ldh [rLCDC], a
    ldh [$80], a
    ret nz

    nop
    nop
    add b
    nop
    add b
    nop
    add d
    ld bc, $031d
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_004_4553

    db $e3
    rra
    or a
    ret c

    ld c, l
    or d
    nop

jr_004_4553:
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld b, $f8
    pop hl
    cp $d1
    ld a, $c6
    jr c, jr_004_4563

jr_004_4563:
    nop
    inc bc
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
    cp $00
    ld hl, sp+$07

jr_004_4578:
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [c], a
    nop
    rlca
    nop
    jr z, jr_004_4578

    sbc l
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    db $fc
    nop
    nop
    nop
    ld [hl], b
    add b
    dec d
    ld c, $00
    nop
    ld a, [bc]
    rlca
    ld [de], a
    inc c
    adc d
    jr nc, jr_004_45d1

    ld [hl], c

jr_004_45a6:
    ld a, d
    pop hl
    ld bc, $ac00
    ld [hl], b
    sbc b
    ld h, b
    rlca
    nop
    jp c, Jump_004_7421

    ld hl, sp-$0b
    ld hl, sp-$0a
    ld hl, sp+$6e
    ldh a, [$9d]
    ld h, b
    ld [hl], b
    ld [bc], a
    ld a, [bc]
    add a
    ld [hl], e
    rst $38
    or $1b
    xor c
    db $76
    scf
    ret z

    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    add b

jr_004_45d1:
    nop
    rst $30
    inc c
    call Call_000_1e32
    pop hl
    add c
    ld a, [hl]
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld h, b
    jr c, jr_004_45a6

    ld [hl], b
    add b
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0301
    ld bc, $5602
    xor c
    ld [de], a
    jp hl


    cp c
    ld b, b
    ld d, l
    nop
    adc b
    nop
    and c
    ret nz

    ld e, h
    and c
    ld hl, sp+$01
    ld a, l
    rst $38
    cp a
    ld a, a
    ld a, [hl]
    cp a
    db $db
    inc a
    ld c, $70
    sbc c
    nop
    sub a
    add sp, -$42
    ret nz

    ld b, b
    add b
    ldh [$c0], a
    and b
    ld b, b
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
    inc bc
    nop
    add hl, bc
    inc b
    dec d
    dec bc
    inc de
    inc c
    add hl, bc
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    pop af
    nop
    ld [hl], c
    ld hl, sp-$07
    db $fc
    cp h
    ld a, [hl]
    rst $38
    nop
    ld a, [c]
    dec c
    and e
    ld e, h
    nop
    nop
    cp [hl]
    ret nz

    daa
    pop bc
    rlc a
    rst $28
    rra
    ld l, $df
    ccf
    ret nz

    rra
    ldh [$b9], a
    ld b, b
    nop
    nop
    nop
    add b
    ret c

    ldh [$bd], a
    jp nz, $8c73

    rst $20
    jr jr_004_4676

    ld hl, sp-$72
    ld [hl], b
    nop
    nop
    nop
    nop

jr_004_4676:
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    add b
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
    ld bc, $0000
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    inc a
    add h
    ld a, [hl]
    ld a, [hl-]
    add $8d
    ld [bc], a
    add $01
    ld bc, $0102
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $00
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add d
    ld bc, $0003
    ld bc, $0100
    nop

jr_004_46ba:
    ld bc, $0100
    nop
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    db $10

jr_004_46db:
    rrca
    jr nz, jr_004_46fd

    ld b, c
    ccf
    rst $08
    ccf
    ld a, [hl]
    nop
    add l
    ld a, d
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    db $fd
    cp $7f
    add c
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr c, jr_004_46ba

    ld c, $f0
    ld l, d

jr_004_46fd:
    or h
    or l
    ld h, d
    ld c, e
    ld h, d
    nop
    nop
    ld bc, $0100
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
    or a
    ld a, b
    sbc a
    ld h, b
    ld a, a
    add b
    di
    nop
    ld l, c
    inc c
    inc a
    ld c, $1b
    dec c
    rlca
    rlca
    db $f4
    dec bc
    ld hl, sp+$0a
    and d
    jr jr_004_4739

    dec b
    daa
    ld b, [hl]
    ld l, h
    or $ff
    rst $38
    cp $fe
    ld sp, $2242
    ld d, b
    ld [hl+], a
    or b
    or h

jr_004_4739:
    jr nz, jr_004_46db

    ldh [$e0], a
    ld h, b

jr_004_473e:
    ld [hl], b
    ld h, b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0738
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
    add c
    ld a, [hl]
    nop
    rst $38
    nop
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
    add d
    ld bc, $8070
    ld bc, $18fe
    nop
    jr z, jr_004_478d

    ld [hl], e
    nop
    ld hl, $8900
    db $76
    jr nc, jr_004_473e

    ld h, d
    ld bc, $0294
    rra
    ccf
    add l
    rrca
    inc hl
    add $e9
    inc de
    inc c
    nop
    ld d, a

jr_004_478d:
    jr nz, @-$5c

    ld bc, $0109
    ldh [$f0], a
    ldh a, [$e0]
    ret nz

    ld h, b
    and b
    ret nz

    ld b, b
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rP1], a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    jp $f03c


    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld hl, sp+$07

jr_004_47c2:
    db $fc
    inc bc
    inc sp
    nop
    cp $00
    rst $38

jr_004_47c9:
    nop
    ret nc

    nop
    ld a, [hl]
    nop
    rlca
    nop
    jr z, jr_004_47c2

    inc c
    ldh a, [rNR23]
    ldh [rP1], a
    nop
    cp $00
    nop
    nop
    rra
    nop
    ldh a, [rP1]
    ld a, [bc]
    inc b
    add hl, hl
    ld b, b
    push bc
    ld h, d
    ld l, b
    rst $20
    add sp, $67
    jr z, jr_004_4852

    call nc, Call_000_3022
    ld bc, $f16a
    db $ec
    ld bc, $44b2
    ld [hl], e
    add [hl]
    ld hl, $3503
    ld a, c
    ld [hl], h
    ld sp, hl
    push af
    ld hl, sp-$12
    ldh a, [rLCDC]
    ldh [$80], a
    ret nz

    nop
    nop
    add d
    ld bc, $039d
    or [hl]
    dec de
    xor c
    db $76
    scf
    ret z

    rlca
    nop
    jr jr_004_481d

    db $e3
    rra
    or a
    ret c

    ld c, l
    or d
    rst $30

jr_004_481d:
    inc c
    call Call_000_1e32
    pop hl
    ld hl, sp+$00
    ld b, $f8
    pop hl
    cp $d1
    ld a, $c6
    jr c, jr_004_47c9

    ld h, b
    jr c, @-$3e

    ld [hl], b
    add b
    rlca
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
    sbc l
    ld h, e
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

jr_004_4852:
    ld [hl], b
    add b
    dec d
    ld c, $00
    nop
    ld bc, $0002
    inc bc
    ld a, [bc]
    ld bc, $0815
    jr c, jr_004_487e

    ld bc, $ac00
    ld [hl], b
    sbc b
    ld h, b
    inc bc
    nop
    ld l, a
    sub b
    sbc a
    ld h, b
    ld a, [de]
    db $e4
    sub [hl]
    ld c, b
    ld e, $e0
    db $fc
    ld bc, $0371
    add a
    rrca
    rst $18
    ccf
    cpl
    ld e, a

jr_004_487e:
    ei
    rlca
    or a
    ld c, b
    rst $38
    nop
    ld [hl], b
    add b
    ret z

    ldh a, [$74]
    ld hl, sp-$68
    ldh [$e0], a
    ret nz

    add b
    ret nz

    add b
    nop
    add c
    ld a, [hl]
    rst $38
    nop
    rrca
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
    ldh [rP1], a
    ret nz

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
    inc bc
    nop
    inc b
    inc bc
    nop
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld l, d
    inc [hl]
    sbc l
    ld h, d
    daa
    ret c

    db $eb
    nop
    add c
    ld a, h
    cp h
    ld a, [hl]
    sbc $3e
    and $1e

jr_004_48d2:
    jr c, jr_004_48d4

jr_004_48d4:
    add b
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld l, h
    adc c
    ld h, h
    ld c, b
    inc h
    ld bc, $6200
    dec e
    scf
    jr jr_004_4922

    inc e
    ld a, [bc]
    inc e
    add b
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    sub e
    jr nz, jr_004_497b

    ld a, l
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
    ld b, b
    add b
    jr nc, jr_004_48d2

    ld d, b
    ld [hl+], a
    inc h
    jr jr_004_4948

    ld c, $19
    ld b, $0e
    ld bc, $0003
    nop
    nop
    nop
    nop

jr_004_4922:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr jr_004_4942

    ld [de], a
    dec c
    add hl, bc
    rlca
    dec c
    inc bc
    ld [$0307], sp
    inc b
    dec b
    ld [bc], a
    nop
    nop

jr_004_4942:
    ld [hl], h
    ei
    db $ec
    di
    ret c

    rst $20

jr_004_4948:
    ld h, e
    sbc h
    db $fc
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    ld [hl], b
    add b
    ld h, b
    add b
    ret nz

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
    ld bc, $0300
    ld bc, $0300
    ld bc, $0502
    ld [bc], a
    ld bc, $0006
    nop
    nop
    nop
    ret nc

    ldh [$28], a
    ldh a, [$e4]

jr_004_497b:
    jr jr_004_49b1

    ld [$049a], sp
    ld c, $00
    ld bc, $0206
    inc b
    ld [bc], a
    inc b
    ld b, $00
    nop
    inc b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    dec b
    ld [bc], a
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc b
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
    inc bc

jr_004_49b1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    jr jr_004_49c3

    ld h, b
    rra
    sbc h
    ld h, b
    pop hl
    nop
    nop

jr_004_49c3:
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add b
    ld c, $f0
    ld bc, $60fe
    rra
    call z, Call_000_0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, Jump_000_1801

    ldh [rSB], a
    cp $06
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
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld bc, $fe00
    nop
    ld hl, sp+$07

jr_004_4a02:
    ldh a, [rP1]
    rst $38
    nop
    rst $20
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rlca
    nop
    jr z, jr_004_4a02

    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, $00
    nop
    nop
    rst $38
    nop
    ldh a, [rP1]
    ld a, [bc]
    inc b
    ld b, b
    ldh [$80], a
    ret nz

    nop
    nop
    add d
    ld bc, $039d
    or $1b
    xor c
    db $76
    scf
    ret z

    sbc l
    ld h, e
    nop
    nop

jr_004_4a36:
    ld bc, $0300
    nop
    ld [$1105], sp
    dec c
    cpl
    ld de, $215d
    ld [hl], b
    add b
    dec d
    ld c, $e0
    nop
    ld h, c
    sbc [hl]
    xor b
    add $fc
    jp nz, $e0ce

    xor $e0
    ld bc, $ac00
    ld [hl], b
    sbc b
    ld h, b
    rlca
    nop

jr_004_4a5a:
    adc e
    ld [hl], h
    ccf
    nop
    add e
    ld a, h
    ld h, a
    jr jr_004_4a81

    ldh [$fc], a
    ld bc, $0371
    add a
    rrca
    rst $08
    ccf
    cp [hl]
    ld bc, $1ca3
    ld de, $ff0e
    nop
    jr nc, jr_004_4a36

    ld hl, sp-$04
    add sp, -$10
    sub h
    ldh [rDMA], a
    add b
    rst $28
    nop
    rra

jr_004_4a81:
    nop
    add c
    ld a, [hl]
    rst $38
    nop
    inc bc
    inc a
    inc hl
    inc e
    dec de
    inc h
    dec a
    ld h, d
    ld l, a
    ldh a, [$ee]
    ldh a, [$9e]
    ld h, c
    sbc a
    ld h, b
    ld e, $e0
    jr c, jr_004_4a5a

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $10
    ldh [rP1], a
    ret nz

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
    inc a
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
    rrca
    nop
    ld bc, $0000
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
    ld c, h
    sub d
    xor a
    db $10
    ld c, l
    ld [hl-], a
    or h
    ld a, d
    ld sp, $040e
    ld [bc], a
    nop
    nop
    nop
    nop
    cp $f0
    ld a, [hl]
    ldh a, [$bc]
    ld [hl], b
    call z, Call_004_7c30
    add b
    inc [hl]
    ret z

    sub b
    ld l, b
    jr c, jr_004_4af2

jr_004_4af2:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld [$0808], sp
    ld [$0808], sp
    ld [$1c08], sp
    inc e
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld b, b
    ld b, b
    ld a, h
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld b, b
    ld b, b
    ld a, h
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, [hl]
    ld a, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    ld a, $3e
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld a, $3e
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    ld h, c
    ld h, c
    ld e, c
    ld e, c
    ld c, l
    ld c, l
    ld b, e
    ld b, e
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    or d
    ld c, e
    reti


    ld c, e
    add hl, bc
    ld c, h
    jr nc, jr_004_4bd6

    ld h, b
    ld c, h
    add a
    ld c, h
    add hl, bc
    ld c, h
    jr nc, jr_004_4bde

    or a
    ld c, h
    sbc $4c
    ld c, $4d
    dec [hl]
    ld c, l
    ld h, l
    ld c, l
    adc h
    ld c, l
    ld c, $4d
    dec [hl]
    ld c, l
    cp h
    ld c, l
    db $e3
    ld c, l
    inc de
    ld c, [hl]
    ld a, [hl-]
    ld c, [hl]
    ld l, d
    ld c, [hl]
    sub c
    ld c, [hl]
    inc de
    ld c, [hl]
    ld a, [hl-]
    ld c, [hl]
    inc h
    add hl, bc
    inc b
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
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    ld [$0a09], sp

jr_004_4bd6:
    dec bc
    nop
    nop
    dec l
    add hl, bc
    dec b
    nop
    nop

jr_004_4bde:
    nop
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_004_4c09

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_004_4bf8

jr_004_4bf8:
    nop
    nop
    ld hl, $2322
    inc h
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_004_4c31

    nop

jr_004_4c09:
    inc h
    add hl, bc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_004_4c56

    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    dec l

jr_004_4c31:
    add hl, bc
    dec b
    nop
    ld [hl], $37
    jr c, jr_004_4c71

    ld a, [hl-]
    dec sp
    nop
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_004_4c56:
    nop
    nop
    nop
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    inc h
    add hl, bc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4c71:
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_004_4cad

    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    dec l
    add hl, bc
    dec b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add hl, sp
    ld a, [hl-]
    dec sp
    nop
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld b, b
    ld b, c
    ld h, h
    ld b, e
    ld b, h
    nop
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld c, h
    nop
    ld [$6c6b], sp
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_004_4cad:
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
    inc h
    add hl, bc
    inc b
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
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    nop
    nop
    dec l
    add hl, bc
    dec b
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_004_4d0e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_004_4cfd

jr_004_4cfd:
    nop
    nop
    ld hl, $2322
    inc h
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_004_4d36

    nop

jr_004_4d0e:
    inc h
    add hl, bc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_004_4d5b

    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    dec l

jr_004_4d36:
    add hl, bc
    dec b
    nop
    ld [hl], $37
    jr c, jr_004_4d76

    ld a, [hl-]
    dec sp
    nop
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_004_4d5b:
    nop
    nop
    nop
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    inc h
    add hl, bc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4d76:
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_004_4db2

    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    dec l
    add hl, bc
    dec b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add hl, sp
    ld a, [hl-]
    dec sp
    nop
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld b, c
    ld h, l
    ld b, e
    ld b, h
    nop
    ld b, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld c, h
    nop
    ld [$6d6c], sp
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_004_4db2:
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
    inc h
    add hl, bc
    inc b
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
    ld bc, $0101
    ld bc, $0000
    dec l
    add hl, bc
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
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
    inc h
    add hl, bc
    inc b
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
    ld bc, $0101
    ld bc, $0000
    dec l
    add hl, bc
    dec b
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    dec b
    nop
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
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
    inc h
    add hl, bc
    inc b
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
    ld bc, $0101
    nop
    nop
    dec l
    add hl, bc
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    dec b
    nop
    nop
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0000
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
    jr nc, jr_004_4edf

jr_004_4edf:
    db $ec
    ld [hl], b
    inc bc
    ld bc, $0306
    ld [$1207], sp
    inc c
    inc b
    jr jr_004_4f14

    db $10
    ld a, [hl+]
    db $10
    inc e
    nop
    sbc [hl]
    ldh [rNR43], a
    ret nz

    sbc l
    nop
    rrca
    nop
    inc bc
    inc b
    ld bc, $0506
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0302
    nop
    ld bc, $0302
    nop
    inc bc
    nop
    rlca
    nop
    inc de
    inc c
    nop
    nop
    nop

jr_004_4f14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld b, $f8
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    or $78
    db $fd
    ld a, [hl]
    cp [hl]
    ld a, a
    nop
    nop
    nop
    nop

jr_004_4f35:
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0103
    inc b
    inc bc
    ld b, $03
    ld [hl+], a
    dec e
    ld b, d
    dec a
    ld b, b
    ccf
    sbc $21
    cp e
    call z, $de25
    call nz, Call_004_6327
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc a
    rst $38
    or a
    ld c, a
    ccf
    ld b, b
    ret nz

    nop
    jr nc, jr_004_4f35

    ld [$04f0], sp
    ld hl, sp+$02
    db $fc
    ld bc, $80fe
    rst $38
    ld a, b
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
    add b
    nop
    nop
    add b
    add a
    ld a, a
    ld b, b
    ccf
    ld b, e
    inc a
    inc hl
    inc e
    inc hl
    inc e
    inc de
    inc c
    ld de, $090e
    ld b, $18
    ldh [$d6], a
    ld hl, sp-$3b
    ld a, $32
    rst $08
    ld e, e
    rst $20
    ld sp, hl
    ld h, a
    xor l
    ld [hl], e
    sbc h
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ldh [$80], a
    ret nc

    and b
    ret z

    or b
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a

jr_004_4fc7:
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $04
    ld c, b
    inc b
    inc h
    add hl, bc
    ld de, $1b0b
    ld [hl-], a
    sub l
    scf
    ld [hl], $17
    inc e
    ld e, $5b
    ld h, b
    ld d, a
    ld h, b
    inc hl
    ld b, h
    ld h, l
    ld b, $44
    ld d, $12
    inc h
    and h
    ld [hl], c
    ld d, c
    inc sp
    or $0f
    db $fd
    inc bc
    rst $38
    nop
    ld a, a
    nop
    ld l, a
    nop
    ld b, l
    nop
    dec d
    ld c, $6a
    sbc a
    ld b, b
    add b
    nop
    ret nz

    jr nz, jr_004_4fc7

    and b
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld [$0407], sp
    inc bc
    inc b
    inc bc
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    sbc c
    ld a, d
    adc l
    rlca
    db $fc
    dec b
    cp $c1
    ld a, $f3
    inc c
    rst $38
    nop
    ld a, a
    nop
    or $98
    ld a, l
    sbc d
    ld l, d
    sbc l
    or [hl]
    ld c, l
    ld sp, hl
    ld b, $fd
    ld [bc], a
    rst $38
    nop
    jp RST_00


    nop
    nop
    nop
    ret nz

    nop
    and c
    ret nz

    ld [hl], l
    jp nz, Jump_004_40ba

    call c, $fe20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    or b
    ld b, b
    inc d
    ldh [$0e], a
    ld e, $1f
    rrca
    rrca
    ld e, $1e
    rra
    rra
    rra
    rrca
    rra
    dec e
    ld c, $07
    rrca
    inc sp
    rla
    cpl
    cp a
    ld a, a
    ccf
    cp a
    ld a, a
    rst $38
    rst $38
    sbc a
    rst $38
    cp a
    ld a, a
    cp $ff
    sbc a
    rst $30
    rst $38
    db $e3
    cp $ff
    db $fc
    cp $d8
    ldh [$8e], a
    ret nz

    ld e, c
    add b
    and b
    db $10
    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    add d
    add d
    add d
    add d
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    cp $fe
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    db $10
    db $10
    db $10
    stop
    nop
    db $10
    stop
    nop
    nop
    nop
    ccf
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_50e8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    nop
    ld l, d
    ld bc, $2259
    add hl, de
    ld [hl+], a
    inc l
    db $10
    rrca
    db $10
    inc de
    inc c
    add hl, bc
    ld b, $d5
    ld [hl+], a
    cp h
    inc bc
    sub b
    rlca
    jr @+$09

    ld e, $01
    cpl
    nop
    rst $08
    nop
    sbc $01
    inc bc
    rlca
    ld b, d
    add c
    ld bc, $12c0
    call nz, $ce37
    ld e, a
    xor a
    ld l, a
    sbc a
    or b
    ld e, a
    ld a, [$e9fc]
    ldh a, [rSC]
    ld bc, $0e11
    ld h, b
    nop
    sbc c
    nop
    ret z

jr_004_512e:
    add a
    ld b, a
    sub b
    ld d, c
    ld l, $c7
    jr c, jr_004_512e

    nop
    ld [hl], e
    nop
    ld [$5105], a
    adc [hl]
    or b
    ld c, $d4
    ld [hl+], a
    nop
    nop
    ld b, b
    add b
    and b
    ld b, b
    inc e
    nop
    cp h
    nop
    ld a, [hl]
    nop
    sbc [hl]
    ld h, b
    rrca
    ldh a, [$03]
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
    ccf
    nop
    ld e, $00
    inc c
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
    ld e, b
    cpl
    dec [hl]
    ld c, $0a
    inc b
    ld de, $1301
    inc bc
    ld b, l
    inc de
    ld b, $51
    ld b, $51
    sbc a
    ccf
    ld l, a
    rra
    ld [hl], a
    adc a
    xor e
    rst $10
    cp $ff
    sbc h
    ldh [rTMA], a
    ld hl, sp-$73
    ldh a, [rSTAT]
    and b
    ld c, c
    or b
    and l
    ret c

    ret z

    ldh a, [rNR41]
    ldh a, [rNR21]
    ld c, $59
    ccf
    db $76
    ld sp, hl
    rrca
    ldh a, [$86]
    ld sp, hl
    ld b, l
    cp $aa
    ld a, h
    ld e, l
    jr c, jr_004_51ce

    add hl, de
    add hl, de
    inc bc
    dec b
    inc bc
    nop
    nop
    add b
    nop
    nop
    nop

jr_004_51b7:
    ld h, b
    nop
    jr z, @-$0e

    sub h
    ld hl, sp-$36
    db $fc
    and $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0102
    ld [bc], a

jr_004_51ce:
    ld bc, $0001
    and h
    ld d, c
    inc bc
    ret nc

    ld [hl+], a
    pop de
    ld h, [hl]
    sub c
    ld h, l
    sub e
    ld h, l
    sub e
    ld h, e
    sub a
    ld h, c
    sub e
    db $fc
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    adc $ff
    ret


    or $98
    rst $20
    ld sp, $e2ee
    db $fc
    ld [c], a
    db $fc
    ld hl, sp-$09
    db $fc
    ldh a, [$71]
    ld hl, sp-$79
    nop
    and a
    nop
    ld [de], a
    nop
    ld e, e
    nop
    cp c
    nop
    ld a, h
    nop
    cp h
    ld b, b
    ld a, [hl]
    add b
    ld a, e
    db $fc
    or a
    ld a, b
    ld a, a
    nop
    cp [hl]
    nop
    inc a
    nop
    ldh a, [rP1]
    ld l, b
    nop
    sub b
    ld [$8170], sp
    ld a, [c]
    nop
    ld h, d
    ld de, $1162
    ld [hl-], a
    ld bc, $0112
    ld bc, $0200
    rlca
    call Call_004_66fe
    jr jr_004_51b7

    nop
    dec bc
    db $f4
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    adc [hl]
    nop
    inc d
    ld a, e
    jr z, jr_004_5264

    sub b
    rrca
    adc b

jr_004_5248:
    rlca
    inc b
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    cp $00
    db $fc
    nop
    ld a, l
    add b
    scf
    ret nz

    add e
    inc c
    dec c
    inc e
    push af
    db $fc
    ei
    db $fc
    ret nz

    jr c, jr_004_5248

jr_004_5264:
    jr jr_004_52d6

    inc c
    ld a, [hl-]
    inc b
    adc l
    ld [bc], a
    jp $c000


    nop
    add b
    nop
    nop
    nop
    inc b
    inc bc
    db $10
    rrca
    ld b, b
    ccf
    ld h, b
    rra
    inc a
    inc bc
    rra
    nop
    rlca
    nop
    rlca
    rrca
    ld l, a
    sbc a
    dec bc
    rst $30
    ld b, $f9
    ld bc, $02fe
    db $fd
    rst $38
    nop
    ld hl, sp+$00
    ld b, h
    add b
    adc $e0
    and [hl]
    ldh a, [$e7]
    ldh a, [rIE]
    nop
    ld a, $c0
    db $fc
    nop
    ldh a, [rP1]
    rlca
    ld bc, $0c13
    ld hl, $481e
    ccf
    ld b, a
    ccf
    jr nz, jr_004_52cc

    db $10
    rrca
    rrca
    nop
    push af
    ld a, [$f46b]
    ld a, [c]
    inc c
    ld b, $f8
    ld a, $c0
    ld a, h
    add b
    ld a, h
    add b
    ld hl, sp+$00
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra

jr_004_52cc:
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop

jr_004_52d6:
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    cp $00
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [$c0], a
    nop
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $00fe
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $ff00
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $feff
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $feff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    db $10
    dec bc
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
    ld bc, $0000
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
    ld [bc], a
    inc bc
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
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    nop
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_004_5477

    ld a, [de]
    dec de
    inc e
    nop
    nop
    dec e
    ld e, $1e
    rra
    jr nz, jr_004_5469

jr_004_5469:
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_004_5473

jr_004_5473:
    nop
    nop
    nop
    nop

jr_004_5477:
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    nop
    nop
    nop
    jr nc, jr_004_54c0

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    ld [hl], $37
    jr c, jr_004_54db

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    cp c
    ld d, h
    call nz, $cf54
    ld d, h
    ld [$0204], sp
    nop
    ld b, b
    ld b, c
    nop

jr_004_54c0:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld [$0204], sp
    nop
    ld c, b
    ld c, c
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld [$0204], sp
    nop
    ld c, [hl]
    ld c, a
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    rst $38

jr_004_54db:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    db $ec
    ldh a, [$d8]
    rst $20
    and a
    rst $18
    rra
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    sbc a
    ccf
    ld a, a
    sbc a
    xor a
    rst $18
    rst $18
    rst $28
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $f7
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$be], a
    ret nz

    db $fd
    rst $38

jr_004_552c:
    add c
    rst $38
    ld a, h
    add e
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ld [bc], a
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $00
    ccf
    pop af
    rrca
    sub l
    ld c, e
    ld c, d
    sbc l
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_004_552c

    ld c, b
    add a
    ld h, b
    sbc a
    add b
    ld a, a
    inc c
    rst $38
    sub [hl]
    di
    jp $e4f1


    ld a, [c]
    add b
    ld a, [hl]
    inc bc
    db $fc
    rlca
    push af
    ld e, l
    rst $20
    rst $28
    ld a, [$b9d8]
    sub e
    add hl, bc
    nop
    nop
    or h
    sbc l
    call z, $ddbd
    xor a
    db $dd
    ld c, a
    ld c, e
    rst $18
    ld e, a
    rra
    rra
    sbc a
    adc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$08
    rst $20
    rst $38
    ret nz

    rst $38
    call z, $9eff
    rst $38
    or b
    rst $38
    rlca
    rst $38
    inc e
    rst $38
    ld bc, $e001
    ret nz

    ld a, d
    ldh a, [rNR33]
    ld hl, sp+$06
    db $fc
    di
    rst $38
    adc c
    rst $38
    ld e, h
    rst $38
    sbc a
    rrca
    rra
    rrca
    rra
    rrca
    cp a
    rra
    ccf
    rra
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    add a
    db $fd
    ret nz

    rst $38
    ldh [rIE], a
    di
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    jp $ff00


    add b
    rst $38
    cp $ff
    rst $38
    db $fd
    ld hl, sp-$0d
    pop bc
    rrca
    inc bc
    ccf
    rlca
    rst $38
    ccf
    rst $38
    di
    rst $38
    rrca
    ld hl, sp-$11
    pop af
    sbc a
    or a
    ld e, $9f
    ld [$109f], sp
    rst $18
    db $10
    rst $38
    sub b
    rst $38
    cp c
    db $76
    cp $fb
    or $11
    ei
    sbc h
    ld a, c
    ld c, h
    cp b
    adc d
    ld a, h
    ld a, l
    cp $ca
    add a
    rra
    cp a
    rra
    cp a
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    cp $60
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $20
    ld hl, sp+$1c
    ldh [rOBP0], a
    daa
    or d
    ld c, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld sp, hl
    rlca
    ld e, $01
    ld l, $c1
    add hl, sp
    rst $00
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $07ff
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    ld hl, sp-$01
    sub a
    rrca
    ld h, d
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    db $eb
    ldh a, [rIE]
    rst $38
    ld sp, hl
    db $fc
    ld sp, hl
    db $fd
    db $dd
    rst $38
    rst $18
    cp [hl]
    xor l
    ld e, $fe
    rst $38
    inc de
    adc a
    rlca
    rst $38
    cp $ff
    ld [hl], l
    adc [hl]
    adc e
    rlca
    ld a, [bc]
    rlca
    add hl, bc
    rlca
    sub c
    rrca
    ld h, d
    sbc a
    adc [hl]
    db $fd
    push af
    ld a, b
    adc h
    nop
    add hl, bc
    db $e4
    ld d, [hl]
    adc c
    ret z

    scf
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld [$32f3], sp
    call Call_000_1ee1
    ld a, [hl]
    add c
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, e
    sbc a
    rst $00
    ccf
    adc a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f9
    cp $fb
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    cp $fc
    cp $fc
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    xor d
    rst $38
    rst $30
    ld a, a
    ccf
    ld e, $57
    ld [bc], a
    rst $38
    ld b, $82
    nop
    ld b, b
    add b
    ld b, c
    add b
    inc h
    jp $ef91


    ld h, [hl]

jr_004_5715:
    rst $38
    ld l, b
    rla
    ld b, c
    ccf
    ld e, a
    ccf
    rra
    ccf
    ld e, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    or $fb
    ld [$ecf4], a
    di
    or $f9
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $ff
    adc [hl]
    rlca
    ld b, $03
    ld b, e
    add c
    nop
    rst $38
    dec c
    ld a, [c]
    ld e, h
    and e
    rst $38
    rst $38
    pop bc
    ccf
    sbc b

jr_004_574d:
    ld a, [hl]
    inc [hl]
    ld hl, sp+$10
    ldh [$d1], a
    jr nz, jr_004_5715

    ccf
    ldh [$1f], a
    ld b, [hl]
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    daa
    rra
    ld b, d
    dec a
    adc h
    ld [hl], e
    jr jr_004_574d

    ld hl, sp+$07
    ld [hl], c
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    jp $817b


    push bc
    add hl, sp
    ld [hl], d
    db $fd
    add hl, sp
    cp $fe
    db $fd
    cp $fd
    ld a, [$f9fd]
    rst $38
    db $fd
    ei
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, l
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $f7
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$be], a
    ret nz

    jr nc, @-$3e

    add c
    rst $38
    ld a, d
    add l
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ld [bc], a
    ld bc, $7e80
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $00
    ccf
    pop af
    rrca
    sub l
    ld c, e
    ld c, d
    sbc l
    or h
    sbc l
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, b
    add a
    ld h, b
    sbc a
    add b
    ld a, a
    inc c
    rst $38
    sub [hl]
    di
    jp $e4f1


    ld a, [c]
    ld hl, sp-$08
    dec bc
    db $f4
    rlca
    push af
    ld e, l
    rst $20
    rst $28
    ld a, [$b9d8]
    sub e
    add hl, bc
    nop
    nop
    ld bc, $cc01
    cp l
    db $dd
    xor a
    db $dd
    ld c, a
    ld c, e
    rst $18
    ld e, a
    rra
    rra
    sbc a
    adc a
    sbc a
    sbc a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
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
    db $fc
    ld a, a
    ld a, a
    rrca
    ld bc, $e700
    rst $38
    ret nz

    rst $38
    adc h
    rst $38
    sbc $ff
    nop
    rst $38
    rrca
    rst $38
    sbc h
    rst $38
    ld sp, hl
    ld l, a
    ldh [$c0], a
    ld a, d
    ldh a, [rNR33]
    ld hl, sp+$06
    db $fc
    di
    rst $38
    adc c
    rst $38
    ld e, h
    rst $38
    or $fe
    rra
    rrca
    rra
    rrca
    cp a
    rra
    ccf
    rra
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    ld a, a
    rra
    cp a
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    inc a
    jp $ff0f


    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $07ff
    ld hl, sp-$04
    nop
    rst $38
    call z, Call_000_01ff
    rst $38
    nop
    rst $38
    cpl
    rst $38
    add c
    rst $38
    ld hl, sp-$61
    rlca
    rrca
    inc bc
    rra
    rlca
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    ldh [rIE], a
    rlca
    db $fc
    ld hl, sp-$2a
    cp a
    ld a, [hl-]
    sbc l
    sub a
    jr jr_004_58f8

    sbc b
    rst $10
    sbc c
    ld a, e
    db $dd
    cp a
    cp $ad
    ld e, $13
    cp $4d
    cp e
    adc h
    ld a, c
    sbc $fc
    jp z, $8b86

    ld b, $0a
    rlca

jr_004_58f8:
    ld de, $bf0f
    rra
    ld a, a
    ccf
    rst $38
    rst $38
    ld a, l
    cp $62
    db $fc
    add hl, bc
    db $e4
    ld d, [hl]
    adc c
    ret z

    scf
    ld hl, sp-$01
    rst $20
    ld hl, sp+$1c
    ldh [rOBP0], a
    daa
    or d
    ld c, l
    ld [$32f3], sp
    call Call_000_1ee1
    rlca
    rst $38
    ld sp, hl
    rlca
    ld e, $01
    ld l, $c1
    add hl, sp
    rst $00
    ld h, e
    sbc a
    rst $00
    ccf
    adc a
    ld a, a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, d
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rrca
    ld sp, hl
    ldh [rIE], a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $30
    cp $e3
    rst $38
    jp $feff


    rst $08
    inc bc
    rst $38
    rlca
    db $fc
    rst $38
    nop
    rst $38
    ld [$11ff], sp
    rst $38
    ld sp, $e1ff
    rra
    inc bc
    cp $8e
    db $fc
    ld a, b
    ldh a, [$60]
    add b
    or b
    ret nz

    ld c, h
    ldh a, [$f3]
    db $fc
    nop
    rst $38
    adc a
    ld a, a
    scf
    rrca
    adc e
    rlca
    ld h, a
    rra
    rra
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, [hl]
    add c
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    rst $38
    ld hl, sp-$06
    db $fd
    db $fd
    cp $fe
    rst $38
    or l
    bit 4, d
    sbc l
    ret c

    daa
    inc d
    rst $38
    ld a, [hl]
    add e
    ld b, e
    add c
    ld hl, $19c1
    pop hl
    rst $00
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [de], a

jr_004_59dd:
    rst $38
    sub e
    rst $38
    rst $38
    cp $e2
    add b
    rst $20
    ret nz

    db $e3
    ret nz

    di
    pop hl
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld l, h
    rst $18
    add l
    add d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $08
    ccf
    xor a
    db $dd
    db $db
    rst $20
    adc $f1
    and $f9
    pop af
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    pop af
    db $ed
    ld a, [c]
    or $f8
    ld a, [c]
    db $fc
    rst $30
    ld hl, sp-$04
    ei
    ld_long a, $fffd
    rst $38
    adc e
    inc b
    inc de
    inc c
    daa
    jr jr_004_59dd

    ld h, e
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    cp $ff
    db $fc
    cp $fd
    ld a, [$fefd]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rra
    rst $10
    rrca
    dec de
    rst $20
    set 6, a
    ld h, l
    ei
    pop af
    rst $38
    cp $f9
    db $fd
    ei
    db $fd
    ei
    ld sp, hl
    rst $38
    rst $38
    ei
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [$f8fd]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$0f
    ldh [$ef], a
    ret nz

    cp a
    rlca
    rst $38
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rrca
    rst $08
    ld bc, $00ff
    ld hl, sp-$80
    cp $70
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, a
    rst $38
    inc bc
    dec bc
    nop
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $07ff
    ld hl, sp-$01
    rrca
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    rlca
    rst $38
    ld bc, $80ff
    rst $38
    ld hl, sp-$61
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    inc bc
    cp $0c
    ld hl, sp-$10
    sub $bf
    ld a, [hl-]
    sbc l
    sub a
    jr jr_004_5b38

    sbc b
    rst $10
    sbc c
    ei
    db $dd
    rst $38
    ld a, $2d
    ld e, $bf
    rra
    ld a, a
    ccf
    rst $38
    ld a, a
    ld a, l
    cp $62
    db $fc
    add hl, bc
    db $e4
    ld d, [hl]
    adc c

jr_004_5b38:
    add sp, $17
    ld h, d
    sbc h
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $30
    ld hl, sp-$12
    ldh a, [$d2]
    db $ec
    and d
    call c, Call_004_7f8f
    ld [$1ff1], a
    rst $38
    sbc [hl]
    ld h, c
    ld d, a
    add hl, hl
    rlca
    add hl, sp
    ld sp, $111f
    rra
    rst $38
    cp $cf
    add e
    rst $38
    rlca
    ld hl, sp-$01
    ld h, b
    rst $38
    add b
    rst $38
    call z, Call_000_18ff
    rst $38
    rst $38
    ld bc, $02ff
    cp $8c
    ld a, h
    ldh a, [rNR10]
    ldh [$03], a
    db $fc
    ld b, b
    rst $38
    pop hl
    rst $38
    rst $38
    nop
    ccf
    rlca
    rlca
    inc bc
    scf
    dec bc
    ld c, a
    dec sp
    cp a
    ld a, c
    rra
    ldh a, [rIE]
    ldh [$7e], a
    add c
    nop
    rst $38
    db $fc
    jp $e3dc


    db $e4
    db $db
    jp nz, $909d

    rrca
    ld de, $610f
    sbc [hl]
    ld h, b
    sbc a
    pop bc
    ccf
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$11

    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    rst $28
    ret nc

    rst $28
    or d
    call $857b
    adc $f1
    ei
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $810f
    rrca
    ld b, e
    adc a
    inc sp
    rst $08
    add e
    ld a, a
    swap a
    ld l, a
    sub a
    rst $00
    rst $38
    rst $38
    ld a, a
    jp c, Jump_000_1211

    ld bc, $0000
    inc e
    ld d, e
    jp c, $f211

    nop
    nop
    nop
    inc e
    ld d, e
    jp c, Jump_004_4411

    ld a, c
    nop
    nop
    call c, Call_000_1f22
    nop
    ld b, h
    ld a, c
    nop
    nop
    sbc [hl]
    ld b, e
    ld [de], a
    ld bc, $7944
    nop
    nop
    sbc [hl]
    ld b, e
    jp c, Jump_000_1211

    ld bc, $0000
    nop
    nop
    sub h
    ld d, d
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $08
    rst $38
    inc de
    adc a
    db $fc
    cp $f9
    db $fc
    rst $30
    ld hl, sp-$13
    di
    ei
    rst $20
    rst $10
    rst $28
    push de
    rst $28
    db $e3
    rst $38
    ld h, c
    rra
    db $dd
    ccf
    ld h, d
    rst $38
    ldh a, [rIE]
    db $fc
    ei
    cp $f9
    ld a, [$fefd]
    db $fd
    cp $fd
    cp $fd
    db $fc
    rst $38
    cp $fd
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $ec
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld sp, hl
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    add hl, bc
    add a
    ld [bc], a

jr_004_5ca7:
    add c
    ld b, c
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fc
    cp $fb
    db $fc
    ld sp, hl
    db $fc
    db $dd
    ld [c], a
    cp l
    jp nz, $c0bf

    ld hl, $44de
    inc sp
    jp c, Jump_000_3321

    ret c

    cp h
    db $db
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    jp $4800


    or b
    ret nz

    cp a
    ccf
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    ei
    rlca
    db $fd
    inc bc
    cp $01
    ld a, a
    nop
    add a
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, b
    add b
    cp a
    ret nz

    cp h
    jp $e3dc


    call c, $ece3
    di
    xor $f1
    push af
    ld hl, sp-$19
    rra
    add hl, hl
    rlca
    ld a, [hl-]
    pop bc
    dec c
    jr nc, jr_004_5ca7

    jr @+$18

    adc b
    ld b, d
    adc h
    ld h, e
    adc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rra
    ld a, a
    cpl
    ld e, a
    scf
    ld c, a
    ld hl, sp-$03
    ld a, [$fafd]
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    ei
    or a
    ei
    sbc e
    or $ee
    db $f4
    db $f4
    call $c86a
    ret


    add sp, -$1d
    pop hl
    and h
    sbc a
    xor b
    sbc a
    call c, $9abb
    ld sp, hl
    cp e
    jp hl


    db $ed
    db $db
    ld e, e
    adc [hl]
    xor [hl]
    call z, $f009
    ld [bc], a
    db $fc
    nop
    rst $38
    add b
    rst $38
    sub b
    rst $38
    cp d
    rst $38
    ld [$95f1], a
    ld h, b
    cp a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    ld e, a
    cp a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    or $f8
    ei
    db $fc
    ei
    db $fc
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    ld h, [hl]
    ld b, l
    ld [hl-], a
    add b
    inc bc
    ld [c], a
    ld bc, $c13e
    inc c
    di
    nop
    rst $38
    add b
    rst $38
    add hl, bc
    ld h, a
    add d
    ld h, l
    sub l
    ld h, d
    ld c, c
    or d
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld e, [hl]
    ccf
    adc d
    dec a
    ld b, l
    cp a
    inc hl
    rst $18
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    ld c, a
    cp a
    db $eb
    rra
    pop af
    pop hl
    ldh [$f0], a
    ldh a, [$e1]
    pop hl
    ldh [$e0], a
    ldh [$f0], a
    ldh [$e2], a
    pop af
    ld hl, sp-$10
    call z, Call_004_50e8
    ret nz

    add b
    ret nz

    ld b, b
    add b
    nop
    nop
    ld h, b
    nop
    ld b, b
    add b
    nop
    ld bc, $0068
    inc e
    nop
    ld bc, $0300
    ld bc, $0f1f
    add hl, sp
    rra
    ld h, [hl]
    ccf
    rst $08
    ld a, a
    add c
    add c
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    add hl, sp
    add hl, sp
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    add hl, sp
    add hl, sp
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    db $e3
    db $e3
    db $e3
    db $e3
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    sub l
    cp $a6
    db $dd
    and $dd
    db $d3
    rst $28
    ldh a, [$ef]
    db $ec
    di
    or $f9
    ld a, [hl+]
    db $dd
    ld b, e
    db $fc
    ld l, a
    ld hl, sp-$19
    ld hl, sp-$1f
    cp $d0
    rst $38
    jr nc, @+$01

    ld hl, $fffe
    ld hl, sp-$01
    ld a, [hl]
    cp $3f
    reti


    ccf
    pop bc
    dec sp
    ret nz

    ld sp, $6080
    add b

jr_004_5e89:
    ld c, a
    rlca
    ld bc, $07f8
    ldh a, [rIE]
    jp Jump_000_1fff


    rst $38
    and $ff
    ld [hl], b
    rst $38
    jr z, jr_004_5e89

    nop
    rst $38
    nop
    rst $38
    ld b, a
    rst $38
    sbc h
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld d, c
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $38
    db $e3
    ld a, a
    jp $81ff


    cp a
    ld bc, $007f
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $20
    ret nz

    rst $30
    pop af
    ei
    ld a, [$fcee]
    add sp, -$02
    xor d
    rst $38
    xor c
    rst $38
    xor b
    ld b, b
    ret nz

    ldh [$80], a
    ld [hl], b
    nop
    jr z, jr_004_5ef2

jr_004_5ef2:
    ld bc, $7f00
    rlca
    rst $38
    inc bc
    ld a, a
    ld b, $9f
    ld a, [hl]
    add a
    ld a, [hl]
    ld b, e
    ccf
    daa
    rra
    rst $08
    rra
    ld sp, hl
    pop hl
    ldh [$80], a
    adc [hl]
    nop
    ret nz

    ccf
    pop hl
    ld e, $f2
    dec c
    ld a, l
    add e
    cp d
    rst $00
    call $e6f6
    db $fc
    ld_long a, $fffc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rla
    rrca
    dec bc
    rlca
    dec b
    inc bc
    ld bc, $ff03
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fd
    cp $fd
    cp $fe
    rst $38
    ld e, a
    xor d
    rst $38
    cpl
    rst $18
    ld l, $9e
    ld l, h
    sbc h
    ld l, b
    sbc b
    ld l, b
    sbc h
    ld l, b
    sbc [hl]
    ld l, h
    inc bc
    nop
    add h
    nop
    nop
    nop
    ld bc, $1000
    nop
    stop
    jr nc, jr_004_5f78

jr_004_5f78:
    ld sp, $3800
    rlca
    ld a, b
    rlca
    ret nc

    rrca
    ld bc, $011f
    rra
    ld [$0707], sp
    inc bc
    sub a
    ld b, $7f
    ld hl, sp+$7f
    ret c

    rst $38
    db $ed
    cp a
    db $e4
    ld a, a
    add $ff
    add e
    sbc a
    inc bc
    ld a, a
    ld bc, $0384
    ld c, b
    add a
    add b
    rst $38
    ld b, c
    rst $38
    jp Jump_000_0fff


    rst $38
    sub a
    rst $38
    ld l, a
    rst $30
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc [hl]
    ld a, a
    dec c
    rst $38
    sbc l
    xor $9d
    xor $cd
    cp $ed
    cp $fe
    rst $38
    db $fd
    ld hl, sp-$0e
    ld bc, $c3bd
    ld a, [hl]
    rst $38
    db $f4
    dec bc
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ld [hl], c
    rst $38
    or e
    call z, $e0df
    ld l, a
    ldh a, [rPCM34]
    ld hl, sp-$05
    db $fc
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $01
    rst $38
    inc bc
    rst $38
    add d
    ld a, a
    ret z

    ccf
    ld a, h
    di
    ld a, [c]
    db $e3
    ld a, [bc]
    inc bc
    inc b
    inc bc
    ccf
    rst $00
    dec de
    rst $20
    adc a
    di
    push bc
    ei
    ld [hl], d
    db $fd
    inc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $01
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    db $ec
    ldh a, [$be]
    ret nz

    sbc a
    ldh [$c3], a
    db $fc
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$10
    sub b
    ld h, b
    db $f4
    ld [$06f9], sp
    ld a, [hl]
    ld bc, $02fd
    nop
    rst $38
    rlca
    rst $38
    cp e
    ld a, a
    ld sp, $591f
    rrca
    jr jr_004_6091

    nop
    rst $38
    pop bc
    ccf
    inc bc
    rst $38
    rrca
    rst $38
    ld hl, sp-$02
    db $ec
    di
    sbc $e1
    or a

jr_004_6091:
    ret nz

    cp b
    ret nz

    rst $18
    ldh [$ef], a
    ldh a, [$f0]
    rst $38
    ld a, [bc]
    dec b
    sub h
    dec bc
    dec c
    di
    ld sp, hl
    rlca
    pop bc
    ccf
    add e
    ld a, a
    add e
    ld a, a
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $00
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [$f8]
    nop
    db $fc
    nop
    cp $00
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
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
    ld bc, $0000
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
    ld [bc], a
    inc bc
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
    inc b
    dec b
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
    ld b, $07
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
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
    dec c
    ld c, $0f
    nop
    db $10
    ld de, $1312
    inc d
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
    dec d
    ld d, $17
    jr jr_004_6246

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1e
    rra
    jr nz, jr_004_623c

jr_004_623c:
    nop
    ld hl, $2200
    inc hl
    inc h
    dec h
    ld h, $27
    nop

jr_004_6246:
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
    jr z, jr_004_627e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_004_6266

jr_004_6266:
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_004_62b2

    ld a, [hl-]
    nop
    nop
    nop
    dec sp

jr_004_627e:
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_62b2:
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
    inc d
    ld [de], a
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
    nop

Call_004_6327:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
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
    dec b
    dec b
    dec b
    nop
    nop
    ld bc, $0101
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
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0201
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
    dec b
    nop
    dec b
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    dec b
    dec b
    inc b
    inc bc
    inc bc
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
    ld b, $06
    nop
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
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
    ld b, $06
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
    sbc $7b
    jp c, Jump_000_1211

    ld bc, $0000
    inc e
    ld d, e
    jp c, Jump_000_1211

    ld bc, $0000
    inc e
    ld d, e
    ld [de], a
    ld bc, $7944
    nop
    nop
    sbc [hl]
    ld b, e
    jp c, Jump_004_4411

    ld a, c
    nop
    nop
    sbc $7b
    jp c, Jump_004_4411

    ld a, c
    nop
    nop
    sbc [hl]
    ld b, e
    jp c, Jump_000_1211

    ld bc, $0000
    sbc $7b
    add $5a
    add b
    ld sp, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc d
    ld h, h
    sub l
    ld h, h
    and b
    ld h, h
    xor e
    ld h, h
    or [hl]
    ld h, h
    pop bc
    ld h, h
    ld [$0204], sp
    nop
    cpl
    jr nc, jr_004_6491

jr_004_6491:
    scf
    jr c, jr_004_64cd

    ld a, [hl-]
    ld [$0204], sp
    nop
    ld b, a
    ld c, b
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [$0204], sp
    nop
    ld c, l
    ld c, [hl]
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld [$0204], sp
    nop
    ld b, $06
    nop
    ld b, $06
    ld b, $06
    ld [$0204], sp
    nop
    ld b, $06
    nop
    ld b, $06
    ld b, $06
    ld [$0204], sp
    nop
    ld b, $06
    nop
    ld b, $06
    ld b, $06
    rst $38

jr_004_64cd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_66fe:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_004_7421:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_7c30:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_7f8f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
