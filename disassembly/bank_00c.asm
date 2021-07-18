; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    ld hl, $4087
    ld de, $4037
    call Call_000_0a6f
    ld hl, $5087
    ld de, $4047
    call Call_000_0a6f
    nop
    nop
    nop
    ld hl, $6087
    ld de, $4057
    call Call_000_0a6f
    nop
    nop
    nop
    ld hl, $6a87
    ld de, $4067
    call Call_000_0a6f
    nop
    nop
    nop
    ld hl, $6aaf
    ld de, $4077
    call Call_000_0a6f
    ret


    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
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
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld sp, hl
    dec b
    pop af
    ld a, [bc]
    ld sp, hl
    ld [bc], a
    db $e3
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $04
    inc c
    ld [$080e], sp
    jr jr_00c_40d7

    rst $38
    nop
    ret nz

    ccf
    rrca
    ret nz

    nop
    ld a, [hl]
    ld a, $41
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b

jr_00c_40d7:
    nop
    nop
    ccf
    ccf
    rst $38
    rst $18
    add c
    nop
    add b
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    inc sp
    add b
    adc c
    ld b, b
    push bc
    ld [hl+], a
    db $e4
    dec b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp-$38
    ld a, h
    inc [hl]
    ld a, $08
    ld a, $04
    dec de
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nz, jr_00c_4118

jr_00c_4118:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_00c_415f

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    inc a
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    db $e3
    db $e3
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld bc, $120c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_415f:
    nop
    nop
    nop
    nop
    pop bc
    pop bc
    di
    inc sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    add e
    ld h, h
    ld [hl], d
    add l
    ld h, [hl]
    jr jr_00c_4178

jr_00c_4178:
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00c_41af

    ld a, b
    ld c, b
    inc a
    db $10
    sbc c
    sub c
    db $d3
    ld d, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
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
    nop
    nop
    ret nz

    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_00c_41af:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nz, jr_00c_41b8

jr_00c_41b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, @+$3d

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
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
    ld bc, $03f1
    ei
    di
    inc b
    jp $eb24


    inc b
    rlc h
    rlc h
    push bc
    ld b, $c9
    ld a, [hl+]
    pop bc
    ld [hl+], a
    jr jr_00c_4209

    jr c, jr_00c_4223

    jr c, jr_00c_4225

    jr c, jr_00c_4227

    jr c, jr_00c_4209

    jr c, jr_00c_420b

    inc [hl]
    nop
    inc a
    ld [$40bf], sp

jr_00c_4209:
    cp l
    ld b, d

jr_00c_420b:
    cp l
    ld b, b
    cp d
    ld b, d
    or b
    ld c, b
    jr z, @-$2d

    ld e, l
    and d
    ccf
    ret nz

    add b
    add b
    add d
    add d
    add a
    add l
    adc l
    adc b
    sub a
    sub b
    and $e0

jr_00c_4223:
    ret nz

jr_00c_4224:
    ret nz

jr_00c_4225:
    add b
    add b

jr_00c_4227:
    db $f4
    ld bc, $31c2
    sub d
    ld h, c
    or d
    ld b, c
    ld a, d
    add c
    ldh a, [$09]
    ldh a, [$09]
    ld l, b
    sub e
    rra
    ld d, $2f
    ld h, $4e
    ld c, d
    adc [hl]
    adc d
    ld c, $0a
    ld c, $0a
    ld c, $08
    sbc $d8
    add d
    ld b, c
    add d
    ld b, l
    sub [hl]
    ld [$08d7], sp
    rst $10
    ld [$18d7], sp
    rst $10
    ld [$08d7], sp
    ld a, l
    ld l, l
    ld a, c
    db $10
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld h, c
    ld b, c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld [$0005], sp
    add hl, sp
    ld e, b
    ld hl, $205a
    ld e, d
    ld hl, $635a
    ld e, d
    ld hl, $215a
    or $96
    xor $4c
    adc $4a
    rst $08
    ld c, d
    rst $08
    ld c, d
    adc h
    ld [$4ace], sp
    rst $08
    ld c, d
    ld [$8894], sp
    jr nc, jr_00c_4224

    ld h, c
    ld a, [hl-]
    pop bc
    ld [hl], b
    add c
    ld a, [c]
    ld a, [bc]
    ldh a, [$0d]
    ld hl, sp+$07
    rst $30
    ld b, $6f
    inc c
    adc $8a
    adc [hl]
    ld a, [bc]
    rrca
    ld a, [bc]
    dec c
    nop
    rlca
    nop
    ld [bc], a
    nop
    ld b, $28
    adc l
    jr jr_00c_42b4

    sub b
    sbc h
    ld h, b
    ld a, [hl]
    nop
    ld e, $00
    inc c

jr_00c_42b4:
    jp nz, Jump_000_22a4

    di
    ld [hl+], a
    rst $20
    call Call_000_05e7
    ld b, e
    ld [bc], a
    db $e3
    ld [c], a
    di
    ld [de], a
    ld a, e
    ld a, [hl+]
    ld e, e
    ld c, d
    rla
    ld h, b
    rlca
    ld [$788f], sp
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    ccf
    ld b, b
    ld hl, sp+$38
    ldh a, [rP1]
    sub b
    adc b
    add b
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    rla
    ld h, b
    rlca
    ld [$788f], sp
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    ccf
    ld b, b
    ld hl, sp+$38
    ldh a, [rP1]
    sub b
    adc b
    add b
    add b
    add b
    nop
    nop
    ld bc, $0180
    ret nz

    add e
    di
    inc b
    jp $ff24


    nop
    rst $38
    nop
    ldh a, [rP1]
    pop de
    nop
    and b
    nop

jr_00c_4315:
    jp Jump_000_1800


    db $10
    jr c, @+$2a

    jr nz, jr_00c_435c

    nop
    ld a, a
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld b, b
    cp l
    ld b, d
    cp l
    ld b, b
    ld a, [$f002]
    ld [$0178], sp
    cp l
    ld [bc], a
    ld e, a
    nop
    add b
    add b
    add d
    add d
    rlca
    add l
    dec c
    ret z

    rla
    ldh a, [$86]
    ldh a, [$c0]

jr_00c_4344:
    ld hl, sp-$20

jr_00c_4346:
    call c, $01f4
    jp nz, $9231

    ld h, c
    or d
    ld b, c
    ld a, d
    add c
    ldh a, [$09]
    pop af

jr_00c_4354:
    ld [$9269], sp
    rra
    ld d, $2f
    ld h, $4e

jr_00c_435c:
    ld c, d
    adc [hl]
    adc d
    ld c, $0a
    ld c, $0a
    ld c, $09
    sbc $d9
    adc a
    ld b, b
    sbc [hl]
    ld b, b
    cp b
    ld bc, $07f0
    pop hl
    ld e, $c3
    inc a
    rst $08
    jr nc, jr_00c_4315

    ld h, b
    ld [hl], b
    ld l, a
    ld h, c
    ld e, $47
    ld a, b
    ld c, $70
    jr @-$1d

    jr nc, jr_00c_4346

    jr nz, jr_00c_4354

    ld b, b
    sbc a
    sbc h
    ld bc, $611e
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    rst $20
    jr @-$0b

    inc c
    ld h, d
    sbc [hl]
    ret nz

    ld e, $80
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $20
    ld [$08f3], sp
    sub h
    adc b
    jr nc, jr_00c_4344

    ld h, c
    cp d
    ld b, c
    ldh a, [rSB]
    ld a, [c]
    ld a, [bc]
    ldh a, [$0d]
    ld hl, sp+$07
    rst $30
    ld b, $6f
    inc c
    adc $8a
    ld c, $8a
    rrca
    adc d
    dec c
    ret nz

    rlca
    ret nz

    ld [bc], a
    ret nz

    ld [$e513], a
    add hl, de
    ld a, [c]
    inc c
    ld hl, sp+$06
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc e
    inc c
    ld e, $04
    rlca
    ld [bc], a
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld b, c
    inc a
    ld b, e
    ld a, l
    ld b, d
    rrca
    nop
    nop
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add c
    add c

jr_00c_43f9:
    add d
    add d
    or b
    jr nc, @+$01

    sbc a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $6102
    ld b, $33
    adc h
    dec de
    ret nz

    jr nz, @+$3a

    jr jr_00c_43f9

    cp $01
    rst $38

jr_00c_4416:
    nop
    db $fc
    db $10
    db $fc
    ld h, b
    ld hl, sp+$30
    cp $9a
    rst $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    sub $09
    add b
    ld b, e
    add b
    ld b, b
    ret nz

    ld [hl], $e2
    inc e
    rra
    nop
    inc bc
    db $fc
    rst $38
    nop
    ld [hl], c
    ld d, c
    ld a, a
    ld d, a
    ccf
    ld [$011d], sp
    pop bc
    pop bc
    db $fc
    inc e
    inc b
    nop
    nop
    nop
    ld a, [de]
    jr nz, jr_00c_444c

    jr c, jr_00c_445c

jr_00c_444c:
    ld l, h
    jr c, jr_00c_4416

    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    ld c, e
    rst $38
    ld a, [bc]
    rst $00

jr_00c_445c:
    ld bc, $0083
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    ld h, d
    inc de
    jr nz, jr_00c_448d

    ret nz

    ld h, b
    adc [hl]
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call z, $decc
    sub [hl]
    sbc a
    inc de
    inc de
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    add $08
    call nz, $8c18
    inc sp

jr_00c_448d:
    ld e, $e1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    ld h, d
    ld [hl], e
    ld b, d
    pop hl
    add b
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
    cp a
    ld b, b
    adc e
    inc h
    ld b, e
    inc c
    rlca
    ld hl, sp-$61
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    add b
    db $fc
    sbc h
    ld hl, sp+$60
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
    cp a
    ld b, b
    adc e
    inc h
    ld b, e
    inc c
    rlca
    ld hl, sp-$61
    ld h, b
    cp $01
    cp $01
    cp $01
    ret nz

    add e
    db $fc
    sbc a
    ld hl, sp+$63
    ld h, b
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rrca
    rst $18
    nop
    cp [hl]
    nop
    ld a, l
    add c
    ld a, [hl]
    add e
    ld a, h
    add e
    ld sp, hl
    inc bc
    db $fc
    rlca
    pop af
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$32
    ld bc, $016e
    ld d, a
    ret nz

    inc bc
    db $f4
    ld h, e
    db $fc
    sub e
    inc e
    ld c, e
    call z, Call_00c_6c2b
    pop af
    db $ed

jr_00c_4519:
    ldh a, [$fe]
    jr c, @+$21

    inc e
    inc bc
    nop
    inc bc
    ld h, b
    add e
    jr nc, @+$05

    sub b
    inc bc
    ld de, $6102
    ld b, $33
    adc h
    dec de
    ret nz

    jr nz, @+$3a

    jr jr_00c_4519

    cp $01
    rst $38
    nop
    db $fc
    ld de, $61fc
    ld hl, sp+$30
    cp $9a
    rst $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    cp [hl]
    ld b, c
    adc $31
    cp $00
    db $fc
    ld [bc], a
    ld [c], a
    inc e
    rra
    nop
    inc bc
    db $fc
    rst $38
    nop
    ld b, c
    cp a
    ld bc, $01cf
    cp $01
    ld a, l
    pop bc
    pop bc
    db $fc
    inc e
    inc b
    nop
    nop
    nop
    ld sp, $310e
    ld c, $39
    ld b, d

jr_00c_456d:
    add hl, sp
    jp nz, $8279

    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $c8
    ld [hl], c
    call z, $c431
    add hl, sp
    add h
    add hl, de
    inc b
    add hl, de
    inc b
    add hl, de
    inc b
    add hl, de
    nop
    add hl, de
    db $dd
    ld [hl+], a
    db $d3
    jr nz, jr_00c_456d

    nop
    ldh [$0e], a
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    call z, $d61e
    rra
    db $d3
    inc de
    ret nz

    db $10
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp l
    ld [bc], a
    dec c
    ld [de], a
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    jp $f3cf


    ccf
    ldh a, [rTMA]
    cp $0d
    rst $30
    inc c
    rst $30
    dec c
    ld a, [c]
    inc c
    ld a, [$f30d]
    dec b
    ld [de], a
    inc b
    ld sp, hl
    ldh a, [$f0]
    ld a, [c]
    ldh a, [$f3]
    ldh a, [$f2]
    pop af
    ld a, [c]
    ldh a, [$f2]
    ld hl, sp-$0e
    ld sp, hl
    ld a, [$b493]
    xor e
    inc a
    and c
    cp b
    ld h, e
    ld a, b
    and [hl]
    ld sp, hl
    ld c, [hl]
    reti


    inc l
    cp c
    call nz, Call_00c_48b1
    inc bc
    ld b, b
    add e
    ld b, [hl]
    ld bc, $0386
    ld b, $06
    ld h, $06
    ld b, [hl]
    inc b
    ld c, [hl]
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld sp, hl
    dec b
    pop af
    ld a, [bc]
    ld sp, hl
    ld [bc], a
    db $e3
    inc d
    nop
    nop
    nop
    add b
    nop
    add b
    inc bc
    jp $c406


    inc c
    ret z

    ld c, $c8
    jr @-$2e

    rst $38
    nop
    ret nz

    ccf
    rrca
    ret nz

    nop
    ld a, [hl]
    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp h
    ld b, e
    nop
    nop
    ccf
    ccf
    rst $38
    rst $18
    add c
    nop
    add b
    ld bc, $8780
    add b
    adc a
    add b
    cp h
    ld sp, hl
    ld b, $fb
    inc b
    dec sp
    inc b
    ei
    inc b
    ei
    inc b
    db $e4
    dec de
    inc b
    ei
    nop
    rst $38
    inc b
    add hl, de
    ret nz

    db $db
    ldh [$3b], a
    ret nz

    ei
    nop
    ei
    nop
    db $e4
    nop
    inc b
    inc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$01
    cp $00
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    db $fc
    nop
    ccf
    nop

jr_00c_4684:
    rlca
    nop
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
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
    ld b, c
    pop bc
    inc bc
    db $e3
    add d
    ld b, c
    add d
    ld b, l
    sub [hl]
    ld [$08d7], sp
    rst $10
    ld [$18d7], sp
    rst $10
    ld [$09d7], sp
    ld a, l
    ld l, l
    ld a, c
    db $10
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld h, c
    ld b, c
    ld [hl], b
    ld d, c
    ld [hl], c
    ld d, e
    ld [$0005], sp
    add hl, sp
    ld e, b
    ld hl, $205a
    ld e, d
    ld hl, $635a
    rst $38
    nop
    rst $38
    rst $38
    or $96
    xor $4c
    adc $4a
    rst $08
    ld c, d
    rst $08
    ld c, d
    adc h
    ld [$ff00], sp
    rst $38
    rst $38
    ld [$8894], sp
    jr nc, jr_00c_4684

    ld h, c
    ld a, [hl-]
    pop bc
    ld [hl], b
    add c
    ld a, [c]
    ld a, [bc]
    rst $38
    nop
    rst $38
    rst $38
    rst $30
    ld b, $6f
    inc c
    adc $8a
    adc [hl]
    ld a, [bc]
    rrca
    ld a, [bc]
    dec c
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld b, $28
    adc l
    jr jr_00c_4714

    sub b
    sbc h
    ld h, b
    ld a, [hl]
    nop
    ld e, $00
    rst $38

jr_00c_4714:
    nop
    rst $38
    rst $38
    di
    ld [hl+], a
    rst $20
    call Call_000_05e7
    ld b, e
    ld [bc], a
    db $e3
    ld [c], a
    di
    ld [de], a
    nop
    rst $38
    rst $38
    rst $38
    rla
    ld h, b
    rlca
    ld [$788f], sp
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ld hl, sp+$38
    ldh a, [rP1]
    sub b
    adc b
    add b
    add b
    add b
    nop
    nop
    nop
    nop

jr_00c_4744:
    rst $38
    rst $38
    rst $38
    di
    inc b
    jp $eb24


    inc b
    rlc h
    rlc h
    push bc
    ld b, $ff
    nop
    rst $38
    rst $38
    jr jr_00c_4769

    jr c, jr_00c_4783

    jr c, jr_00c_4785

    jr c, jr_00c_4787

    jr c, jr_00c_4769

    jr c, jr_00c_476b

    nop
    rst $38
    rst $38
    rst $38
    cp a
    ld b, b

jr_00c_4769:
    cp l
    ld b, d

jr_00c_476b:
    cp l
    ld b, b
    cp d
    ld b, d
    or b
    ld c, b
    jr z, jr_00c_4744

    rst $38
    nop
    rst $38
    rst $38
    add b
    add b
    add d
    add d
    add a
    add l
    adc l
    adc b
    sub a
    sub b
    and $e0

jr_00c_4783:
    nop
    rst $38

jr_00c_4785:
    rst $38
    rst $38

jr_00c_4787:
    db $f4
    ld bc, $31c2
    sub d
    ld h, c
    or d
    ld b, c
    ld a, d
    add c
    ldh a, [$09]
    rst $38
    nop
    rst $38
    rst $38
    rra
    ld d, $2f
    ld h, $4e
    ld c, d
    adc [hl]
    adc d
    ld c, $0a
    ld c, $0a
    nop
    rst $38
    rst $38
    rst $38
    add d
    ld b, c
    add d
    ld b, l
    sub [hl]
    ld [$08d7], sp
    rst $10
    ld [$18d7], sp
    rst $38
    nop
    rst $38
    rst $38
    ld a, l
    ld l, l
    ld a, c
    db $10
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld h, c
    ld b, c
    nop
    rst $38
    rst $38
    rst $38
    ld c, $91
    adc [hl]
    ld sp, $629d
    ld a, $c1
    db $76
    add c
    rst $30
    ld [$00ff], sp
    rst $38
    rst $38
    di
    rrca
    ld h, c
    rrca
    jp $818d


    ld c, $09
    ld c, $08
    rlca
    nop
    rst $38

jr_00c_47e5:
    rst $38
    rst $38
    dec c

jr_00c_47e8:
    rlca
    ld [$8803], sp
    inc bc
    sub h
    ld bc, $805e
    daa
    add b
    rst $38
    nop
    rst $38
    rst $38
    ld hl, sp+$18
    db $fc
    ld [$8cfc], sp
    cp $94
    rst $38
    ld e, a
    rst $38
    daa
    nop
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    inc sp

jr_00c_4809:
    ld e, c
    ld [hl-], a
    ld c, l

jr_00c_480c:
    ld h, $43

jr_00c_480e:
    inc h
    adc c
    ld l, $55
    ld a, d
    rst $38
    nop
    rst $38
    rst $38
    call z, $cc44
    ld c, c
    ret c

    ld c, c
    ret c

    jp $81d0


    add b
    dec b

jr_00c_4823:
    nop
    rst $38

jr_00c_4825:
    rst $38
    rst $38
    di
    inc b

jr_00c_4829:
    jp $eb24


    inc b
    rlc h
    rlc h
    rst $00
    inc b
    rst $08
    jr z, @-$38

    and c
    jr jr_00c_4809

    jr c, jr_00c_4823

    jr c, jr_00c_47e5

    jr c, jr_00c_47e8

    jr c, @-$73

    jr c, jr_00c_480e

    jr nc, jr_00c_480c

    cp c
    adc $f8
    rlca
    db $e4
    add hl, de
    ret z

    ld [hl], $ca
    dec h
    sub a
    ld h, b
    ld d, $a9
    inc b
    ei
    jr nz, jr_00c_4825

    add [hl]
    ld hl, sp+$0f
    db $e4
    add hl, sp
    ret z

    jr jr_00c_4829

    ld e, b
    sub a
    ret nc

    ld d, $51
    inc b
    sub e
    ld hl, $f106
    ld bc, $08ec

jr_00c_486c:
    rst $10
    add hl, de
    ld h, $19
    and [hl]
    xor l
    ld d, [hl]
    ld b, c
    cp d
    ld bc, $1f3a
    ld b, $37
    ld bc, $08e1
    ret nz

    add hl, de
    ld b, b
    add hl, de
    nop
    xor c
    inc d
    ld b, c
    db $fc
    ld [hl], l
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    inc b
    or c
    jp $f838


    ld b, $de
    ld hl, $629d
    ld b, b
    nop
    and b
    nop
    cp b
    nop
    ld e, a
    inc b
    rrca
    jp $f803


    nop
    sbc $00
    sbc l
    ld hl, sp+$05
    jr c, jr_00c_486c

    inc e
    pop hl
    ld c, $f0
    ld c, $71

Call_00c_48b1:
    add $19
    scf
    adc b
    dec bc
    db $e4
    ld b, $f6
    ld b, [hl]
    inc a
    ld [hl+], a
    ld e, $13
    ld c, $d1
    ld c, $f8
    add $f8
    scf
    inc a
    dec bc
    rst $10
    add hl, bc
    add e
    ld b, c
    add e
    ld b, c
    jp $e335


    dec e
    rra
    ld bc, $fd03
    rst $38
    ld bc, $5371
    ld a, l
    ld d, a
    dec a
    dec bc
    dec e
    inc bc
    pop bc
    jp Jump_000_1ffd


    dec b
    inc bc
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_4905:
    nop
    nop
    xor $91
    and $99
    rst $30
    adc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    sbc b
    adc $98
    add $80
    rst $00
    add b
    rst $00
    add b
    jp $c180


    add b
    ret nz

    add b
    ret nz

    jr nz, jr_00c_4905

    db $10
    db $ec
    ld d, b
    xor [hl]
    xor h
    ld d, d
    ld a, [$f805]
    inc bc
    ret z

    dec h
    ret nz

    scf
    inc de
    ld hl, $110b
    ld bc, $0151
    xor l
    nop
    ld a, [$fe06]
    scf
    adc $2e
    db $e4
    dec b
    ld [hl], d
    inc bc
    ld hl, sp+$02
    ld sp, hl

jr_00c_494d:
    inc b
    rst $38
    ld a, [bc]
    or $00
    push af
    nop
    ld a, b
    add b
    inc a
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    ld a, [$f8f9]
    ld sp, hl
    ld sp, hl
    ld a, d
    ld [hl], d
    rst $38
    rst $38
    ld a, a
    rst $38
    dec de
    and h
    ld d, e
    xor h
    inc de
    xor h
    daa
    ld d, b
    daa
    ret nc

    inc b
    cp c
    nop
    ld l, h
    ld h, b
    sub h
    ld b, b
    dec de
    ld b, b
    ld d, e
    ret z

    inc de
    ret c

    cpl
    ld [$fa2f], sp
    ld [hl], h
    rst $38
    sbc [hl]
    rst $18
    ld l, $a3
    ld e, b
    pop de
    ld l, $f9
    ld b, $fd
    ld [bc], a
    rst $38
    nop
    adc l
    ld [hl], d
    rlca
    xor b
    rlca
    ld d, b
    inc c
    and e
    ld b, $d1
    ld [bc], a
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    nop
    adc l
    ld [hl], b
    scf
    add sp, $6f
    sbc l
    ld h, d
    sub e
    jr nz, jr_00c_494d

    ld b, b
    ldh [$0e], a
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, h
    call z, $965e
    rra
    sub e
    inc de
    add b
    db $10
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    rst $38
    ld bc, $3dc3
    rrca
    pop bc
    inc bc
    ld a, l
    ccf
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    ld bc, $3d03
    ccf
    db $fd
    rst $18
    add c
    inc bc
    add c
    inc bc
    add c
    add e
    add c
    add e
    add c
    add e
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $00
    add b
    jp $f2a4


    add l
    rst $38
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    or b
    ldh a, [$b8]
    ret z

jr_00c_4a01:
    cp h
    ret nc

    sbc c
    pop af
    add b
    rst $38
    jp $c32a


    scf
    jp $e11f


    dec bc
    ld hl, sp+$07
    db $fc
    ld de, $18fe
    cp $1d
    ld [hl], $f7
    dec sp
    ei
    ld a, $ff
    rra
    rst $38
    inc bc
    ld a, e
    inc de
    ld l, a
    dec de
    push hl
    inc e
    ld [c], a
    ret nz

    ld a, $c0
    cp a
    ret nz

    ccf
    add b
    rst $28
    nop
    rst $20
    nop
    db $fd
    nop
    db $e3
    nop
    ld a, a
    ld a, a
    cp a
    ccf
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    cp b
    ret nz

    ld hl, sp-$18
    ld hl, sp-$38
    ld [hl], b
    ld hl, sp+$00

jr_00c_4a50:
    ldh a, [rP1]
    ldh a, [rSB]
    ldh [rTMA], a
    add $cf
    or h
    rst $00
    db $fc
    sbc a
    db $ec
    rst $18
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    pop af
    ld sp, hl
    ldh [rTAC], a
    or b
    rlca
    ld c, b
    rlca
    add sp, $07
    ld a, b
    rlca
    jr nc, jr_00c_4a01

    nop
    rst $38
    nop
    ccf
    jr nz, jr_00c_4a50

    adc $b8
    adc [hl]
    jr jr_00c_4a9b

    ld hl, sp-$02
    ld hl, sp+$7e
    ld [hl], b
    adc [hl]
    nop
    rst $38
    ret nz

    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    nop
    nop
    nop
    nop

jr_00c_4a9b:
    nop
    nop
    nop
    nop

jr_00c_4a9f:
    nop
    nop
    nop
    nop
    db $10
    ret nc

    jr jr_00c_4a9f

    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    cp e
    ld b, c
    or e
    ld c, c
    dec hl
    pop de
    ld e, a
    and c
    ccf
    pop bc
    add c
    add e
    add c
    add e
    add l
    add a
    adc l
    adc e
    sub l
    sub e
    push hl
    db $e3
    pop bc
    jp $8381


    rst $38
    add b
    pop bc
    or d
    ret nz

    cp c
    ret nz

    or c
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add c
    add b
    rst $38
    cp [hl]
    db $fd
    cp [hl]
    cp $bf
    cp $bf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    cp $be
    ld a, h
    sbc $58
    cp a
    adc h
    rst $18
    ld b, h
    ld l, a
    ldh [$f6], a
    ld e, b
    db $fc
    ld e, c
    ld l, d
    sbc [hl]
    dec a
    jp nz, $a659

    ld c, h
    inc sp

jr_00c_4afd:
    inc h
    sbc e
    ld d, b
    adc a
    ret nz

    daa
    ret nz

    daa
    nop
    ld h, c
    nop
    ld e, a
    ldh a, [rP1]
    inc a
    ld b, e
    xor c
    ld hl, $5057
    sbc e
    cp c
    dec b
    ld [hl], h
    add e
    db $e3
    cp a
    cp a
    adc a
    rst $38
    sbc c
    inc h
    ld l, $f0
    ld d, a
    ld hl, sp-$65
    db $fc
    inc b
    rst $38
    add e
    db $fc
    dec e
    dec e
    inc sp
    inc sp
    ld c, a
    ld c, a
    cp a
    ccf
    ld a, a
    ld c, $ef
    ld [$51de], sp
    ld sp, hl
    push bc
    pop hl
    jp nz, Jump_000_0cc3

    adc a
    jr nc, jr_00c_4afd

    ld b, b
    ld c, $f1
    ld [$50f7], sp
    xor [hl]
    jp nz, $ec38

    db $ec
    rst $38
    add c
    rst $18
    jp nz, $f1f3

    db $fc
    inc b
    rst $38
    ld bc, $e0df
    ld [hl], d
    adc a
    db $ec
    inc de
    add c
    ld a, [hl]
    jp nz, $f13d

    ld c, $04
    ei
    ld bc, $00fe
    rra
    nop
    ld [hl], b
    ld [hl], d
    ld bc, $85ba
    sbc $40
    rst $38
    jr nz, @+$01

    nop
    ccf
    jr nz, @-$1f

    ld b, b
    rst $38
    nop
    dec c
    db $fd
    add c
    ld a, b
    ld b, c
    cp c
    ld hl, $01d9
    ld sp, hl
    ld hl, $41d9
    cp c
    ld bc, $bff9
    ld b, c
    ccf
    ld b, c
    ld a, a
    ld b, c
    rrca
    ld bc, $8103
    inc bc
    db $fd
    rst $38
    ld bc, $01ff
    add c
    add e
    add c
    add e
    or c
    inc sp
    db $fd
    sbc a
    db $fd
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $c003
    cp a
    ret nz

    cp a
    ldh [$9f], a
    db $fc
    add e
    rst $38
    add b
    cp $81
    cp $81
    db $fd
    add e
    cp [hl]
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    db $fc
    add b
    rst $38
    add b
    cp $80
    adc $80
    call z, $9f62
    ld b, a
    cp e
    adc b
    ld a, [hl]
    xor c

Jump_00c_4bce:
    ld a, l
    dec hl
    rst $38
    ld h, $fe
    jr nz, @+$01

    ld h, $fd
    nop
    ld h, b
    nop
    ld b, h
    ld bc, $0280
    add b
    nop
    nop
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    ld c, a
    ld l, b
    ld de, $82bf
    ret c

    and h
    adc a
    inc c
    ld a, l
    ld b, $f7
    ld [bc], a
    ld a, [$01fd]
    ld c, b
    rst $38
    jr jr_00c_4c6b

    rlca
    inc hl
    ld [hl], e
    inc hl
    di
    ld [hl], e
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    cp $fe
    push af
    ld c, $c2
    cp $3c
    nop
    ld c, $e2
    ld l, $d2
    inc e
    call nz, $b253
    ld [hl], e
    sub e
    nop
    pop af
    ld [bc], a
    ld bc, $7ff0
    ld a, [c]
    rst $28
    ld [c], a
    rst $28
    db $e4
    db $db
    jp nc, $d3cd

    db $ec
    db $e4
    ld h, $ec
    xor $b6
    or a
    db $ec
    ld c, a
    cp e
    dec de
    jp c, $9c4b

    ld h, h
    ld b, b
    db $fc
    dec h
    ret c

    db $ed
    db $10
    or [hl]
    ld e, h
    ld c, h
    or $1b
    and $4a
    or a
    inc b
    sbc e
    rrca
    inc bc
    ld a, [hl]
    add c
    ld hl, sp-$7d
    ld a, b
    ld b, b
    ldh a, [$c6]
    ld a, d
    call nz, $c07f
    rrca
    ldh a, [rTAC]
    ld a, b
    ld bc, $0779
    ld a, a
    add a
    jr c, jr_00c_4c6b

    ld sp, $3901
    nop
    inc a
    nop
    ld c, $c0
    add [hl]
    rst $38
    ld bc, $01ff

jr_00c_4c6b:
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp a
    ld b, c
    ccf
    ld b, c
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    pop bc
    add e
    add c
    inc bc
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    cp $9f
    cp $9f
    add b
    call c, $d880
    add b
    ret c

    add b
    ld hl, sp-$80
    ldh a, [$80]
    ldh a, [$80]
    ldh [$80], a
    ldh [$36], a
    cp $36
    rst $38
    ld [hl-], a
    cp $3b
    cp $3c
    cp $78
    cp $78
    db $fd
    ld a, d
    db $fd
    ld bc, $0000
    nop
    ld bc, $0100
    ld bc, $0001
    ld bc, $0300
    ld bc, $0303
    add e
    jr c, jr_00c_4cf2

    ld l, a
    xor l
    rst $28
    nop
    sbc a
    sbc a
    ld b, b
    ld hl, $425e
    inc a
    nop
    cp a
    rst $00
    add e
    or b
    jr nz, jr_00c_4d4c

    and b
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc d
    ld l, d
    ld e, a
    nop
    ld [bc], a
    db $fc
    rrca
    ldh [$aa], a
    ld d, e
    ld d, e

jr_00c_4cf2:
    and a
    inc h
    call nz, $8c44
    jp z, $e0d7

    ld e, a
    ld bc, $3d03
    rrca
    cp $b9
    ei
    ld [hl], h
    db $fc
    db $e3
    db $f4
    bit 0, b
    ldh a, [rP1]
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    add b
    ld d, b
    nop
    ldh a, [$c0]
    db $eb
    ld b, b
    ld a, a
    rra
    rrca
    ccf
    rra
    ld a, a
    ccf
    cp a
    cp a
    cp a
    cp a
    cp a
    sbc a
    sbc $1c
    ld c, c
    add b
    rlca
    ld hl, sp+$06
    add hl, sp
    rlca
    ld a, b
    ld b, $38
    ld b, $79
    rlca
    jr c, jr_00c_4d3b

    ld hl, sp+$0f
    jr c, @-$7e

    ld b, $e1
    rst $00

jr_00c_4d3b:
    pop bc
    add a
    pop hl
    add $c0
    add [hl]
    ldh [$c6], a
    nop
    ld b, $e0
    rst $00
    rla
    ld h, c
    rlca
    add hl, bc
    adc a

jr_00c_4d4c:
    ld a, c
    ccf
    ld b, c
    ccf
    ld b, c
    cp a
    pop bc
    ccf
    ld b, c
    ccf
    ld b, c
    ld sp, hl
    dec sp
    pop af
    inc bc
    sub c
    adc e
    add c
    add e
    add c
    inc bc
    ld bc, $8103
    inc bc
    pop bc
    add e
    cp $9f
    cp $9f
    cp $bf
    cp $bf
    cp $bf
    cp $bf
    cp $bf
    cp $bf
    add b

jr_00c_4d78:
    ldh [$80], a
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    ld [hl], b
    ei
    ld [hl], h
    ei
    ld h, b
    rst $38
    ld h, b
    rst $10
    ld l, b
    sub a
    ldh [rIF], a
    ldh a, [rIF]
    add sp, $07
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    daa
    rrca
    ld l, a
    rra
    rst $28
    rra
    rst $38

jr_00c_4da5:
    rra
    rst $28
    jr nc, jr_00c_4d78

    ld de, $00ee
    rst $28
    jr @-$17

    ld [$0ce7], sp
    db $e3
    inc l
    jp $c11e


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    adc b
    jr z, jr_00c_4e02

    ret z

    jr z, jr_00c_4da5

    ld c, b
    cp b
    ld c, b
    or b
    add hl, bc
    ld sp, hl
    dec bc
    di
    rra
    rst $20
    ld hl, sp-$59
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ldh a, [rIE]
    ld sp, hl
    or $f3
    db $fc
    rst $30
    ld hl, sp+$27
    ld a, $2f
    daa
    ld b, a
    ld c, a
    add a
    add a
    add e

jr_00c_4df0:
    add e
    add e
    sub e
    pop bc
    sub c
    ldh [$81], a
    add hl, hl
    add $3b

jr_00c_4dfa:
    rst $00
    ld a, e
    sub a
    ei
    ccf
    db $fd
    cpl
    db $fd

jr_00c_4e02:
    daa
    cp [hl]
    ld h, a
    sbc a
    ld a, [hl]
    ld a, a
    add h
    rst $38
    adc h
    rst $38
    sub h
    rst $28
    sbc h
    rst $28
    cp [hl]
    rst $38
    or [hl]
    rst $38
    ld b, $77
    adc a
    nop
    ld a, e
    db $10
    db $eb
    jr z, jr_00c_4df0

    jr nc, jr_00c_4dfa

    db $10
    ld sp, hl
    ld c, b
    or c
    ldh a, [$09]
    nop
    ld [hl], b
    sbc l
    ld h, d
    inc de
    jr nz, jr_00c_4e4d

    ret nz

    ld h, b
    adc [hl]
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call z, $decc
    sub [hl]
    sbc a
    inc de
    inc de
    nop
    stop
    nop
    nop
    nop
    rrca
    nop
    rra
    add $08
    call nz, $8c18
    inc sp

jr_00c_4e4d:
    ld e, $e1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    ld h, d
    ld [hl], e
    ld b, d
    pop hl
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    cp a
    ld b, c
    adc e
    dec h
    ld b, e
    dec c
    rlca
    ld sp, hl
    sbc a
    ld h, c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $83c1
    db $fd
    sbc a
    ld sp, hl
    ld h, e
    ld h, c
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    adc [hl]
    rst $38

jr_00c_4e8e:
    add [hl]
    rst $38
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    add b
    pop hl
    add b
    pop hl
    add b
    pop af
    add b
    ld sp, hl
    add b
    db $fd
    add b
    rst $28
    add b
    rst $20
    add b
    ldh [$f4], a
    inc bc
    cp d
    ld bc, $40be
    ld sp, hl
    ld b, $f8
    inc bc
    ld hl, sp+$00
    db $fc
    nop
    cp $02
    rrca
    rst $30
    ld b, a
    cp e
    ld bc, $06be
    sbc l
    rlca
    sbc a
    rlca
    sbc a
    inc bc
    rra
    ld bc, $1f1f
    ret nz

    jr jr_00c_4e8e

    add a
    ld c, c
    ld a, a
    add b
    ld a, h
    inc hl
    nop
    rst $18
    nop
    rrca
    nop
    rra
    rst $38
    rst $18
    rst $38
    ret c

    ld sp, hl
    add $40
    ccf
    and b
    call c, $e0f0
    ld sp, hl
    ldh a, [$f2]
    ldh [$1f], a
    db $e3
    ld c, a
    add hl, hl
    xor a
    adc h
    set 1, d
    db $ed
    inc b
    rra
    and d
    nop
    adc a
    nop
    add a
    di
    db $fc
    ld sp, hl
    ld h, [hl]
    db $fc
    inc hl
    ld a, [$1405]
    db $eb
    ld h, d
    ld e, l
    ld a, b
    ld [hl], b
    ld a, c
    ld a, b
    ldh [$c0], a
    ldh [$91], a
    jp $89bc


    ld a, [hl]
    rst $08
    inc a
    rst $28
    inc d
    rrca
    ldh a, [$1f]
    ldh [$df], a
    ld l, $8f
    ld h, h
    add h
    ld b, e
    nop
    add c
    nop
    jp $eb00


    nop
    rrca
    nop
    ld e, $0f
    rst $30
    ld a, a
    adc a
    adc a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rst $08
    ccf
    rst $28
    rra
    rst $38
    rrca
    ret nz

    ld [$7000], sp
    nop
    add b

jr_00c_4f3d:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    inc sp
    add b
    adc e
    ld b, b
    rst $00
    jr nz, jr_00c_4f3d

    inc b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp-$37
    ld a, h
    dec [hl]
    inc a
    dec bc
    inc a
    rlca
    jr jr_00c_4f7a

    ld sp, hl
    nop
    ld hl, sp+$06
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $30
    ld [$18e7], sp
    rst $08
    jr nc, jr_00c_4f7e

    add hl, sp
    inc bc

jr_00c_4f7a:
    ld a, b
    ld bc, $00fc

jr_00c_4f7e:
    cp $00
    rst $38
    nop
    rst $30
    nop
    rst $20
    db $10
    rst $08
    rst $38
    nop
    ld a, a
    nop
    rra
    add b
    rrca
    ldh [$87], a
    ld a, b
    jp $f33c


    inc c
    ld sp, hl
    ld b, $00
    ldh a, [$80]
    ld a, b
    ldh [rNR32], a
    ld [hl], b
    ld c, $18
    add a
    inc c
    jp $f304


    ld [bc], a
    ld sp, hl
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp a
    ld bc, $118f
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld b, c
    jp $b371


    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    db $fc
    add e
    ld hl, sp-$7b
    ldh [$97], a
    ret nz

    xor a
    ret nz

    add a
    add b
    ldh [$80], a

jr_00c_4fda:
    rst $20
    sub b

jr_00c_4fdc:
    rst $38
    add e
    db $fc
    add a
    ei
    sbc a
    rst $28
    cp a
    ret nc

    cp a
    ld hl, sp-$01
    rlca
    rst $38
    rrca
    rst $38
    rrca
    ccf
    jp $f403


    ld bc, $000a
    ld sp, hl
    nop
    adc a
    ld [bc], a
    ccf
    rlca
    rst $38
    rla
    rst $28
    call c, $fe23
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld b, $fb
    ld [hl], b
    add b

jr_00c_5008:
    cp a
    rst $28
    ret nc

    ld hl, sp-$79
    rst $30
    jr c, jr_00c_5008

    rra
    ld hl, sp+$0f
    add hl, sp
    or $03
    db $fc
    ld h, [hl]
    ret nz

    add b
    rst $28
    ld [hl+], a
    ret c

    db $10
    rst $30
    ld l, b
    sbc b
    db $f4
    ld [$31c8], sp
    nop
    inc bc
    nop
    add a
    add b
    ld b, a
    add b
    ld h, a
    ret nz

    ccf
    ldh a, [rIF]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    ld a, e
    ld a, b
    ld a, e
    cp b
    add hl, sp
    sbc b
    ld [$40c0], sp
    or b
    jr nc, @+$01

    add hl, sp
    cp $39
    cp $1f
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rst $38
    nop
    ei
    ld b, h
    ld a, [$fec5]
    ret nz

    add b
    jr jr_00c_4fda

    jr jr_00c_4fdc

    jr c, jr_00c_505e

jr_00c_505e:
    jr nc, jr_00c_50a0

    cp b
    and h
    ld e, b
    ld hl, $23d9
    db $db
    rst $38
    dec c
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    ld [$40bf], sp
    ccf
    ld b, b
    nop
    ld [hl-], a
    nop
    ld sp, $3100
    nop
    ld sp, $3300
    nop
    scf
    ret nz

    cp [hl]
    add b
    inc e
    rst $30
    nop
    jp $9330


    ld h, b
    or e
    ld b, b
    ld a, e
    add b
    di
    ld [$08f3], sp
    ld l, e
    sub b
    inc e
    rla
    inc l
    daa
    ld c, h
    ld c, e
    adc h
    adc e
    inc c

jr_00c_50a0:
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    call c, $8edb
    ld [hl], c
    adc [hl]
    ld [hl], c
    sbc [hl]
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld de, $318d
    adc h
    ld hl, $219d
    sbc c
    ld hl, $2199
    sbc c
    ld hl, $0199
    sbc c
    ld a, l
    ld [bc], a
    ld [hl], e
    inc c
    ld a, a
    nop
    ld a, [hl]
    nop
    ld e, d
    ld hl, $635a
    ld e, d
    ld hl, $215a
    add d
    db $fd
    add b
    ld [hl], e
    add b
    ld a, a
    pop bc
    ld a, [hl]
    rst $08
    ld c, d
    adc h
    ld [$4ace], sp
    rst $08
    ld c, d
    adc e
    dec d
    adc e
    ld sp, $619b
    dec sp

jr_00c_50ee:
    pop bc
    ld [hl], e
    add c
    di
    add hl, bc
    di
    dec c
    ei
    dec b
    ld [hl], l
    add a
    ld l, l
    adc a
    call $8d8b
    dec bc
    dec c
    dec bc
    dec c
    inc bc
    dec b
    inc bc
    ld bc, $c003
    and b
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    add b
    rst $38
    add b
    ldh a, [$89]
    ldh a, [$89]
    add sp, -$6d
    cp a
    rst $18
    adc a
    ret nz

    add b
    ret nz

    add b
    rst $38
    add b
    rst $38
    adc [hl]
    ld a, [$f88e]
    sbc [hl]
    ld hl, sp+$00
    ld a, a
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $30
    ld [$18d7], sp
    rst $10
    ld [$08d7], sp
    db $e4
    add b
    nop
    inc bc
    nop
    rra
    ld bc, $01ff
    pop af
    ld h, c
    ld b, c
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    rst $38
    nop
    rst $38
    nop
    ret c

    ld hl, $205b
    ld e, e
    jr nz, jr_00c_51ad

    ld h, d
    ld e, e
    jr nz, jr_00c_51b1

    jr nz, jr_00c_5158

jr_00c_5158:
    rst $38
    nop
    rst $38
    ld c, [hl]
    jp z, Jump_00c_4bce

    adc $4b
    adc h
    add hl, bc
    call z, $cc4b
    ld c, e
    rst $38
    ld a, h
    rst $38
    inc a
    rst $10
    jr jr_00c_50ee

    ld b, a
    add b
    rrca
    add b
    dec bc
    nop
    sbc a
    nop
    rra
    add hl, sp
    cp $59
    cp [hl]
    inc l
    di
    ld a, b
    cp b
    ld a, h
    ld hl, sp+$7c
    db $fc
    db $fc
    ld a, h
    cp $fc
    cp $80
    cp l
    ld c, b
    jr c, @-$3e

    inc a
    ret nz

    ld e, $e0
    ld e, $e0
    inc e
    ld [c], a
    inc c
    ld a, [c]
    ld b, e
    cp d
    rlca
    cp l
    rlca
    dec [hl]
    inc bc
    ld a, [hl-]
    inc bc
    ld a, [de]
    ld b, e
    ld a, [de]
    jp $e31e


    ld c, $be
    ld b, c
    inc a
    ld b, e
    ld a, l
    ld b, d

jr_00c_51ad:
    rrca
    nop
    nop
    add b

jr_00c_51b1:
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add c
    add c
    add d
    add d
    or b
    jr nc, @+$01

    sbc a
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0700
    inc de
    nop
    ld h, e

jr_00c_51ca:
    inc b
    inc sp
    adc h
    rra
    ret nz

    ccf
    nop
    db $fc
    inc bc
    ldh [$1f], a
    add b

jr_00c_51d6:
    ld a, a
    db $fc
    inc de
    db $fc
    ld h, e
    ld hl, sp+$31
    ld hl, sp-$61
    ret nz

    ccf
    nop
    db $fc
    nop
    ldh [rP1], a
    add b
    sbc [hl]
    ld h, c
    ret c

    inc hl
    ret c

    jr nz, jr_00c_51ca

    ld [hl+], a
    rst $18
    jr nz, jr_00c_5219

    ret c

    jr nz, @-$1f

    nop
    rst $38
    ld hl, $0799
    rst $18
    rlca
    ret c

    ld bc, $00dd
    rst $18
    nop
    daa
    nop
    jr nz, jr_00c_5236

    nop
    ld a, [de]
    jr nz, jr_00c_520c

    jr c, jr_00c_521c

jr_00c_520c:
    ld l, h
    jr c, jr_00c_51d6

    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $08
    ld c, e

jr_00c_5219:
    rst $38
    ld a, [bc]
    rst $00

jr_00c_521c:
    ld bc, $0083
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    inc a
    sbc a
    ld h, c
    inc de
    ld hl, $c123
    ld h, e
    adc l
    rst $20
    add hl, de
    rst $38
    ld bc, $01ff
    rst $38

jr_00c_5236:
    ld bc, $cfcd
    db $dd
    sub a
    sbc l
    inc de
    ld de, $1103
    rlca
    ld bc, $0107
    rlca
    ld bc, $d107
    add d
    pop hl
    add [hl]
    di
    adc h
    db $db
    add b
    ldh [$b8], a
    ret c

    and [hl]
    cp $81
    rst $38
    add b
    cp h
    ret nc

    cp h
    ldh [$b8], a
    ldh a, [$be]
    jp c, $c087

    add c
    ret nz

    add b
    ret nz

    add b
    ret nz

jr_00c_5267:
    dec de
    jr nz, jr_00c_526d

    jr c, jr_00c_527f

    ld l, h

jr_00c_526d:
    dec sp
    call nz, $807f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call z, $fc4b
    dec bc
    call nz, $8003
    inc bc

jr_00c_527f:
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    sbc l
    ret nz

    rst $08
    ld h, b
    ldh a, [$38]
    ld a, l
    nop
    rst $30
    add b
    ccf
    add b
    ld a, a
    ret nz

    ccf
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, b
    ld l, b
    ret nz

    ld b, a
    add b
    jr nz, jr_00c_5267

jr_00c_52a7:
    ld c, $f0
    inc c
    ldh a, [$0c]
    di
    ld e, $e1
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    db $e3
    ld c, $e3
    ld c, $e1
    inc c
    ld b, b
    inc e
    ld b, b

jr_00c_52c0:
    jr @-$7e

    jr c, jr_00c_52c4

jr_00c_52c4:
    ld [hl], b
    nop
    ldh [rIE], a
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [$0e]
    db $e3
    jr jr_00c_52c0

    ld de, $27d0
    nop
    rrca
    ld [bc], a
    inc e
    inc b
    jr c, jr_00c_52e6

    jr nc, jr_00c_52eb

    ld [hl], b
    rra
    ld h, e
    rra
    db $ec
    inc a

jr_00c_52e6:
    ret nc

    nop
    rst $38
    nop
    rst $38

jr_00c_52eb:
    nop
    or $20
    adc l
    jp Jump_000_1f1c


    ld h, b
    ld a, e
    add h
    cp c
    ld b, [hl]
    ld [bc], a
    nop
    dec b
    nop
    dec e
    nop
    ld a, [$f020]
    jp Jump_000_1fc0


    nop
    ld a, e
    nop
    cp c
    ld h, b
    adc a
    add b
    scf
    db $10
    db $eb
    sbc b
    ld h, h

jr_00c_530f:
    sbc b
    ld h, l
    or l
    ld l, d
    add d

jr_00c_5314:
    ld e, l
    add b
    ld e, h
    ld hl, sp+$60
    db $ec
    add b
    add a
    db $10
    inc bc
    sbc b
    ld [bc], a
    sbc b
    nop
    sub l
    jr z, jr_00c_52a7

    ccf
    xor [hl]
    rra
    ldh [$27], a
    sbc b
    inc de
    ld l, h
    ld d, e
    and h
    jp hl


    ld b, $68
    sub l
    jr nz, jr_00c_5314

    inc b
    ld [hl], e
    ld h, b
    ld e, $f0
    daa
    sbc h
    inc de
    jr jr_00c_5392

    ld a, [de]
    jp hl


    dec bc
    ld l, b
    adc d
    jr nz, jr_00c_530f

    add h
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $816f

jr_00c_5357:
    ld bc, $0103
    inc bc
    ld bc, $0103
    add e
    ld bc, $01c3
    jp $f311


    sbc c
    ld a, e
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    db $fc
    add e
    ld sp, hl
    add l

Jump_00c_5371:
    pop af
    adc d
    ld sp, hl
    add d
    db $e3
    sub h
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add e
    jp $c486


    adc h
    ret z

    adc [hl]
    ret z

    sbc b
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00c_5392:
    nop
    rst $38
    nop
    rst $08
    jr nz, jr_00c_5398

jr_00c_5398:
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_00c_53df

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00c_53b0:
    nop
    rst $38
    nop
    cp $01
    inc a
    add d
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop

jr_00c_53be:
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    db $e3
    db $e3
    rlca
    jr z, jr_00c_5357

    jr @+$0b

    sub b
    sbc l
    ld h, b
    ld a, a
    nop
    rra
    nop
    dec c
    jp nz, Jump_000_22a4

    ld a, [c]
    inc hl
    and $cd
    and $05
    ld b, d
    inc bc

jr_00c_53df:
    ld [c], a
    db $e3
    ld a, [c]
    inc de
    ld a, d
    dec hl
    ld e, e
    ld c, d
    push bc
    ld a, [de]
    adc e
    ld [hl], h
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    or c
    ld c, [hl]
    ldh [$15], a
    ldh [$0a], a
    jr nc, jr_00c_53be

    ld h, b
    adc e
    ld b, b
    sbc a
    nop
    cp a
    nop
    rst $38
    nop
    or c
    ld c, $ec
    rla
    or $d8
    dec h
    jp z, $c835

    dec [hl]
    db $e4
    ld a, [bc]
    db $e4
    dec bc
    jr nz, jr_00c_53b0

    nop
    ld [hl], $06
    add hl, hl
    ld [bc], a
    ret c

    ld [bc], a
    jp z, $c813

    dec de
    db $f4
    db $10
    db $f4
    ld e, a
    ld l, $ff
    ld a, c
    ei
    ld [hl], h
    and b
    ld c, [hl]
    ret nz

    rra
    ld b, b
    sbc a
    jr nz, @+$01

    ld d, b
    ld l, a
    nop
    xor a
    nop
    ld e, $01
    inc a
    ccf
    cp a
    ccf
    rst $38
    ccf
    ld e, a
    sbc a
    rra
    sbc a
    sbc a
    ld e, [hl]
    ld c, [hl]
    rst $38
    rst $38
    cp $ff
    inc b
    dec sp
    ld [$0a37], sp
    ld [hl], l
    dec [hl]
    ld c, d
    ld e, a
    and b
    rra
    ret nz

    inc de
    and h
    add e
    ld l, h
    ret z

    add h
    ret nc

    adc b
    add b
    adc d
    add b
    or l
    nop
    ld e, a
    ld h, b
    ld a, a
    db $ec
    ld [hl], e
    db $f4
    daa
    ld h, e
    add c
    ld h, e
    add l
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $10
    add hl, bc
    rst $10
    add hl, de
    rst $10
    add hl, bc
    rst $10
    add hl, bc
    dec e
    ld l, a
    add hl, de
    ld [hl], e
    ld de, $11f3
    di
    ld sp, $61d3
    jp Jump_00c_5371


    ld [hl], c
    ld d, e
    di
    add h
    jp $eba4


    add h
    res 0, h
    res 0, h
    push bc
    add [hl]
    ret


    xor d
    pop bc
    and d
    sbc b
    ret nc

    cp b
    add sp, -$48
    add sp, -$48
    add sp, -$48
    ret z

    cp b
    ret z

    or h
    ret nz

    cp h
    ret z

    add $08
    call nz, $8c18
    inc sp
    ld e, $e1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    ld h, d
    ld [hl], e
    ld b, d
    pop hl
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    ldh [$0d], a
    ldh [rNR12], a
    ld h, b
    rla
    ld h, b
    sbc [hl]
    ldh [$0c], a
    pop af
    nop
    rst $38
    nop
    db $fc
    inc b
    sbc e
    di
    sbc l
    pop af
    sbc b
    ld a, b
    rra
    ld a, a
    rra
    ld a, [hl]
    ld c, $71
    nop
    rst $38
    inc bc
    ld hl, sp+$1d
    inc bc
    rra
    rla
    rra
    inc de
    ld c, $1f
    nop
    rrca
    nop
    rrca
    add b
    rlca
    ld h, b
    ld h, e
    di
    dec l
    db $e3
    ccf
    ld sp, hl
    scf
    ei
    ccf
    rst $38
    rra
    rst $38
    rra
    ld a, a
    adc a
    sbc a
    rlca
    inc bc
    ld a, h
    inc bc
    db $fd
    inc bc
    db $fc
    ld bc, $00f7
    rst $20
    nop
    cp a
    nop
    rst $00
    nop
    cp $fe
    db $fd
    db $fc
    rst $38
    cp $fd
    cp $ff
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    jp $c354


    db $ec
    jp $87f8


    ret nc

    ld e, $e0
    ld a, $88
    ld a, a
    jr jr_00c_55b5

    cp b
    ld l, h
    rst $28
    call c, Call_00c_7cdf
    rst $38
    ld hl, sp-$01
    pop bc
    sbc $c9
    or $d8
    and a
    jr c, jr_00c_558e

    rst $10
    add hl, bc
    add e
    ld b, c
    add e
    ld b, c
    jp $e335


    dec e
    rra
    ld bc, $f907
    rst $38
    ld bc, $5371
    ld a, l
    ld d, a
    dec a
    dec bc
    dec e
    inc bc
    pop bc
    jp Jump_000_1ffd


    ld bc, $0107
    rst $38
    ld [$e593], a
    sbc c
    ld a, [c]
    adc h
    ld hl, sp-$7a
    db $fc
    add e
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    sbc h
    call z, $c49e
    add a
    jp nz, $c183

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    cp $00
    db $fd
    ld bc, $02fb
    rst $38

jr_00c_558e:
    inc b
    rst $38
    nop
    db $fc
    inc b
    ei
    ld [bc], a
    ccf
    add b
    nop
    rrca
    ld bc, $021e
    dec e
    inc b
    dec de
    nop

jr_00c_55a0:
    rra
    inc b
    dec de
    ld b, d
    ld e, l
    ldh [rIE], a
    scf
    scf
    rst $38
    add c
    ei
    ld b, e
    rst $08
    adc a
    ccf
    jr nz, @+$01

    add b
    ei
    rlca

jr_00c_55b5:
    ld c, [hl]
    pop af
    scf
    ret z

    add c
    ld a, [hl]
    ld b, e
    cp h
    adc a
    ld [hl], b
    jr nz, jr_00c_55a0

    add b
    ld a, a
    nop
    ld hl, sp+$00
    ld c, $b8
    cp b
    call z, $f2cc
    ld a, [c]
    db $fd
    db $fc
    cp $70
    rst $30
    db $10
    ld a, e
    adc d
    sbc a
    and e
    add a
    ld b, e
    jp $f130


    inc c
    db $fd
    ld [bc], a
    ld [hl], b
    adc a
    db $10
    rst $28
    ld a, [bc]
    ld [hl], l
    ld b, e
    inc e
    nop
    ld a, [$000f]
    inc a
    jp nz, $8495

    ld [$d90a], a
    sbc l
    and b
    ld l, $c1
    rst $00
    db $fd
    db $fd
    pop af
    rst $38
    sbc c
    inc h
    ld [hl], h
    rrca
    ld [$d91f], a
    ccf
    jr nz, @+$01

    pop bc
    ccf
    ld a, l
    ld a, $7b
    ld a, [de]
    db $fd
    ld sp, $22fb
    or $07
    ld l, a
    ld a, [de]
    ccf
    sbc d
    ld d, [hl]
    ld a, c
    cp h
    ld b, e
    sbc d
    ld h, l
    ld [hl-], a
    call z, $d924
    ld a, [bc]
    pop af
    inc bc
    db $e4
    inc bc
    db $e4
    nop
    add [hl]
    rst $38
    ld bc, $6d83
    inc bc
    db $dd
    inc bc
    sbc l
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $8103
    ld bc, $3dff
    sbc a
    ld a, l
    ccf
    db $fd
    ld a, a
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ld a, a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $00
    add b
    jp $f2a4


    add l
    and $98
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    or b
    ldh a, [$b8]
    ret z

    cp h
    ret nc

    sbc c
    pop de
    sub e
    db $d3
    ld e, $01
    rra
    ld hl, $225e
    ld e, a
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl]
    ld b, e
    ld [hl], b
    rrca
    ld h, b
    ld e, $e0
    sbc [hl]
    ldh [$5e], a
    pop bc
    ld e, h
    ret nz

jr_00c_567e:
    ld c, h
    ret nz

    ld e, h
    add b
    inc a
    add b
    ld [hl], b
    add e
    ld h, c
    daa
    ld h, h
    scf
    ld [hl], a
    ld l, l
    db $ed
    scf
    ld a, [c]

jr_00c_568f:
    db $dd
    ret c

    ld e, e
    jp nc, Jump_000_2639

    ld [bc], a
    ccf
    and h
    dec de
    or a
    ld [$3a6d], sp
    ld [hl-], a
    ld l, a
    ret c

    ld h, a
    ld d, d
    db $ed
    jr nz, jr_00c_567e

    ldh a, [$c0]
    xor a
    ld [hl], b
    ld b, e
    ld a, a
    inc a
    nop
    ld [hl], b
    ld b, a
    ld [hl], h
    ld c, e
    jr c, jr_00c_56d6

    jp z, $ce4d

    ret


    nop
    adc a
    ld b, b
    add b
    rrca
    cp $4f
    rst $30
    ld b, a
    rst $30
    daa
    db $db
    ld c, e
    or e
    swap a
    ld a, [c]
    ld d, $88
    db $fd
    ld b, c
    dec de
    dec h
    pop af
    jr nc, jr_00c_568f

    ld h, b
    rst $28
    ld b, b
    ld e, a
    cp a

jr_00c_56d6:
    add b
    ld [de], a
    rst $38
    jr jr_00c_56e9

    ldh [$c4], a
    adc $c4
    rst $08
    adc $9f
    sbc a
    cp a
    cp a
    ld a, a
    ld a, a
    ld b, [hl]
    ld sp, hl

jr_00c_56e9:
    ld [c], a
    db $dd
    ld de, $957e
    cp [hl]
    call nc, Call_00c_64ff
    ld a, a
    inc b
    rst $38
    ld h, h
    cp a
    nop
    ld b, $00
    ld [hl+], a
    add b
    ld bc, $0140
    nop
    nop
    add b
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    inc bc
    db $fd
    inc bc
    db $fd
    rlca
    ld sp, hl
    ccf
    pop bc
    rst $38
    ld bc, $817f
    ld a, a
    add c
    cp a
    pop bc
    ld a, l

jr_00c_5718:
    inc bc
    ld bc, $0103
    rlca
    ld bc, HeaderManufacturerCode
    rst $38
    ld bc, $017f
    ld [hl], e
    ld bc, $c633
    xor b
    call $c898
    sub b
    call c, $fea0
    add b
    sbc $80
    call z, $e482
    and d
    or e
    ld [c], a
    and a
    call $c5a7
    add e
    jp nz, $e2a3

    or e
    jp nc, $eabb

    sbc e
    jp z, Jump_000_1f60

    ld h, b
    inc e
    ld h, b
    ld e, $60
    sbc h
    ld h, b
    sbc [hl]
    ldh [rNR32], a
    ldh [$1f], a
    ldh a, [rNR32]
    add c
    ld h, b
    add a
    ld h, e
    add e
    ld h, c
    add a
    ld h, e
    inc bc
    ld h, c
    rlca
    ld h, e
    nop
    ld h, b
    rlca
    db $e3
    ld [bc], a
    rrca
    nop
    rlca
    nop
    rlca
    ld bc, $0106
    ld a, [bc]
    nop
    rrca
    inc bc
    rst $10
    ld [bc], a
    cp $f8
    ldh a, [$fc]
    ld hl, sp-$02
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld sp, hl
    ld a, e
    jr c, jr_00c_5718

    ld bc, $5659
    ld a, [$4000]
    ccf
    ldh a, [rTAC]
    ld d, l
    jp z, $e5ca

    inc h
    inc hl
    ld [hl+], a
    ld sp, $eb53
    rlca
    ld a, [$c080]
    cp h
    ldh a, [$7f]
    sbc l
    rst $18
    ld l, $3f
    rst $00
    cpl
    db $d3
    pop bc
    inc e
    inc d
    or $b5
    rst $30
    nop
    ld sp, hl
    ld sp, hl
    ld [bc], a
    add h
    ld a, d
    ld b, d
    inc a
    nop
    db $fd
    db $e3
    pop bc
    dec c
    inc b
    ld c, $05
    rlca
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    ld a, a
    ld l, h
    rst $38
    ld c, h
    ld a, a
    call c, Call_000_3c7f
    ld a, a
    ld e, $7f
    ld e, $bf
    ld e, [hl]
    cp a
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    add b
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    ret nz

    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    ld a, a
    ld sp, hl
    ld a, a
    ld sp, hl
    ld bc, $013b
    dec de
    ld bc, $011b
    rra
    ld bc, $010f
    rrca
    ld bc, $0107
    rlca
    add $88
    call nz, $cc98
    or e
    sbc $a1
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp e
    ld [c], a
    or e
    jp nz, $c0a1

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    cp $21
    rst $38
    ld sp, $29ff
    rst $30
    add hl, sp
    rst $30
    ld a, l
    rst $38
    ld l, l
    rst $38
    ld h, b
    xor $f1
    nop
    sbc $08
    rst $10
    inc d
    rrc h
    db $db
    ld [$129f], sp
    adc l
    rrca
    sub b
    nop
    ld c, $e4
    ld a, h
    db $f4
    db $e4
    ld [c], a
    ld a, [c]
    pop hl
    pop hl
    pop bc
    pop bc
    pop bc
    ret


    add e
    adc c
    rlca
    add c
    sub h
    ld h, e
    call c, $dee3
    jp hl


    rst $18
    db $fc
    cp a
    db $f4
    cp a
    db $e4
    ld a, l
    and $f9
    ld a, [hl]
    ld de, $1c14
    inc de
    inc d
    dec de
    ld [de], a
    dec e
    ld [de], a
    dec c
    sub b
    sbc a
    ret nc

    rst $08
    ld hl, sp-$19
    rra
    push hl
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rrca
    rst $38
    sbc a
    ld l, a
    rst $08
    ccf
    rst $28
    rra
    inc c
    di
    adc b
    ld [hl], a
    nop
    rst $30
    jr @-$17

    db $10
    rst $20
    jr nc, @-$37

    inc [hl]
    jp $8378


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    ld c, $df
    ld l, $df
    ld b, $ff
    ld b, $eb
    ld d, $e9
    rlca
    ldh a, [rIF]
    ldh a, [rNR22]
    ldh [$e0], a
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$e4]
    ldh a, [$f6]
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$09
    ld a, a
    ld sp, hl
    ld a, a
    ld sp, hl
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld bc, $0107
    rlca
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp $81
    db $fc
    add d
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add c
    pop bc
    and e
    db $e3
    ldh a, [$ef]
    cp $f1
    pop af
    cp $f0
    rst $38
    ldh a, [rIE]
    di
    db $fc
    rst $30
    ld hl, sp-$02
    pop af
    inc bc
    stop
    ld c, $00
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop

jr_00c_5924:
    rlca
    nop
    ld c, $07
    inc bc
    rlca
    adc c
    jp $913d


jr_00c_592e:
    ld a, [hl]
    di
    inc a
    rst $30
    jr z, jr_00c_5924

    rrca
    ld hl, sp+$07
    ei

jr_00c_5938:
    ld [hl], h
    pop af
    ld h, $21
    jp nz, $8100

    nop
    jp $d700


    nop
    ldh a, [rP1]
    ld a, b
    ld hl, sp-$39
    ld a, [c]

jr_00c_594a:
    sub h
    push af
    ld sp, $53d3
    or a
    jr nz, jr_00c_594a

    ld b, l
    nop
    push af
    nop
    db $ed
    rst $08
    ccf
    sbc a
    ld h, [hl]
    ccf
    call nz, $a05f
    jr z, jr_00c_5938

    ld b, [hl]
    cp b
    ld e, $0e
    sbc [hl]
    ld e, $f8
    inc bc
    jr jr_00c_592e

    pop hl
    sub d
    cp $01
    ld a, $c4
    nop
    ei
    add b
    ldh a, [rLCDC]
    ld hl, sp-$01
    ei
    rst $38
    dec de
    sbc a
    ld h, e
    ld [bc], a
    db $fc
    dec b
    dec sp
    rrca
    rlca
    rra
    rrca
    rrca
    rlca
    cpl
    ret nz

    ld e, l
    add b
    ld a, l
    nop
    sbc l
    ld h, b
    rra
    ret nz

    rra
    nop
    inc e
    ld [hl+], a
    ld a, h
    ld b, d
    ldh a, [$ef]
    ld [c], a
    db $dd
    add d
    ld a, l
    ld h, d
    cp e
    ld [c], a
    ei
    ld [c], a
    ei
    db $e3
    jp c, $fa83

    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld [hl], c
    rst $38
    ld h, c
    rst $38
    ld b, c
    rst $38
    ld bc, $01ff
    ccf
    ld b, c
    ld bc, $0187
    add a
    ld bc, $018f
    sbc a
    ld bc, $01bf
    rst $30
    ld bc, $c1e7
    add a
    ret z

    add l
    ret nz

    cp c
    ret c

    and c
    jp c, $daa0

    and c
    jp c, $daa3

    and c
    jp c, $b6a1

    sub $ae
    call z, $ca8e
    adc a
    jp z, $ca8f

    adc h
    ret z

    adc [hl]
    jp z, $ca8f

    db $fd
    or d
    db $fd
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38

jr_00c_59ee:
    ld [hl], b
    db $fc
    jr nc, jr_00c_59ee

    ld [de], a
    cp $01
    rst $38
    nop
    nop
    ld c, h
    nop
    adc h
    nop
    adc h
    ld [bc], a
    adc [hl]
    inc bc
    call z, $ec01
    nop
    ld a, h
    nop
    jr c, @-$26

    rlca
    sbc b
    ld b, a
    sbc h
    ld b, e
    call z, $ff33
    nop
    rra
    ld [bc], a
    rra
    db $e3
    rst $38
    inc bc
    ld h, c
    ld e, b
    ld h, c
    ld e, b
    ld hl, $101c
    inc c
    jp nz, $e5dd

    ld a, [de]
    inc b
    dec de
    inc b
    dec de
    nop
    db $ed
    ld bc, $01ee
    and $03
    db $fc
    rrca
    ldh a, [rIE]
    ld a, $ff
    ld a, $ff
    ld a, $de
    ld e, $de
    dec e
    sbc h
    add hl, de
    db $10
    inc bc
    ld [bc], a
    dec c
    inc c
    rst $38
    sbc h
    ld a, a
    sbc h
    ld a, a
    ld h, c
    db $fd
    rst $30
    dec bc
    rra
    pop hl
    rst $28
    inc e
    rra
    ld hl, sp+$1f
    ldh a, [$9c]
    ld l, a
    ret nz

    ccf
    ld b, $03
    ld bc, $44f7
    dec de
    ld [$16ef], sp
    add hl, de
    cpl
    db $10
    inc de
    adc h
    nop
    ret nz

    cp $e0
    rst $38
    ldh a, [rIE]
    ldh a, [$fc]
    jp Jump_000_2fc0


    add b
    ld d, b
    nop
    sbc a
    nop
    pop af
    ld b, e
    cp $e0
    rst $38
    add sp, -$09
    dec sp
    call nz, $9f7f
    rst $38
    ccf
    rst $38
    ld h, b
    rst $18
    ld c, $bf
    ld b, c
    rst $28
    nop
    rst $30
    ld [$c03f], sp
    rra
    and b
    rlca
    add sp, $03
    db $f4
    ld bc, $c1e2
    add a
    jr @+$01

    ld [$c0f7], sp
    ccf
    ldh [$df], a
    ld hl, sp-$09
    db $fc
    dec bc
    cp $1d
    rst $38
    rst $38
    rst $38
    nop
    ld e, $c0
    inc e
    jp nz, Jump_00c_63bc

    cp a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, @+$01

    rst $38
    nop
    rst $38
    ld hl, $231e
    dec e
    nop
    sbc b
    nop
    sbc b
    nop
    sbc b
    nop
    ret c

    rst $38
    rst $38
    rst $38
    nop
    ld a, l
    ld b, d
    rrca
    nop
    nop
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_00c_5ad9:
    nop
    rst $38
    or b
    jr nc, @+$01

    sbc a
    rst $38
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
    nop
    inc sp
    adc h
    dec de
    ret nz

    jr nz, jr_00c_5b29

    jr jr_00c_5ad9

    cp $01
    rst $38

jr_00c_5af6:
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld hl, sp+$30
    cp $9a
    rst $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    add b
    ld b, b
    ret nz

    ld [hl], $e2
    inc e
    rra
    nop
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ccf
    ld [$011d], sp
    pop bc
    pop bc
    db $fc
    inc e
    inc b
    nop
    nop
    nop
    rst $38
    rst $38

jr_00c_5b29:
    rst $38
    nop
    db $10
    ld l, h
    jr c, jr_00c_5af6

    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $00
    ld bc, $0083
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
    nop
    ld hl, $60c0
    adc [hl]
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    sbc a
    inc de
    inc de
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    adc h
    inc sp
    ld e, $e1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    pop hl
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_5b84:
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld b, e
    inc c
    rlca
    ld hl, sp-$61
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00c_5b96:
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld hl, sp+$60
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
    rst $38
    rst $38
    rst $38
    nop
    ld a, [c]
    inc c
    ld hl, sp+$06
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rlca
    ld [bc], a
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $82a0

    jr c, jr_00c_5bdc

    ld l, h
    jr c, jr_00c_5b96

    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    bit 7, a
    adc d
    rst $00

jr_00c_5bdc:
    ld bc, $0083
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $32cd
    inc c
    jp Jump_00c_631c


    jr c, jr_00c_5c38

    cp b
    ld b, a
    cp b
    ld b, a
    or b
    ld c, a
    ld [bc], a
    dec e
    jr nc, jr_00c_5c38

    ldh a, [$dc]
    add b
    inc e
    add b
    jr jr_00c_5b84

    sbc b
    add e
    cp b
    add a
    or b
    rst $38
    ld a, $ff
    inc a
    db $eb
    jr jr_00c_5c0f

    ld [c], a

jr_00c_5c0f:
    ld bc, $01f0
    ret nc

    nop
    ld sp, hl
    nop
    ld hl, sp-$64
    ld a, a
    sbc b
    ld a, a
    inc [hl]
    rst $08
    ld e, $1d
    ld a, $1f
    ld a, $3f
    ccf
    ld a, $7f
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nz, jr_00c_5c38

jr_00c_5c38:
    rst $38
    nop
    rst $38
    nop
    ld bc, $8000

jr_00c_5c3f:
    nop
    add b
    nop
    add b
    db $10
    ret nc

    jr c, jr_00c_5c3f

    nop
    cp $c0
    ccf
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    inc a
    add d
    daa
    ld bc, $c000
    nop
    ld hl, sp+$00
    ld a, a
    nop
    rrca
    nop
    nop
    ld b, c
    ld b, c
    db $e3
    db $e3
    ld bc, $0106
    cp $03
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld bc, $120c
    db $fc
    ld sp, hl
    ldh a, [rSB]
    nop
    inc bc
    nop
    rst $38
    nop
    cp $00
    nop
    pop bc
    pop bc
    di
    inc sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    add e
    ld h, h
    ld [hl], d
    add l
    ld h, [hl]
    jr jr_00c_5c98

jr_00c_5c98:
    ld hl, sp+$00
    ldh a, [rP1]
    add b
    jr nc, jr_00c_5ccf

    ld a, b
    ld c, b
    inc a
    db $10
    sbc c
    sub c
    db $d3
    ld d, e
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    cp b
    ld b, a
    cp b
    ld b, a
    inc a
    jp $a15e


    ccf
    ret nz

    add a
    or b
    add a
    or b
    add a
    or b
    add d
    cp b
    add d
    sbc b
    pop hl
    db $fc
    ret nz

    adc $80
    add a
    nop
    cp c
    nop
    di

jr_00c_5ccb:
    nop
    rlca
    nop
    cp h

jr_00c_5ccf:
    nop
    ldh a, [rP1]
    db $fd
    ld bc, $03fe
    db $fc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rla
    ld [bc], a
    ld [c], a
    ld bc, $0304
    jp nz, $c201

    dec b
    sub $08
    rst $10
    ld [$08d7], sp
    rst $10
    jr jr_00c_5ccb

    ld [$08d7], sp
    dec a
    db $ed
    add hl, sp
    ret nc

    ld sp, $31d1
    pop de
    ld sp, $21d1
    pop bc
    ld [hl], c
    pop de
    ld [hl], c
    pop de
    cp a
    ld b, b
    dec a
    ld b, d
    ld a, l
    ld b, d
    rrca
    nop
    nop
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add b
    add e

jr_00c_5d19:
    add d
    add e
    or b
    jr nc, @+$01

    sbc a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    inc sp
    adc h
    dec de
    ret nz

    jr nz, jr_00c_5d69

    jr jr_00c_5d19

    cp $01
    rst $38
    nop
    nop
    rst $38
    nop
    cp $f8

jr_00c_5d3c:
    jr nc, jr_00c_5d3c

    sbc d
    rst $00
    nop
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
    nop
    nop

jr_00c_5d69:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    add hl, bc
    db $10
    ld a, [bc]
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0b10], sp
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1310
    db $10
    inc d
    db $10
    dec d
    db $10
    ld d, $10
    rla
    db $10
    jr jr_00c_6111

    add hl, de
    db $10
    ld de, $1210
    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10

jr_00c_6111:
    rra
    db $10
    jr nz, jr_00c_6125

    ld hl, $1a10
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_00c_6135

jr_00c_6125:
    ld hl, $1a10
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_00c_6145

jr_00c_6135:
    ld [hl+], a
    db $10
    inc hl
    db $10
    inc h
    db $10
    dec h
    db $10
    ld h, $10
    daa
    db $10
    jr z, jr_00c_6153

    jr nz, jr_00c_6155

jr_00c_6145:
    ld hl, $0710
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10

jr_00c_6153:
    dec b
    db $10

jr_00c_6155:
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    add hl, hl
    db $10
    ld a, [hl+]
    db $10
    dec hl
    db $10
    inc l
    db $10
    dec l
    db $10
    ld l, $10
    cpl
    db $10
    jr nc, jr_00c_6195

    ld b, $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld sp, $3210
    db $10

jr_00c_6195:
    inc sp
    db $10
    inc [hl]
    db $10
    dec [hl]
    db $10
    ld [hl], $10
    scf
    db $10
    jr c, jr_00c_61b1

    add hl, sp
    db $10
    ld [hl-], a
    db $10
    inc sp
    db $10
    inc [hl]
    db $10
    dec [hl]
    db $10
    ld [hl], $10
    scf
    db $10
    jr c, jr_00c_61c1

jr_00c_61b1:
    add hl, sp
    db $10
    ld [hl-], a
    db $10
    ld a, [hl-]
    db $10
    dec sp
    db $10
    inc a
    db $10
    dec a
    db $10
    ld a, $10
    ccf
    db $10

jr_00c_61c1:
    ld b, b
    db $10
    ld b, c
    db $10
    db $10
    db $10
    jr nz, jr_00c_61d9

    ld hl, $1a10
    db $10
    dec de
    db $10
    inc e
    db $10
    ld b, d
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10

jr_00c_61d9:
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, h
    db $10
    ld b, l
    db $10
    ld b, [hl]
    db $10
    ld b, a
    db $10
    ld c, b
    db $10
    ld c, c
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld c, d
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld c, e
    db $10
    ld c, h
    db $10
    ld c, l
    db $10
    ld c, [hl]
    db $10
    ld c, a
    db $10
    ld d, b
    db $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    ld d, c
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld d, d
    db $10
    ld d, e
    db $10
    ld d, h
    db $10
    ld d, l
    db $10
    ld d, [hl]
    db $10
    ld d, a
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_00c_629d

    ld hl, $1a10
    db $10
    ld e, b
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10

jr_00c_629d:
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld e, c
    db $10
    ld e, d
    db $10
    ld e, e
    db $10
    ld e, h
    db $10
    ld e, l
    db $10
    ld e, [hl]
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld e, a
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld h, b
    db $10
    ld h, c
    db $10
    ld h, d
    db $10
    ld h, e
    db $10
    ld h, h
    db $10
    ld h, l
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $6610
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e

Jump_00c_631c:
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld h, a
    db $10
    ld l, b
    db $10
    ld l, c
    db $10
    ld l, d
    db $10
    ld l, e
    db $10
    ld l, h
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    ld l, l
    db $10
    ld l, [hl]
    db $10
    ld l, a
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld [hl], b
    db $10
    ld [hl], c
    db $10
    ld [hl], d
    db $10
    ld [hl], e
    db $10
    ld [hl], h
    db $10
    ld [hl], l
    db $10
    ld bc, $0210
    db $10
    db $76
    db $10
    ld [hl], a
    db $10
    ld a, b
    db $10
    ld a, c
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld a, d

Jump_00c_63bc:
    db $10
    ld a, e
    db $10
    ld a, h
    db $10
    ld a, l
    db $10
    ld a, [hl]
    db $10
    ld a, a
    db $10
    dec bc
    db $10
    inc c
    db $10
    add b
    db $10
    add c
    db $10
    add d
    db $10
    add e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    add h
    db $10
    add l
    db $10
    add [hl]
    db $10
    add a
    db $10
    adc b
    db $10
    ld [de], a
    db $10
    ld a, [de]
    db $10
    adc c
    db $10
    adc d
    db $10
    adc e
    db $10
    adc h
    db $10
    adc l
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    adc [hl]
    db $10
    dec e
    db $10
    adc a
    db $10
    sub b
    db $10
    sub c
    db $10
    ld hl, $0710
    db $10
    sub d
    db $10
    sub e
    db $10
    sub h
    db $10
    sub l
    db $10
    sub [hl]
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    sub a
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    sbc b
    db $10
    sbc c
    db $10
    ld b, $10
    sbc d
    db $10
    sbc e
    db $10
    sbc h
    db $10
    sbc l
    db $10
    sbc [hl]
    db $10
    sbc a
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    and b
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    and c
    db $10
    and d
    db $10
    and e
    db $10
    and h
    db $10
    and l
    db $10
    and [hl]
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    and a
    db $10
    dec de
    db $10

Call_00c_64ff:
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    xor b
    db $10
    xor c
    db $10
    xor d
    db $10
    xor e
    db $10
    xor h
    db $10
    xor l
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    xor [hl]
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    xor a
    db $10
    or b
    db $10
    or c
    db $10
    or d
    db $10
    or e
    db $10
    or h
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    or l
    db $10
    ld [de], a
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    or [hl]
    db $10
    or a
    db $10
    cp b
    db $10
    cp c
    db $10
    cp d
    db $10
    cp e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    cp h
    db $10
    ld hl, $1a10
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    cp l
    db $10
    cp [hl]
    db $10
    cp a
    db $10
    ret nz

    db $10
    pop bc
    db $10
    jp nz, $4310

    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    jp Jump_000_0610


    db $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    call nz, $c510
    db $10
    add $10
    rst $00
    db $10
    ret z

    db $10
    ret


    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    ld b, e
    db $10
    jp z, Jump_000_1010

    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    rl b
    call z, $cd10
    db $10
    adc $10
    rst $08
    db $10
    ret nc

    db $10
    pop de
    db $10
    jp nc, $d310

    db $10
    call nc, $d510
    db $10
    sub $10
    rst $10
    db $10
    ret c

    db $10
    reti


    db $10
    jp nc, $d310

    db $10
    call nc, $d510
    db $10
    sub $10
    rst $10
    db $10
    ret c

    db $10
    reti


    db $10
    jp nc, $d310

    db $10
    call nc, $da10
    db $10
    rra
    db $10
    jr nz, jr_00c_6691

    ld hl, $1a10
    db $10
    dec de
    db $10
    ld bc, $db10
    db $10
    call c, $dd10
    db $10
    sbc $10

jr_00c_6691:
    rst $18
    db $10
    ldh [rNR10], a
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0b10], sp
    db $10
    pop hl
    db $10
    ld [c], a
    db $10
    db $e3
    db $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    ld a, [de]
    db $10
    db $e4
    db $10
    push hl
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_00c_6725

    ld hl, $1a10
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_00c_6735

jr_00c_6725:
    ld hl, $1a10
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_00c_6745

jr_00c_6735:
    ld hl, $1a10
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_00c_6755

jr_00c_6745:
    ld hl, $0710
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10

jr_00c_6755:
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0110], sp
    db $10
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00c_68e2

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6902

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6922

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_68e2:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6942

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6902:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6962

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6922:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6982

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6942:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_69a2

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6962:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_69c2

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6982:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_69e2

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_69a2:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6a02

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_69c2:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6a22

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_69e2:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6a42

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6a02:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6a62

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6a22:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6a82

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6a42:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6aa2

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6a62:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    nop
    nop
    jr nz, jr_00c_6ac2

    adc h
    nop
    sbc l
    nop
    db $dd
    ld bc, $18ca
    ld d, c
    add hl, de
    add b
    ld e, h
    xor b
    ld a, [hl]
    ld b, b
    db $10
    ld c, d
    ld b, l
    push af
    ld h, [hl]
    rst $38
    ld a, [hl+]
    rst $38

jr_00c_6a82:
    dec hl
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $30
    ld e, [hl]
    xor l
    dec [hl]
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [bc], a
    ld a, e
    ld [hl], a
    ld b, d
    ld [HeaderGlobalChecksum], sp
    cp a
    inc bc
    rst $38
    ld a, a
    ld d, a
    nop
    ld a, [bc]
    ld a, l
    ccf

jr_00c_6aa2:
    ld h, [hl]
    ccf
    ld e, a
    rst $18
    ld d, h
    scf
    ld a, a
    ld c, d
    ld d, l
    cp a
    inc bc
    and $56
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_6ac2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00c_6c2b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00c_7cdf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
