; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    call Call_007_41f4
    xor a
    ld [$cf0c], a
    ld a, $10
    ld [$cf0b], a
    ld a, $1b
    ld [$cf1b], a
    ld a, $93
    ld [$cf1c], a
    ld a, $1e
    ld [$cf1d], a
    ld hl, $4217
    call Call_000_0d37
    ld hl, $6953
    ld de, $8000
    ld bc, $0220
    xor a
    call Call_000_07ce
    ld a, $40
    ld [$c100], a
    ld [$c104], a
    ld [$c108], a
    ld [$c10c], a
    ld [$c110], a
    ld [$c114], a
    ld [$c118], a
    ld [$c11c], a
    ld a, $28
    ld [$c101], a
    add $08
    ld [$c105], a
    add $08
    ld [$c109], a
    add $08
    ld [$c10d], a
    add $08
    ld [$c111], a
    add $08
    ld [$c115], a
    add $08
    ld [$c119], a
    add $08
    ld [$c11d], a
    ld a, $04
    ld [$c102], a
    add $02
    ld [$c106], a
    add $02
    ld [$c10a], a
    add $02
    ld [$c10e], a
    add $02
    ld [$c112], a
    ld a, $02
    ld [$c116], a
    ld a, $14
    ld [$c103], a
    ld [$c107], a
    ld [$c10b], a
    ld [$c10f], a
    ld [$c113], a
    ld [$c117], a
    ld [$c11b], a
    ld [$c11f], a
    ld a, [$c200]
    cp $63
    jr c, jr_007_40cf

    ld a, $10
    ld [$c11a], a
    ld a, $0e
    ld [$c11e], a
    ld a, $40
    ld [$c120], a
    ld a, $68
    ld [$c121], a
    ld a, $0e
    ld [$c122], a
    ld a, $14
    ld [$c123], a
    jr jr_007_40f4

jr_007_40cf:
    ld b, $00
    ld a, [$c200]
    inc a

jr_007_40d5:
    cp $0a
    jr c, jr_007_40de

    inc b
    sub $0a
    jr jr_007_40d5

jr_007_40de:
    sla a
    add $0e
    ld [$c11e], a
    ld a, b
    sla a
    and a
    jr z, jr_007_40ef

    add $0e
    jr jr_007_40f1

jr_007_40ef:
    ld a, $02

jr_007_40f1:
    ld [$c11a], a

jr_007_40f4:
    ld a, [$d3d0]
    and a
    jr z, jr_007_4115

    ld b, $80
    ld de, $d680
    ld hl, $d600

jr_007_4102:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_4102

    ld b, $80
    ld a, $ff
    ld hl, $d600

jr_007_410f:
    ld [hl+], a
    dec b
    jr nz, jr_007_410f

    jr jr_007_414c

jr_007_4115:
    ld a, $c7
    call Call_000_04a0
    ld a, $08
    ld [$dd00], a
    ld a, $80
    ld [$c264], a

jr_007_4124:
    call Call_000_0616
    call Call_000_0389
    call Call_000_06f6
    ld a, [$c264]
    dec a
    ld [$c264], a
    and a
    jr z, jr_007_413d

    ldh a, [$8d]
    bit 0, a
    jr z, jr_007_4124

jr_007_413d:
    call Call_007_41f4
    call Call_000_0616
    call Call_000_0389
    call Call_000_03d7
    call Call_000_0786

jr_007_414c:
    ld a, [$c200]

jr_007_414f:
    cp $08
    jr c, jr_007_4157

    sub $08
    jr jr_007_414f

jr_007_4157:
    ld de, $4297
    sla a
    call Call_000_07ed
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld c, $08
    ld de, $d638

jr_007_4169:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_4169

    ld a, $b8
    ldh [rOCPS], a
    ld hl, $d638
    ld c, $08

jr_007_4178:
    ld a, [hl+]
    ldh [rOCPD], a
    dec c
    jr nz, jr_007_4178

    ld a, [$c200]

jr_007_4181:
    cp $0a
    jr c, jr_007_4189

    sub $0a
    jr jr_007_4181

jr_007_4189:
    sla a
    ld de, $42ff
    call Call_000_07ed
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld c, $08
    ld de, $d618

jr_007_419b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_419b

    ld a, $98
    ldh [rOCPS], a
    ld hl, $d618
    ld c, $08

jr_007_41aa:
    ld a, [hl+]
    ldh [rOCPD], a
    dec c
    jr nz, jr_007_41aa

    ld a, [$c200]

jr_007_41b3:
    cp $0a
    jr c, jr_007_41bb

    sub $0a
    jr jr_007_41b3

jr_007_41bb:
    sla a
    ld de, $4203
    call Call_000_07ed
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld de, $8a80
    ld bc, $0440
    xor a
    call Call_000_07ce
    ld hl, $6b73
    ld de, $8000
    ld bc, $0a80
    xor a
    call Call_000_07ce
    ld hl, $7a8c
    ld de, $8ec0
    ld bc, $0100
    xor a
    call Call_000_07ce
    ld a, $02
    ld hl, $4000
    jp Jump_000_0077


Call_007_41f4:
    ld b, $28
    ld a, $e0
    ld hl, $c100

jr_007_41fb:
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    dec b
    jr nz, jr_007_41fb

    ret


    db $d3
    ld c, a
    inc de
    ld h, l
    db $d3
    ld h, b
    sub e
    ld e, h
    ld d, e
    ld e, b
    inc de
    ld d, h
    ld c, h
    db $76
    sub e
    ld c, e
    ld d, e
    ld b, a
    inc de
    ld b, e
    nop

jr_007_4218:
    nop
    sbc a
    ld d, e
    add b
    ld a, c
    rst $18
    jr nc, jr_007_4220

jr_007_4220:
    nop
    rst $38
    ld e, e
    ld a, [bc]
    inc bc
    db $e4
    ld bc, $7fff
    sbc a
    ld e, a
    ld sp, hl
    ld bc, $0000
    nop
    nop
    rst $38
    ld [hl], e
    inc e
    ld d, c
    xor a
    jr z, jr_007_4218

    ld a, [hl]
    ld sp, hl
    ld a, a
    ldh [$7f], a
    nop
    nop
    nop
    nop
    and b
    ld d, c
    jr nz, @+$81

    db $f4
    ld a, a
    nop
    nop
    and b
    add hl, de
    ldh [$36], a
    db $f4
    ld h, a
    nop
    nop
    sbc a
    nop
    rst $18
    ld de, $3fff
    nop
    nop
    sbc a
    nop
    rst $18
    ld de, $3fff
    nop
    nop
    ld b, b
    add hl, hl
    add b
    ld d, d
    db $f4
    ld a, a
    nop
    nop
    ld e, h
    ld bc, $12bc
    rst $38
    ld e, a
    nop
    nop
    and b
    ld a, h
    add b
    ld a, [hl]
    rst $38
    ld a, a
    nop
    nop
    or h
    ld a, h
    sbc a
    ld a, [hl]
    rst $18
    ld a, a
    nop
    nop
    ld a, a
    ld bc, $033f
    rst $38
    ld a, a
    nop
    nop
    rlca
    ld a, h
    rst $28
    ld a, [hl]
    call c, Call_000_007f
    nop
    add b
    ld a, l
    ldh [$7e], a
    rst $38
    ld [hl], e
    ld d, a
    ld b, d
    ld e, a
    ld b, d
    ld h, a
    ld b, d
    ld l, a
    ld b, d
    ld [hl], a
    ld b, d
    ld a, a
    ld b, d
    add a
    ld b, d
    adc a
    ld b, d
    nop
    nop
    rst $38
    ld [hl], e
    inc e
    ld d, c
    xor a
    jr z, jr_007_42b0

jr_007_42b0:
    nop
    rst $38
    ld [hl], e
    ld e, a
    ld a, [hl+]
    ld d, b
    ld de, $0000
    rst $38
    dec hl
    ld sp, hl
    ld bc, $0090
    nop
    nop
    rst $38
    ld a, a
    sub $5a
    xor l
    dec [hl]
    nop
    nop
    rst $38
    ld a, a
    sub $5a
    xor l
    dec [hl]
    nop
    nop
    rst $38
    ld a, a
    cpl
    ld a, a
    ldh [$79], a
    nop
    nop
    rst $38
    ld a, a
    ld e, $2a
    ld d, h
    add hl, bc
    nop
    nop
    sbc $53
    ld e, a
    ld a, [hl+]
    ld d, b
    ld de, $0000
    rst $38
    ld h, e
    ld e, a
    ld a, [hl+]
    ld d, b
    ld de, $0000
    rst $38
    ld a, a
    ld e, $2a
    ld d, h
    add hl, bc
    nop
    nop
    rst $38
    ld a, a
    rst $18
    ld a, [hl+]
    ld e, a
    add hl, hl
    and a
    ld b, d
    xor a
    ld b, d
    or a
    ld b, d
    cp a
    ld b, d
    rst $00
    ld b, d
    rst $08
    ld b, d
    rst $10
    ld b, d
    rst $28
    ld b, d
    rst $20
    ld b, d
    rst $30
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    inc b
    ccf
    ld c, $7b
    ld c, $70
    ld c, $70
    rlca
    ld a, b
    nop
    ld a, a
    nop
    ccf
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
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$08
    db $fc
    inc e
    or $ec
    ld [c], a
    db $ec
    ld b, d
    cp b
    ld b, [hl]
    nop
    cp $00
    db $fc
    nop
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
    ccf
    inc b
    ld a, a
    ld c, $fb
    ld c, $f0
    ld c, $f0
    rlca
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    ld [$1cfe], sp
    rst $30
    db $ec
    db $e3
    db $ec
    ld b, e
    cp b
    ld b, [hl]
    nop
    nop
    nop
    nop
    inc b
    rlca
    ld c, $1b
    ld c, $30
    ld c, $30
    rlca
    jr c, jr_007_43a0

jr_007_43a0:
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
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
    nop
    nop
    nop
    nop
    ldh [rNR23], a
    ldh a, [$ec]
    ldh [$ec], a
    ld b, b
    cp b
    ld b, h
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld bc, $0007
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$20
    sbc h
    ldh a, [$0c]
    sub b
    adc [hl]
    ld [hl], b
    adc $60
    cp $70
    adc $10
    adc [hl]
    ldh a, [$8e]
    ldh a, [$0e]
    ldh [$9e], a
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_4424:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld a, $1c
    ld [hl], d
    ld a, $60
    ld [de], a
    ldh a, [$0e]
    ld hl, sp+$0c
    cp $0e
    ld hl, sp+$02
    ldh a, [rNR34]
    ldh a, [$3e]
    ldh [rNR32], a
    ld a, [c]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    jr @+$09

    inc a
    inc bc
    inc h
    inc hl
    inc e
    ld [hl], e
    jr jr_007_44e0

    inc e
    ld [hl], e
    inc b
    ld h, e
    inc a
    ld h, e
    ld a, h
    ld b, e
    jr c, jr_007_4492

    nop
    ccf
    nop
    rra
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
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop

jr_007_4492:
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    ld b, $06
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, e
    ld a, [hl]
    ld [hl], b
    ld a, [hl]
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    nop
    nop
    jr nz, jr_007_44d7

    nop
    nop
    jr nz, jr_007_44db

    ld h, b
    ld h, b
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $f6
    xor $e2
    xor $42
    cp $46
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_44d7:
    nop
    nop
    nop
    nop

jr_007_44db:
    nop
    nop
    nop
    nop
    inc b

jr_007_44e0:
    inc b
    nop
    nop
    dec c
    dec c
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ei
    cp $f0
    cp $f0
    ld a, a
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    jr nz, jr_007_4521

    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $30
    rst $28
    db $e3
    rst $28
    ld b, e
    cp $46
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    inc b
    inc b

jr_007_4521:
    ld c, $0e
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ei
    cp $f0
    cp $f0
    ld a, a
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_4561

    nop
    nop
    or b
    or b
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $30
    rst $28
    db $e3
    rst $28
    ld b, e
    cp $46
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld e, a
    ld e, a
    rrca
    rrca

jr_007_4561:
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld e, a
    ld e, a
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $fc
    sbc h
    db $fc
    inc c
    sbc [hl]
    adc [hl]
    cp $ce
    cp $fe
    cp $ce
    sbc [hl]
    adc [hl]
    cp $8e
    cp $0e
    cp $9e
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0311
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
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
    inc e
    inc e
    ld a, $3e
    ld a, [hl]
    ld [hl], d
    cp $e0
    ld a, [c]
    ldh a, [$fe]
    ld hl, sp-$02
    cp $fe
    ld hl, sp-$0e
    ldh a, [$7e]
    ld [hl], b
    cp $e0
    cp $f2
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    inc e
    inc e
    nop
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, $3e
    ld a, [hl]
    ld [hl], d

jr_007_45f9:
    ld a, [hl]
    ld h, b
    ld a, [c]
    ldh a, [$fe]
    ld hl, sp+$7e
    ld a, [hl]
    cp $f8
    ld a, [c]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh [$fe], a
    ld a, [c]
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld b, $03
    inc c
    inc bc
    inc e
    ld bc, $001e
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
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
    ld hl, sp-$7a
    db $fc
    cp e
    jr c, jr_007_45f9

    db $10
    xor $11
    nop
    rst $38

jr_007_4643:
    nop
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    ld bc, $030f
    ld e, $03
    inc e
    inc bc
    inc a
    ld bc, $003e
    ccf
    nop
    rra
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
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    cp $02
    rst $38
    add a
    db $fd
    cp e
    jr c, jr_007_4643

    db $10
    xor $11
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, a
    ld [$1cff], sp
    rst $30
    dec e
    pop hl
    dec e
    ldh [rIF], a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_46b9:
    nop
    nop
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
    ld hl, sp+$10
    db $fc
    jr c, jr_007_46b9

    ret c

    add $d8
    add [hl]
    ld [hl], b
    adc h
    nop
    nop
    nop
    nop
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
    ccf
    nop
    ld a, a
    rrca
    ldh a, [rNR23]
    ldh [rP1], a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $bc
    ld b, e
    ld b, $41
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc [hl]
    ld a, [bc]
    ld c, d
    ld bc, $0180
    add b
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$08]
    inc c
    inc d
    ld d, $f0
    pop hl
    ld d, b
    ld b, c
    nop
    ld bc, $fe00
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    nop
    rlca
    nop
    rra
    inc e
    rrca
    inc c
    rlca
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh [rP1], a
    ret nc

    nop
    adc $02
    cp $00
    ld [hl], b
    add b
    inc e
    ldh [rP1], a
    ldh [$6c], a
    adc h
    db $fc
    call z, $e0e0
    ret nz

    ret nz

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    nop
    rlca
    nop
    rra
    inc e
    rrca
    inc c
    rlca
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh [rP1], a
    ret nc

    nop
    adc $02
    cp $00
    ld [hl], b
    add b
    db $10
    ldh [$b8], a
    ld [hl], b
    ldh a, [$30]
    ldh [$e0], a
    ret nz

jr_007_47ce:
    ret nz

    ld hl, sp-$80
    nop
    nop
    inc bc
    inc bc
    rrca
    nop
    rlca
    nop
    rra
    inc e
    rrca
    inc c
    rlca
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ccf
    rra
    ccf

jr_007_47ea:
    rra
    ld b, a
    rlca
    ld b, e
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh [rP1], a
    ret nc

    nop
    adc $02
    cp $00
    ld [hl], b
    add b
    inc e
    ldh [$0c], a
    db $fc
    ld a, h
    adc h
    ldh [$e0], a
    ldh [$e0], a
    db $fc
    ldh a, [$f0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    ld b, $00
    ld b, $00
    dec bc
    nop
    inc sp
    jr nz, jr_007_485f

    jr nz, jr_007_48a0

    ld h, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, $0d
    inc l
    inc c
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b

jr_007_4838:
    jr nc, jr_007_47ea

    jr nc, jr_007_47ce

    nop
    ld a, [hl-]
    ret z

    ld a, $dc
    ld e, $fc

jr_007_4843:
    ld e, $fe
    ld e, $fe
    inc e
    db $fc
    jr jr_007_4843

    nop
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
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    add hl, de
    db $10

jr_007_485f:
    rra
    db $10
    ccf
    jr nc, @+$41

    jr nz, jr_007_48a5

    jr nz, jr_007_4887

    ld b, $16
    ld b, $04
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
    ld [hl+], a
    nop
    ld a, [c]
    jr nc, jr_007_4838

    ld a, b
    sbc [hl]
    ld l, h
    ld a, $ce
    ld e, $fc
    ld e, $fc

jr_007_4887:
    ld e, $fc
    ld e, $7c
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld [$000d], sp
    dec c
    nop
    rla
    nop
    ld h, [hl]
    ld b, c
    ld a, [hl]

jr_007_48a0:
    ld b, c
    db $fc
    jp $83fc


jr_007_48a5:
    db $fc
    add e
    ld a, h
    dec de
    ld e, b
    add hl, de
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
    ret z

    ret nz

    ret z

    ret nz

jr_007_48bb:
    ld c, h
    adc b
    ld a, h
    cp b
    ld a, h
    cp h

jr_007_48c1:
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    jr c, jr_007_48c1

    jr nc, jr_007_48bb

    jr nc, jr_007_48fd

    jr nc, jr_007_48cf

jr_007_48cf:
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
    rlca
    rlca
    inc bc
    inc bc
    rrca
    rrca
    rlca
    rlca
    ld [bc], a
    inc bc
    nop
    rlca
    inc e
    rra
    dec a
    cp $7e
    ld a, a
    rra
    rra
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08

jr_007_48fd:
    ret z

    ld hl, sp+$00
    add sp, $00
    db $e4
    ld b, $f8
    ld e, [hl]
    ldh [rIE], a
    nop
    ld a, a
    add b
    rst $08
    ret nz

    inc bc
    add b
    ld hl, $00c0
    nop
    nop
    nop
    nop
    nop
    rlca
    ld b, $03
    nop
    rrca
    ld c, $1f
    ld e, $05
    ld b, $01
    ld b, $01
    ld c, $01
    ld b, $1c
    rra
    ld a, a
    ld a, a
    ccf
    rst $38
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ldh [rNR41], a
    ld hl, sp+$00
    cp $00
    di
    nop
    ret nz

    ld [$708c], sp
    sbc b
    ld a, b
    ld [hl], b
    ldh a, [$30]
    ldh a, [rP1]
    ret nz

    ret nz

    ret nz

    add b
    add b
    ld b, b
    add b
    nop
    nop
    ld bc, $0f00
    ld [$000f], sp
    rra
    ld bc, $013e
    ld a, h
    inc bc
    inc a
    inc bc

jr_007_4961:
    dec c
    inc bc
    ld b, $19
    ld a, [bc]
    dec c
    ld c, $0f
    rra
    rra
    ld e, $1f
    inc a
    ccf
    ld e, $7f
    nop
    nop

jr_007_4973:
    add b
    nop
    ret nz

    ret nz

jr_007_4977:
    ldh [$e0], a
    jr nz, @-$1e

    nop
    and b
    nop
    sub b
    jr jr_007_4961

    jr nc, jr_007_4973

    ldh [$e0], a
    jr nc, jr_007_4977

    nop
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e0c
    jr jr_007_49b9

    jr jr_007_49be

    inc a
    ccf
    inc c
    rrca
    ld e, $1f
    rra
    rra
    ld d, $16
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    db $fc
    nop
    ld hl, sp+$00

jr_007_49b9:
    ld a, b
    add b
    ld [hl], b
    add b
    ld [hl-], a

jr_007_49be:
    ret nz

    ld a, b
    jp z, $de28

    ld a, [hl+]
    sbc $1c
    db $fc
    ld a, h
    db $fc
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    jr nc, @+$32

    db $10
    jr nc, jr_007_49d2

jr_007_49d2:
    jr nz, jr_007_49d8

    nop
    inc c
    nop
    add hl, bc

jr_007_49d8:
    nop
    add hl, de
    ld [bc], a
    inc e
    ld bc, $213c
    ld a, [hl]
    ld b, c
    ccf
    nop
    ccf
    nop
    inc a
    cpl
    ld l, $2f
    inc c
    inc c
    inc b
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
    add b
    add b
    ldh [$e0], a
    ld h, b
    ldh [rWY], a
    ld hl, sp-$74
    ld a, [hl]
    ret c

    ld a, $1a
    cp $3c
    db $fc
    inc a
    cp h
    jr c, jr_007_4a45

    jr jr_007_4a27

    db $10
    jr jr_007_4a12

jr_007_4a12:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    dec b
    ld sp, $603b
    ld [hl], e
    ldh [$7f], a
    pop af
    rra
    ld a, b
    rlca

jr_007_4a27:
    ld a, a
    nop
    ld a, a
    ld b, b
    ld e, $00
    ld c, $00
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
    ld b, b
    ld b, b
    ret nz

    ret nz

    add d
    ldh [$98], a
    ld a, [$fe10]

jr_007_4a45:
    ld a, [$be3e]
    ld a, [hl]
    ld a, [hl]
    cp $1e
    sbc [hl]
    inc b
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    nop
    inc bc
    nop
    rrca
    ld c, $07
    ld b, $03
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    rra
    add hl, sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$f0]
    nop
    add sp, $00
    rst $20
    ld bc, $00ff
    jr c, jr_007_4a45

    ld c, $f0

jr_007_4a87:
    inc bc
    ei
    ccf
    jp $e0e0


    ret nz

    ret nz

    ld hl, sp-$80
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    nop
    inc bc
    nop
    rrca
    ld c, $07
    ld b, $03
    nop
    nop
    inc bc
    nop
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$f0]
    nop
    add sp, $00
    rst $20
    ld bc, $00ff
    jr c, jr_007_4a87

    inc bc
    rst $38
    ccf
    jp $e0e0


    ret nz

    ret nz

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld c, $01
    rlca
    nop
    rra
    inc e
    rrca
    inc c
    rlca
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    ld e, $1f
    rra
    rra
    rra
    rra
    rrca
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh [rP1], a
    ret nc

    nop
    adc $02
    cp $00
    ld [hl], b
    add b
    inc e
    ldh [rTMA], a
    and $7e
    add [hl]
    ret nz

    ret nz

    add b
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
    rrca
    rrca
    ld a, a
    nop
    rst $38
    ldh a, [$3c]
    ccf
    nop
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [rP1]
    adc a
    inc bc
    ccf
    ret nz

    rlca
    rst $38
    cp $c0
    nop
    nop
    nop
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
    inc bc
    nop
    inc c
    nop
    inc b
    jr jr_007_4b75

    ld [$0008], sp
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_007_4b75:
    add b
    add b
    ld h, b
    ld h, b
    nop
    jr nz, jr_007_4b9c

    db $10
    ld [hl-], a
    ld c, $00
    ld c, $00
    stop
    inc e
    nop
    jr nz, jr_007_4b94

    inc l
    inc c
    inc e
    jr nz, jr_007_4bad

    ld b, b
    ld b, b
    nop

jr_007_4b90:
    ldh a, [rP1]
    nop
    nop

jr_007_4b94:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301

jr_007_4b9c:
    inc bc
    rlca
    rlca
    rrca
    rrca
    ccf
    nop
    rra
    jr nz, jr_007_4bad

    jr @+$1e

    rra
    rrca
    db $10
    ccf
    nop

jr_007_4bad:
    ccf
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
    add b
    nop
    add b
    ret nz

    ret nz

    nop
    and b
    nop
    sbc b
    add b
    ld a, [hl]
    call nz, $dc3a
    jr nc, @+$6a

    sbc b
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    jr c, jr_007_4bd2

jr_007_4bd2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ccf
    nop
    rra
    jr nz, jr_007_4bef

    jr jr_007_4c06

    rra
    rrca
    jr nc, @+$81

    nop

jr_007_4bef:
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
    add b
    nop
    add b
    ret nz

    ret nz

    nop
    and b
    nop
    sbc b
    add b
    ld a, [hl]
    ret nz

jr_007_4c06:
    ld a, $c4
    jr nz, @+$7e

    sub b
    add sp, $18
    ret nz

    jr nz, jr_007_4b90

    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    ld [$003f], sp
    rrca
    jr nc, @+$1e

    rra
    rrca
    db $10
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ret nz

    nop
    and b
    nop
    sbc [hl]
    add h
    ld a, d
    call nz, $d838
    jr nc, jr_007_4cae

    sbc b
    ldh [rP1], a
    ldh [rNR23], a
    ret nz

    jr nz, jr_007_4c4e

jr_007_4c4e:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    dec b
    ld [$0909], sp
    ld a, $1f
    ld e, $0f
    ld c, $07
    ld b, $03
    ld [bc], a
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    nop

jr_007_4c79:
    ld h, b
    and d
    ld b, b
    ld [$c23c], a
    cp $00
    sbc $20
    sbc $20

jr_007_4c85:
    sbc $20
    cp $20
    cp [hl]
    ld h, b
    xor [hl]
    ld [hl], b
    ld c, $80
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
    ld bc, $0100
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop

jr_007_4cae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    jr nc, jr_007_4c79

    jr jr_007_4c85

    db $10
    jp c, $e618

    ld a, h
    add d
    xor $10
    xor $10
    xor $10
    cp $10
    sbc $30
    sub $38
    add [hl]
    ld c, b
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $03
    inc b
    nop
    rlca
    nop
    rlca
    nop
    dec bc
    ld de, $1312
    inc a
    ccf
    ld a, h
    rra
    inc e
    rrca
    inc c
    rlca
    ld b, $01
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
    ret nz

    ld d, b
    add b
    ret nc

    ld [hl], b
    adc b
    ld hl, sp+$00
    cp b
    ld b, h
    cp b
    ld b, h
    cp h
    ld b, b
    db $fc
    ld b, b
    db $fc
    ld b, b
    ld e, h
    ldh [rNR32], a
    add b
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf

jr_007_4d28:
    ccf
    ccf
    ccf
    nop
    ccf
    ld bc, $0e3f
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    add b
    ret nz

    ldh [$e0], a
    add b
    ret nc

    add b
    call z, $ff80
    ld [bc], a
    db $fd
    sbc [hl]
    ld hl, sp+$04
    db $fc
    ldh [rNR41], a
    ld a, h
    adc h
    cp $fe
    ld [bc], a
    ld a, [c]
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld a, $3f
    ccf
    ccf
    ld a, $3f
    rlca
    ld a, $01
    ld a, $70
    ld a, a
    rst $38
    rst $38
    inc bc
    di
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    ret nz

    ret nz

    nop
    and b
    nop
    sbc b
    ld [bc], a
    cp $0f
    rst $38
    ld a, l
    sbc l
    ret c

    jr c, jr_007_4d28

    ld h, b
    nop
    ldh [$30], a
    ldh a, [$f0]
    db $fc
    ret nz

    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld b, $07
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld a, $3f
    ccf
    ld a, $3f
    ld a, $07
    ld a, $40
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    rst $38
    inc bc
    jp RST_00


    nop
    nop
    jr c, jr_007_4def

    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ldh [rSVBK], a
    cp b
    ret nz

    ld a, $84
    ld a, d
    cp h
    ld [hl], b
    ld [$e0f8], sp
    ldh [rP1], a
    ldh [$30], a
    ldh a, [$f0]
    db $fc
    ret nz

    ld hl, sp+$00
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    dec b
    ld [$0809], sp
    ccf
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
    nop
    nop
    nop
    nop

jr_007_4def:
    nop
    nop
    nop
    nop
    nop
    add b
    add $06
    ld l, h
    xor h
    ld c, h
    db $ec
    ld c, h
    and $1c
    or $1c
    and $54
    xor $f4
    cp $f2
    cp $f2
    cp $f2
    cp $f0
    db $fc
    jr nc, @+$3e

    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0103
    rlca
    nop
    rlca
    nop
    dec bc
    db $10
    inc de
    db $10
    ld a, a
    ld a, [hl]
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add h
    ret nz

    add $cc
    adc $ac
    ld a, [hl]
    add $3e
    ld h, [hl]
    sbc [hl]
    or [hl]
    adc $e6
    cp $e4
    db $fc
    call nz, $ccfc
    cp $cc
    cp $0c
    ld c, $04
    ld b, $00
    nop
    nop
    inc bc
    ld bc, $4002
    ld b, a
    ld h, h
    ld h, a
    ld a, h
    ld a, a
    ld a, $39
    inc bc
    inc c
    ld e, $7f
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    inc b
    ret nz

    ld b, [hl]
    adc h
    adc $ac
    cp $26
    cp $a6
    ld a, [hl]
    and $1e
    and $fe
    db $e4
    db $fc
    call nz, $ccfc
    db $fc
    call z, Call_000_1cfc
    ld e, $00
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rra
    ld bc, $001f
    rra
    db $10
    ld l, a
    inc e
    ld a, [$7f07]
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
    ld b, b
    add b
    ret nz

    ldh [$e0], a
    add b
    ret nc

    add b
    call z, Call_000_3fc0
    ld [c], a
    dec e
    xor $18
    inc [hl]
    call z, Call_000_00e0
    add b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rra
    nop
    rrca
    db $10
    inc de
    inc e
    ld c, $1f
    rra
    jr nz, jr_007_4f6d

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
    ld b, b
    add b
    ret nz

    ldh [$e0], a
    add b
    ret nc

    add b
    call z, Call_000_3fc0
    ld [c], a
    dec e
    xor $18
    inc [hl]
    call z, Call_000_10e0
    ldh [rP1], a
    ret nz

    jr c, jr_007_4f12

jr_007_4f12:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ccf
    nop
    rra
    jr nz, jr_007_4f2d

    jr @+$1e

    rra
    rrca
    db $10
    rra
    nop

jr_007_4f2d:
    rra
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
    add b
    nop
    add b
    ret nz

    ret nz

    nop
    and b
    nop
    sbc b
    add b
    ld a, [hl]
    call nz, $dc3a
    jr nc, jr_007_4fb0

    sbc b
    ldh [rP1], a
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [$0c]
    nop
    nop
    nop
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
    rrca
    ld a, a
    nop
    ccf
    ld b, b
    jr c, jr_007_4fa4

    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_007_4f6d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ldh a, [rP1]
    adc h
    ret nz

    ccf
    xor $19
    call nz, $c03c
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
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$0008], sp
    jr c, jr_007_4fa4

jr_007_4fa4:
    jr nz, jr_007_4fa6

jr_007_4fa6:
    db $10
    db $10
    stop
    stop
    jr nz, jr_007_4fae

jr_007_4fae:
    jr nz, jr_007_4fb0

jr_007_4fb0:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_007_5020

    jr jr_007_4fc2

jr_007_4fc2:
    ld b, $00
    ld [bc], a
    nop
    inc b
    ld [$0018], sp
    jr nz, jr_007_4fcc

jr_007_4fcc:
    stop
    jr nz, jr_007_4fd0

jr_007_4fd0:
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_4fd9:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    dec bc
    rrca
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ccf
    ccf
    ld [hl], c
    ld [hl], c
    ld h, c
    ld h, c
    ld d, c
    ld h, c

jr_007_4ff1:
    nop
    nop
    nop
    nop
    nop
    add b
    jr nz, jr_007_4fd9

    sub b
    ldh [rNR11], a
    rst $20
    nop
    rst $38
    jr nz, jr_007_4ff1

    jr nc, @-$06

    ld b, b
    call z, $8000
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_5017:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    inc bc

jr_007_5020:
    rlca
    rrca
    rrca
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    ccf
    jr c, jr_007_5063

    ld h, c
    ld h, c
    ret nz

    ret nz

jr_007_502f:
    and b
    ret nz

jr_007_5031:
    nop
    nop
    nop
    add b
    jr nz, jr_007_5017

    sub b
    ldh [rNR11], a
    rst $20
    nop
    rst $38
    jr nz, jr_007_502f

    jr nz, jr_007_5031

    ld b, b
    ret nc

    nop
    sbc b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld b, b
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
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0780
    sbc a
    ld e, a
    ccf
    ld a, a

jr_007_5063:
    ccf
    ccf
    ccf
    ccf
    inc sp
    inc sp
    ld a, $3e
    ld a, [bc]
    inc c
    nop
    nop
    nop
    nop

jr_007_5071:
    nop
    nop
    nop
    nop
    jr nz, @-$1e

    sub c
    rst $20
    db $10
    rst $20
    ld b, $fe

jr_007_507d:
    jr nz, jr_007_507d

    jr nc, jr_007_5071

    ld b, b
    ret nz

    nop
    add b
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
    nop
    nop
    nop
    ld [$000c], sp
    inc c
    nop
    inc c
    nop
    dec b
    add hl, de
    rlca
    inc hl
    ccf
    nop
    ccf
    db $10
    ld a, a
    ld bc, $0107
    inc bc
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
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    add d
    add b
    inc a
    cp $fe
    cp $f0
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$fa]
    ld hl, sp-$04
    cp $0e
    adc $60
    nop
    db $10
    jr jr_007_50d6

jr_007_50d6:
    jr jr_007_50d8

jr_007_50d8:
    jr jr_007_50da

jr_007_50da:
    ld [$0f30], sp
    ld b, [hl]
    ld a, [hl]
    ld bc, $207f
    rst $38
    inc bc
    rrca
    inc bc
    rlca
    ld bc, $0103
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
    add b
    nop
    add b
    db $10
    db $10
    jr c, jr_007_5131

    ld [hl], b
    ld hl, sp-$18
    add sp, -$20
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$fa]
    ld hl, sp+$2c
    adc $26
    ld b, $20
    jr nc, jr_007_511e

    inc a
    ld [$003c], sp
    inc c
    ld [hl-], a
    ld c, $46

jr_007_511e:
    ld a, [hl]
    ld bc, $207f
    ld a, a
    inc bc
    ld c, a
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    inc bc

jr_007_5131:
    ld b, $00
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ldh [$e0], a
    ld hl, sp-$10
    ret nc

    ret c

    ret c

    ret c

    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_007_5156

jr_007_5156:
    inc e
    inc b
    rra
    rlca
    rrca
    inc bc
    rrca
    rrca
    ccf
    rrca
    rra
    rlca
    rrca
    rrca
    rra
    rrca
    inc a
    rra
    ld a, h
    rrca
    ccf
    rra
    ccf
    ccf
    rst $38
    ld [hl], b
    nop
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
    ld b, b
    ld b, b
    jr nz, jr_007_519f

    sub b
    add b
    ld hl, sp-$40
    db $fc
    ldh a, [$c0]
    nop
    db $fc
    nop
    cp [hl]
    add b
    add d
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_007_5196

jr_007_5196:
    inc e
    inc b
    rra
    rlca
    rrca
    inc bc
    rrca
    rrca
    ccf

jr_007_519f:
    rrca
    rra
    rlca
    rrca
    rrca
    ld e, $0f
    inc a
    rra
    ld a, h
    rrca
    ccf
    ccf
    rst $38
    ld a, a
    rrca
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
    add b
    ld e, b
    ld b, b
    inc a
    nop
    ldh a, [$80]
    ld hl, sp+$10
    db $fc
    jr nc, @-$7e

    nop
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ld bc, $0318
    inc c
    inc bc
    inc c
    inc bc
    inc b
    inc bc
    inc b
    rlca
    inc e
    rlca
    inc c
    rlca
    inc c
    rrca
    inc e
    rrca
    inc a
    rra
    ld a, h
    rrca
    ccf
    ccf
    rst $38
    ld a, a
    rrca
    inc bc
    inc bc
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    and b
    and b
    sub b
    sub b
    ret z

    ret nz

    db $fc
    ldh [$fe], a
    ld hl, sp-$40
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    dec b
    inc b
    add hl, bc
    add hl, bc
    inc bc
    inc de
    rra
    ccf
    rra
    ccf
    scf
    ld a, a
    ld b, $7f
    nop
    and $00
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_007_5237

jr_007_5237:
    or b
    nop
    or b
    nop
    or b
    add b
    or h
    add b
    db $e4
    add b
    db $fc
    sbc b
    db $fc
    sbc h
    db $fc
    sbc h
    db $fc
    db $fc
    db $fc
    db $fc
    ld l, $fc
    ld b, $7c
    ld [bc], a
    inc h
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    dec c
    nop
    rrca
    ld bc, $0007
    dec bc
    ld [$1203], sp
    rra
    ccf
    rra
    ccf
    scf
    ld a, a
    ld b, $7f
    nop
    and $00
    add h
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
    add b
    nop
    add b
    add b
    add d
    add b
    add d
    nop
    ld a, [$fe38]
    ld e, $fe
    sbc [hl]
    db $fc
    db $fc
    db $fc
    db $fc
    inc l
    ld hl, sp+$0c
    ld a, b
    inc b
    jr z, jr_007_5292

jr_007_5292:
    ld [$0000], sp
    nop
    nop
    ld bc, $0300
    nop
    dec b
    inc b
    add hl, bc
    add hl, bc
    inc bc
    inc de
    sbc a
    ccf
    rst $38
    nop
    ld a, a
    nop
    rlca
    ld a, a
    nop
    rst $20
    nop
    add h
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
    add b
    nop
    add b
    add b
    add b
    add b
    add d
    add b
    jp nz, $fac0

    ld hl, sp-$02
    ld e, $fe
    ld e, $fc
    db $fc
    db $fc
    db $fc
    inc l
    ld hl, sp+$0c
    ld a, b
    inc b
    jr z, jr_007_52d2

jr_007_52d2:
    ld [$0000], sp
    nop
    nop
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
    sbc e
    rra
    cp a
    ld a, a
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    pop bc
    and b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_534a

    ld [hl], b
    ld d, b
    ld h, b

jr_007_52fd:
    db $10
    db $e4
    ld bc, $20ff
    di
    jr nz, jr_007_52fd

    ld b, b
    call z, $8000
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nc

    ldh [rP1], a
    nop
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
    inc bc
    rlca
    rra
    rra
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ld hl, sp-$08
    ret nz

    ret nz

    ret nz

    ret nz

    jr nz, jr_007_5371

    nop
    nop
    nop
    jr nz, jr_007_5386

    ld [hl], b
    ld d, b
    ld h, b

jr_007_5339:
    db $10
    db $e4

jr_007_533b:
    ld bc, $20ff
    di
    jr nz, jr_007_5339

    ld b, b
    call z, $8000
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b

jr_007_534a:
    ld [hl], b
    and b
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
    ld bc, $0100
    ld bc, $0001
    ld bc, $0300
    nop
    rlca
    ld d, $1f
    ld a, [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    db $e3
    db $e3
    jp $d1c3


    pop hl

jr_007_5371:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    jr nz, jr_007_533b

    ld [hl+], a
    adc $00
    cp $40
    ldh [rLCDC], a
    ldh [$80], a
    and b
    nop

jr_007_5386:
    jr nc, jr_007_5388

jr_007_5388:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
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
    ld h, h
    rlca
    inc bc
    add e
    jr nc, @-$3f

    cp h
    rst $38
    rst $38
    rst $38
    ld e, e
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rSCX]
    adc a
    nop
    rst $38
    add b
    ret nz

    add b
    cp $f7
    ld hl, sp+$00
    nop
    nop
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
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    jr jr_007_53fb

    ld h, b
    ld h, b
    ld bc, $0181
    add c
    db $dd
    dec e
    and e
    and e
    jp $d1c3


    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_007_541b

jr_007_53fb:
    ld e, $1e
    ld e, $1e
    jr nz, jr_007_5421

    ld h, b
    ld h, b
    and b
    and b
    jr nc, jr_007_5437

    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
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

jr_007_541b:
    nop
    ld bc, $0f03
    dec de
    rra

jr_007_5421:
    add hl, bc
    add hl, sp
    db $10
    jr nc, jr_007_5456

    jr nc, @+$24

    dec sp
    dec c
    ld e, $1f
    rra
    rra
    dec d

jr_007_542f:
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_5437:
    nop
    nop
    ld b, b
    and b
    ld h, b
    sub b
    jr jr_007_542f

    db $ec
    ldh a, [$e7]
    ld hl, sp-$20
    ldh [rP1], a
    nop
    add b
    sbc b
    call z, $e6f2
    ld sp, hl
    db $fc
    ld a, h
    jr nz, jr_007_5489

    nop
    nop
    nop
    nop
    nop

jr_007_5456:
    nop
    ld bc, $0102
    ld b, $0c
    rra
    rrca
    ccf
    ld [hl], a
    ld [hl], a
    inc hl
    ld h, e
    nop

jr_007_5464:
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl+], a
    dec sp
    dec c
    ld e, $1f
    rra
    rra
    dec d
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld h, b
    ret nz

    or b
    ret nz

    sbc h
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    add b
    or b

jr_007_5489:
    sbc b
    db $e4
    call z, $f8f2
    ld a, b
    ld h, b
    jr nc, jr_007_5492

jr_007_5492:
    nop
    nop
    nop
    inc b
    ld a, [bc]
    dec c
    ld [de], a
    ld [hl+], a
    ccf
    ld a, a
    ld a, a
    rra
    ld a, a
    xor [hl]
    xor $c0
    ret nz

    nop
    ret nz

    and b
    ldh [$62], a
    ld a, e
    dec l
    ld a, $1f
    rra
    rra
    dec d
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    add b
    ld b, b
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
    db $10
    jr z, jr_007_5464

    ld [c], a
    call z, $f0fc
    ldh a, [$c0]
    ld h, b
    and b
    jr nc, jr_007_54d2

jr_007_54d2:
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld b, $01
    inc b
    rrca
    dec bc
    rla
    dec de
    rlca
    inc bc
    rra
    rlca
    rrca
    ld b, $06
    nop
    ld b, $03
    rlca
    ld [bc], a
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [$1008], sp
    inc e
    inc b
    inc d
    ld l, $04
    ld a, $8e
    sbc [hl]
    sbc h
    sbc h
    cp h
    cp b
    ld e, $2c
    inc l
    jr c, jr_007_5526

    inc e
    inc e
    jr c, @-$30

    db $fc
    ld h, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    inc c
    ld [bc], a
    ld [$171e], sp
    cpl
    scf
    rrca
    rlca

jr_007_5526:
    ccf
    ld c, $1e
    inc c
    inc c
    ld [bc], a
    ld c, $03
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [$1008], sp
    inc e
    inc b
    inc d
    ld l, $06
    ld a, $0e
    inc e
    inc a
    jr c, @+$20

    inc l
    inc l
    jr c, @+$20

    inc e
    inc e
    jr c, jr_007_5598

    ld a, h
    ld h, b
    ldh [rLCDC], a
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
    jr nz, jr_007_555d

jr_007_555d:
    jr nz, jr_007_555f

jr_007_555f:
    jr nz, jr_007_5571

    jr nc, jr_007_556b

    inc l
    inc e
    ld e, $7e
    ld l, [hl]
    ld e, $2e
    ld e, [hl]

jr_007_556b:
    inc c
    inc a
    ld a, [de]
    ld e, $09
    rrca

jr_007_5571:
    inc bc
    inc bc
    nop
    nop
    nop
    jr nz, jr_007_55a8

    db $10
    jr nc, jr_007_55cb

    ld l, b
    ld a, [de]
    ld a, [bc]
    ld a, [hl]
    inc e
    inc a
    ld a, $38
    inc e
    inc l
    ld l, $38
    inc e
    inc e
    ld e, $38
    inc c
    inc a
    ld [hl], b
    ld [hl], b
    jr nz, jr_007_5571

    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop

jr_007_5598:
    nop
    inc bc
    nop
    rrca
    nop
    ld a, a
    nop
    ccf
    nop
    ld e, $00
    inc e
    nop
    ld [$0000], sp

jr_007_55a8:
    add b
    nop
    ld b, b
    ld h, b
    ld h, b
    rra
    ccf
    inc b
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    db $f4
    nop
    cp $00
    ld a, [$aa04]
    ld b, b
    ld h, b
    ret z

    add sp, -$28
    ldh [$e0], a
    and b
    ldh a, [rNR10]
    ld a, b
    ld d, b
    ld [hl], b

jr_007_55cb:
    ret nz

    ldh a, [$f6]
    ldh [$5a], a
    ret nz

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

jr_007_55dd:
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld e, $00
    inc b
    ld a, [bc]
    inc b
    nop
    nop
    nop
    jr nc, jr_007_55dd

    rrca
    rra
    ld [bc], a
    rrca

jr_007_55f1:
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    db $fc
    nop
    cp $00
    ld [$a204], a
    ld c, b
    ld l, b
    ret c

    ldh [$e0], a
    ld d, b
    ldh [rNR32], a
    ldh [$34], a
    ld [hl], b
    jr c, jr_007_5643

    ld [hl], b
    ld a, b
    ldh [$f0], a
    jr nz, jr_007_55f1

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rlca
    nop
    ld bc, $1000
    db $10
    rra
    ccf
    ld bc, $004f
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    call nc, $4408
    sub b
    ret nc

    or b
    adc $c0

jr_007_5643:
    cp b
    ldh [$90], a
    ldh [$90], a
    ldh a, [rSVBK]
    ld a, b
    ld h, b
    ld [hl], b
    ldh a, [$f0]
    nop
    ldh [rP1], a
    nop
    nop
    nop
    inc e
    nop
    jr nc, jr_007_5661

    dec e
    inc bc
    jr c, jr_007_565e

    ccf

jr_007_565e:
    nop
    dec sp
    rlca

jr_007_5661:
    dec a
    inc bc
    ld e, $00
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    ld b, $00
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    inc b
    nop
    ld [bc], a
    jr nz, jr_007_56b2

    ld a, b
    call nz, $9efc
    cp $cc
    adc $04
    ld b, $04
    ld b, $86
    ld b, $c4
    ld b, $84
    ld b, $08
    inc c
    ld [$0018], sp
    jr nz, jr_007_5694

jr_007_5694:
    nop
    inc e
    nop
    jr nc, jr_007_56a1

    ld a, [hl-]
    ld b, $70
    ld [bc], a
    ld a, a
    ld bc, $077b

jr_007_56a1:
    dec a
    inc bc
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
    ld bc, $0000
    nop
    nop

jr_007_56b2:
    nop
    nop

jr_007_56b4:
    nop
    nop
    nop
    ld h, b
    nop
    ld d, b
    jr jr_007_56b4

    inc a
    ld a, $fe
    adc h
    xor $04
    add $04
    ld b, $86
    ld b, [hl]
    db $e4
    ld b, $84
    ld b, [hl]
    adc b
    inc c
    ld [$0008], sp
    ld [$0800], sp
    nop
    nop
    ld bc, $1d00
    nop
    ld sp, $3a08
    ld b, $70
    ld [bc], a
    ld a, a
    ld bc, $077b
    ccf
    nop
    ccf
    nop
    rra
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
    add b
    db $10
    db $f4
    inc a
    sbc h
    cp $1c
    cp $e4
    and $f6
    ld b, $e4
    ld b, $e4
    ld b, $c4
    ld b, $4c
    inc c
    nop
    inc b
    nop
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
    ld bc, $0f03
    dec de
    rra
    add hl, bc
    add hl, sp
    db $10
    jr nc, jr_007_5756

    jr nc, @+$24

    dec sp
    dec c
    ld e, $1f
    rra
    rra
    dec d

jr_007_572f:
    dec d
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
    and b
    ld h, b
    sub b
    jr jr_007_572f

    db $ec
    ldh a, [$e7]
    ld hl, sp-$20
    ldh [rP1], a
    nop
    add b
    sbc b
    call z, $e6f2
    ld sp, hl
    db $fc
    ld a, h
    jr nz, jr_007_5789

    nop
    nop
    nop
    nop
    nop

jr_007_5756:
    nop
    nop
    nop
    nop
    ld bc, $0303
    inc bc
    rrca
    add hl, de
    dec e
    ld [$1038], sp

jr_007_5764:
    jr nc, jr_007_5796

    jr nc, @+$24

    dec sp
    dec c
    ld e, $1f
    rra
    rra
    dec d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    and b
    rst $18
    jr nz, jr_007_57a4

    db $f4
    ldh a, [$f8]
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    ld [$8e14], sp
    or c

jr_007_5789:
    and $fe
    ld hl, sp-$08
    ldh [rSVBK], a
    db $10
    jr jr_007_5792

jr_007_5792:
    nop
    nop
    nop
    nop

jr_007_5796:
    nop
    nop
    ld bc, $0300
    ld b, $1f
    rla
    rra
    inc sp
    inc sp
    ld bc, $1031

jr_007_57a4:
    jr nc, jr_007_57d6

    jr nc, @+$24

    dec sp
    dec c
    ld e, $1f
    rra
    rra
    dec d
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ret nz

    jr nz, jr_007_57ec

    ldh [$d8], a
    ldh [$ce], a
    ldh a, [$c0]
    ret nz

    nop
    nop
    db $10
    jr z, jr_007_5764

    ld [c], a
    call z, $f0fc
    ldh a, [$c0]
    ld h, b
    and b
    jr nc, jr_007_57d2

jr_007_57d2:
    nop
    nop
    nop
    nop

jr_007_57d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld e, $2c
    ld a, a
    ret nz

    ret nz

    xor c
    xor $7f
    ld a, a
    ld a, a
    ld [$0000], sp
    nop

jr_007_57ec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld [hl], b
    ld e, a
    ldh [rP1], a
    nop
    inc c
    ld [hl], d
    ld hl, sp-$01
    db $fc
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld c, $0e
    dec d
    dec d
    jr z, jr_007_584b

    jr nc, jr_007_5855

    jr nc, jr_007_5857

    dec hl
    dec hl
    inc d
    inc d
    db $10
    db $10
    ld a, [de]
    db $10
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    rra
    nop
    inc b
    nop
    ld [$1010], sp
    ldh [$e0], a
    nop
    nop
    nop
    nop
    add b
    or b
    ld b, b
    ld c, h

jr_007_584b:
    inc b
    ld b, $88
    ld [$3070], sp
    nop
    nop
    nop
    nop

jr_007_5855:
    nop
    nop

jr_007_5857:
    nop
    nop
    nop
    nop
    ld bc, $0f07
    rrca
    rra
    rra
    rra
    rra
    dec b
    inc bc
    inc b
    inc b
    ld b, $08
    ld a, [bc]
    inc c
    dec b
    ld b, $0c
    inc c
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_007_58b9

    and h
    ret z

    ld b, h
    ld h, b
    sub h
    adc b
    add b
    ret nz

    add b
    ret nz

    cp b
    add b
    nop
    ldh a, [rBCPS]
    ld hl, sp+$6c
    rst $38
    ld b, $66
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
    nop
    nop
    ld bc, $0f07
    rrca
    rra
    rra
    rra
    rra
    ld bc, $0407
    nop
    inc b
    inc b
    ld b, $08
    dec bc
    inc c
    ldh a, [$e8]
    ret nz

    ret nz

    ld h, b
    ld [hl], b
    nop
    nop
    nop
    nop
    jr c, jr_007_58f7

    and h
    ret z

jr_007_58b9:
    ld b, h
    ld h, b
    sub h

jr_007_58bc:
    adc b
    add b
    ret nz

    cp b
    add b
    add h
    add a
    ld c, $fe
    ld l, h
    db $fc
    ld h, b
    ldh a, [$80]
    ld h, b
    ret nz

    ld c, b
    ld hl, sp-$08
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f07
    rrca
    rra
    rra
    rra
    rra
    ld bc, $0407
    nop
    inc b
    inc b
    ld b, $08
    dec bc

jr_007_58ea:
    inc c
    jr jr_007_5902

    ld sp, $3d31
    ccf
    nop
    nop
    nop
    nop
    jr c, @+$42

jr_007_58f7:
    and h
    ret z

    ld b, h
    ld h, b
    sub h
    adc b
    add b
    ret nz

    cp b
    add b
    add b

jr_007_5902:
    add b
    nop
    ldh a, [$6c]
    rst $38
    ld l, [hl]
    cp $00
    ld h, b
    add b
    add b
    add b
    add b
    ldh [$f0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    jr nz, jr_007_592f

    inc h
    nop
    jr nc, jr_007_5927

    ld [$173b], sp
    rla
    rrca
    rrca
    rlca
    rrca

jr_007_5927:
    rlca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop

jr_007_592f:
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [$1818], sp
    jr jr_007_58ea

    jr nc, jr_007_58bc

    ld [hl], b
    or b
    ld a, b
    jr nc, jr_007_59b9

    add b
    ld a, [c]
    adc d
    add d
    ld [hl-], a
    adc d
    xor $5e
    ld d, $36
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
    add hl, sp
    ld bc, $2842
    ld c, d
    nop
    ld h, d
    db $10
    db $10
    ld [hl], h
    cpl
    cpl
    rra
    rra
    ld c, $1f
    ld c, $1f
    ld c, $0e
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    call nz, $04cc
    db $e4
    ld h, [hl]
    or $6e
    cp $1c
    db $e4
    stop
    jr nc, jr_007_5987

jr_007_5987:
    ldh [$50], a
    db $10
    jr c, jr_007_5994

    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc c
    inc c
    nop

jr_007_5994:
    nop
    nop
    nop
    jr c, jr_007_5999

jr_007_5999:
    ld b, d
    jr z, jr_007_59e6

    nop
    ld h, d
    db $10
    db $10
    ld [hl], h
    cpl
    cpl
    rra
    rra
    ld c, $1f
    ld c, $1f
    ld c, $0e
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    jr nz, @+$62

    ld h, b
    ld h, b

jr_007_59b9:
    ld h, b
    ld h, b
    nop
    ld [c], a
    ld h, d
    ld a, [c]
    ld h, d
    ld a, [c]
    ld c, $ee
    ld d, $0e
    jr nc, jr_007_59c9

    ld [c], a
    ld e, d

jr_007_59c9:
    ld a, [de]
    ld [hl-], a
    ld c, $0e
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld bc, $c3ff
    ld [hl], c
    ld [hl], c
    inc e
    inc e
    add c
    add a
    pop af
    rst $38
    inc bc
    rra
    nop
    rrca
    inc b

jr_007_59e6:
    nop
    ld b, $00
    inc bc
    nop
    nop
    rlca
    inc c
    ld [bc], a
    nop
    rrca
    nop
    nop
    nop
    nop
    and b
    add b
    ldh a, [$c0]
    ld hl, sp-$80
    db $ec
    db $ec
    ldh a, [$f8]
    and b
    cp h
    nop
    add [hl]
    nop
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
    nop
    add b
    nop
    nop
    nop
    jr @+$1a

    ld [$4808], sp
    ld c, b
    ld l, h
    ld l, h
    inc h
    inc h
    ld sp, $1037
    rra
    ld [bc], a
    rra
    ld [bc], a
    rrca
    rlca
    inc bc
    rlca
    ld bc, $001d
    ld b, b
    jr nc, jr_007_5a72

    and b
    ld [$0070], sp
    nop
    jr nz, jr_007_5a35

jr_007_5a35:
    ld [hl], b
    nop
    ld hl, sp+$00
    db $ec
    db $ec
    ld [hl], b
    ld a, b
    and b
    cp h
    nop
    ld b, $00
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    rst $00
    ret nz

    ld a, [hl]
    ldh a, [$fc]
    ld [hl], b
    jr nc, @-$0e

jr_007_5a51:
    nop
    nop
    nop
    nop

jr_007_5a55:
    ld h, b
    ld h, b
    jr nc, jr_007_5a89

    jr jr_007_5a73

    adc h
    adc h
    pop hl
    rst $20
    jr nc, jr_007_5aa0

    inc bc
    rra
    ld bc, $040f
    nop
    rlca
    nop
    dec c
    nop
    nop
    dec e
    inc sp
    ld [$3f04], sp
    nop

jr_007_5a72:
    nop

jr_007_5a73:
    jr nz, jr_007_5a75

jr_007_5a75:
    ld [hl], b
    nop
    ld hl, sp+$00
    db $ec
    db $ec
    ld [hl], b
    ld a, b
    and b
    cp h
    ld bc, $0306
    add b
    add a
    add b
    sbc $d8
    ld a, h
    ld a, h

jr_007_5a89:
    sbc b
    jr jr_007_5a8c

jr_007_5a8c:
    ret nz

    db $10
    add b
    jr nz, jr_007_5a51

    nop
    nop
    nop
    nop
    nop
    ld bc, $0b08
    jr jr_007_5aa9

    inc [hl]
    ld b, $7e
    ld c, $3c

jr_007_5aa0:
    inc l
    ld a, [hl]
    ld a, a
    ld [hl], a
    ld [hl], a
    ld h, c
    daa
    ld l, b
    rrca

jr_007_5aa9:
    ld l, b
    dec bc
    ld a, d
    dec de
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    ld h, $26
    nop
    nop
    nop
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
    nop
    ld [bc], a
    nop
    db $10
    adc d
    jr nc, jr_007_5a55

    ld h, h
    adc d
    inc b
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
    ld [bc], a
    db $10
    ld d, $30
    inc e
    ld l, b
    inc c
    db $fc
    inc e
    ld a, b
    jr @+$36

    dec d
    inc b
    rlca
    ld bc, $1807
    rra
    ldh a, [$f3]
    add [hl]
    add a
    inc e
    inc e
    jr nc, @+$32

    nop
    nop
    stop
    jr jr_007_5af7

jr_007_5af7:
    inc e
    nop
    inc c
    nop
    ld c, $0e
    ld c, $0e
    inc e
    ld e, $34
    ld a, [hl-]
    ld [hl], b
    ldh [$e0], a
    ret nz

    ld [hl], h
    add b
    ld [de], a
    add b
    db $10
    ld a, [bc]
    nop
    ld c, $0c
    ld [bc], a
    nop
    inc b
    inc bc
    nop
    ld bc, $1002
    ld d, $30
    inc e
    ld l, b
    inc c
    db $fc
    inc e
    ld a, b
    jr jr_007_5b56

    dec d
    dec b
    rlca
    ld bc, $0807
    rrca
    jr jr_007_5b46

    ld [hl-], a
    inc sp
    ld h, [hl]
    ld h, [hl]
    ld b, h
    ld b, h
    inc c
    inc c
    add b
    nop
    ret nz

    nop
    ldh [rNR41], a
    ld [hl], b
    ld [hl], b
    ld [hl], h
    ld [hl], b
    ld [hl+], a
    jr nz, jr_007_5ba0

    ld l, d
    ret nc

    adc $b4
    adc d
    inc h

jr_007_5b46:
    add d
    ld [hl], d
    adc d
    db $10
    adc [hl]
    inc b
    ld a, [bc]
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_5b56:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    nop
    inc bc
    ld [bc], a
    nop
    ld b, $0a
    dec bc
    inc c
    ld a, [hl-]
    scf
    ld h, [hl]
    ld h, [hl]
    ld a, e
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    jr nz, jr_007_5bcc

    ld h, h
    and d
    or b
    jp z, $c0c4

    ldh [$dc], a
    ret nz

    ret nz

    ret nz

    nop
    ld e, h
    ld l, h
    ld e, [hl]
    db $ec
    cp $00
    inc e
    nop
    nop
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
    inc bc
    rlca
    rlca
    rrca

jr_007_5ba0:
    rrca
    rrca
    rrca
    nop
    inc bc
    ld [bc], a
    nop
    ld b, $0a
    dec bc
    inc c
    ld [hl], c
    ld l, c
    jp $f3c3


    ei
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    jr nz, jr_007_5c0c

    ld h, h
    and d
    or b
    jp z, $c0c4

    ldh [$c0], a
    ldh [$dc], a
    ret nz

    nop
    ld e, h
    ld l, h
    ld e, [hl]
    db $ec
    ld a, [hl]
    nop

jr_007_5bcc:
    sbc h
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
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
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ld [bc], a
    ld bc, $0a06
    ld a, [bc]
    inc c
    dec b
    ld b, $0c
    inc c
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    jr nz, jr_007_5c4e

    ld h, h
    and d
    or b
    jp z, $c0c4

    ldh [$dc], a
    ret nz

    ret nz

    call c, Call_007_5e2c
    db $ec
    cp $00

jr_007_5c0c:
    inc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $7f1f
    ld a, a
    rst $38
    rst $38
    ld c, d
    ld [hl], a
    ld hl, sp-$07
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_007_5c83

    ld [hl+], a
    ret nz

    jp c, $04e4

    db $fc
    or $fb
    ld c, $fe
    nop
    nop
    nop
    nop
    nop

jr_007_5c4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0807
    ld [$1010], sp
    jr jr_007_5c79

    ld bc, $0007
    inc b
    inc b
    inc b
    ld [$0c0a], sp
    ld c, $06
    rlca
    inc c
    inc c
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld b, b
    ld a, b
    adc b
    adc h

jr_007_5c79:
    ld b, b
    ld h, h
    adc b
    sbc h
    ret nz

    ret nz

    add b
    cp b
    add b
    add b

jr_007_5c83:
    nop
    ldh a, [$0c]
    sbc a
    ld c, $9e
    nop
    ld h, b
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
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    nop
    rrca
    ld b, $0f
    inc bc
    rrca
    ld [bc], a
    rrca
    ld bc, $0207
    ld c, $03
    inc c
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld c, $f0
    ld b, $f8
    ld [bc], a
    ld hl, sp+$02
    ld hl, sp+$1e
    ld hl, sp+$7e
    add sp, -$0a
    ret c

    ld [$f0f8], sp
    ld hl, sp+$06
    ld hl, sp+$00
    db $fc
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc bc
    rrca
    inc b
    rrca
    rlca
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld a, a
    inc de
    ld [hl], e
    ld sp, $0001
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld c, $f0
    ld b, $f8
    ld [bc], a
    ld hl, sp+$02
    ld hl, sp-$3a
    ld hl, sp-$1a
    jr c, @-$58

    ld hl, sp-$3a
    ld hl, sp+$00
    ld hl, sp+$06
    ld hl, sp+$00
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    nop
    rrca
    rlca
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    add hl, bc
    rrca
    jr jr_007_5d4a

    inc a
    ccf
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld c, $f0
    ld b, $f8
    ld [bc], a
    ld hl, sp+$32
    ld hl, sp+$7e
    ret z

    or $d8
    ld c, $f8
    ldh a, [$f8]
    nop
    ld hl, sp+$06

jr_007_5d4a:
    ld hl, sp+$00
    db $fc
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld [hl], e
    nop
    ld h, e
    rra
    ld b, e
    ld a, $41
    ccf
    ld b, c
    ccf
    ld b, b
    ccf
    ld bc, $3f7f
    ccf
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
    sub b
    nop
    sub b
    ld [$f840], sp
    and b
    ld hl, sp-$60
    ld a, b
    and b
    ld hl, sp-$5e
    ld a, [$f82a]
    db $76
    db $fc
    ld b, b
    cp $00
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    add hl, sp
    nop
    jr nc, @+$11

    jr nz, jr_007_5dbc

    jr nz, @+$21

    ld hl, $211f
    rra
    nop
    ccf
    rra
    rra
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
    add sp, $00
    add sp, $04
    nop
    db $fc
    nop

jr_007_5dbc:
    db $fc
    jp nz, $a2fe

    ld a, [hl]
    ld [c], a
    ld a, [hl]
    and [hl]
    cp $bc
    db $fc
    ld h, b
    ld hl, sp+$00
    ld hl, sp+$06
    inc c
    ld [bc], a
    inc c
    nop
    inc c
    nop
    nop
    nop
    nop
    ccf
    nop
    ld [hl], e
    nop
    ld h, d
    rra
    ld b, a
    dec a
    ld b, a
    inc a
    ld b, e
    ccf
    ld b, c
    ccf
    ld bc, $3f7f
    ccf
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
    sub b
    nop
    sub b
    ld [$f880], sp
    ld b, b
    ld hl, sp+$40
    ld hl, sp+$42
    ld hl, sp+$42
    ld hl, sp+$48
    cp $70
    cp $42
    ld a, [$fe0e]
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $04
    rlca
    inc b
    rlca
    inc b
    ld b, $04
    ld c, $06
    ld e, $01
    rra
    inc c
    rra
    rlca
    rra
    inc b
    rra
    ld [bc], a

Call_007_5e2c:
    ld c, $04
    inc e
    rlca
    add hl, de
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    nop
    inc c
    ldh a, [rTMA]
    ldh [$92], a
    ldh a, [$94]
    ldh a, [$82]
    ldh [$86], a
    ld hl, sp+$66
    ld hl, sp+$18
    ld a, [$e4dc]
    ld e, h
    db $f4
    inc [hl]
    inc a
    ld [$0008], sp
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $04
    rlca
    inc b
    rlca
    inc b
    ld b, $07
    rrca
    nop
    rra
    rrca
    rra
    dec b
    rra
    inc b
    rra
    inc b
    rra
    db $10
    inc e
    jr nc, @+$38

    ld a, c
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    nop
    inc c
    ldh a, [rTMA]
    ldh [$fe], a
    db $fc
    adc [hl]
    ld a, [c]
    ld l, [hl]
    ld a, [$fe9a]
    add [hl]
    db $fc
    sub b
    ld a, [c]
    inc l
    ldh a, [$0c]
    db $fc
    jr jr_007_5ecb

    add b
    nop
    nop
    nop
    inc e
    inc e
    ld a, [hl-]
    ld h, $5f
    ld l, h
    add l
    cp $9c
    rst $38
    ld c, h
    ld a, a
    inc h
    ld a, $04
    ld e, $14
    ld e, $04
    ld e, $05
    rra
    inc b
    rra
    inc b
    rst $38
    ld h, $e6
    ld h, e
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    nop
    inc c
    ldh a, [rTMA]
    ldh [$92], a
    ldh a, [$94]
    ldh a, [$82]
    ldh [$86], a
    ld hl, sp-$7a
    ld hl, sp-$70
    ld a, [c]

jr_007_5ecb:
    inc l
    ldh a, [$0c]
    db $fc
    ret c

    db $fc
    nop
    nop
    nop

jr_007_5ed4:
    nop
    dec c
    nop
    ld a, [hl-]
    nop
    ld [hl], b
    nop
    ld h, [hl]
    ld d, $60
    rra
    ld h, b
    rra
    ld h, a
    rra
    ld h, b
    jr jr_007_5f27

    ccf
    ccf
    ld a, a
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    jr nz, jr_007_5ed4

    inc e
    ld a, [hl-]
    and $3c
    db $ec
    ld b, h
    db $fc
    ld e, b
    ld hl, sp-$70
    ld hl, sp-$5e
    ld a, [c]
    ld a, [hl+]
    ld hl, sp+$76
    db $fc
    ld b, b
    cp $00
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    inc bc
    ccf
    inc b
    ld [hl], a
    dec b
    ld h, h
    rla
    ld h, l
    rra
    ld h, l
    rra
    ld h, [hl]
    rra
    ld h, d
    dec de
    ld b, d
    ccf

jr_007_5f27:
    ld a, $7f
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    and b
    ld e, b
    call z, $cc9c
    and h
    db $fc
    db $10
    db $fc
    nop
    ld hl, sp-$1e
    ld hl, sp-$3e
    ldh a, [$80]
    or $f0
    cp $82
    ld a, [$fe0e]
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $00
    dec e
    nop
    jr c, jr_007_5f5b

jr_007_5f5b:
    inc sp
    dec bc
    jr nc, jr_007_5f6e

    jr nc, jr_007_5f70

    inc sp
    rrca
    jr nc, jr_007_5f71

    ld h, b
    ld e, a
    cp a
    rst $38
    db $ec
    cp a
    add sp, -$61
    ld b, d

jr_007_5f6e:
    ld a, [hl]
    inc h

jr_007_5f70:
    inc a

jr_007_5f71:
    jr @+$1a

    nop
    nop
    ldh [rNR10], a
    ld l, h
    ld b, $0e
    ld h, [hl]
    ld [de], a
    ld a, [hl]
    ld [$02fe], sp
    cp $f2
    cp $22
    ld a, [hl-]
    ld b, $fe
    db $fc
    db $fc
    nop
    ld hl, sp-$80
    ld hl, sp+$06
    inc c
    ld [bc], a
    inc c
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    nop
    rrca
    rlca
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ccf
    rrca
    ld a, a
    dec de
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld c, $f0
    ld b, $f8
    ld b, $fe
    ld c, $f8
    cp $fa
    ld [bc], a
    cp $fc
    cp $06
    ld hl, sp+$00
    ld hl, sp+$06
    ld hl, sp+$00
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    nop
    rrca
    rlca
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    dec b
    dec e
    rlca
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld c, $f0
    ld b, $f8
    ld b, $fe
    ld c, $f8
    cp $fa
    ld [bc], a
    cp $fc
    cp $06
    ld hl, sp+$00
    ld hl, sp+$06
    ld hl, sp+$00
    db $fc
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
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    nop
    rrca
    rlca
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld bc, $0207
    ld c, $03
    inc c
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld c, $f0
    ld b, $f8
    ld [bc], a
    ld hl, sp+$06
    cp $0e
    ld hl, sp-$02
    ld a, [$fe02]
    db $fc
    db $fc
    nop
    ld hl, sp+$06
    ld hl, sp+$00
    db $fc
    nop
    nop
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
    nop
    nop
    nop
    dec e
    ld e, $00
    ccf
    dec e
    ld a, a
    ld b, e
    ld a, a
    rra
    ld a, a
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld b, b
    rst $20
    jr c, @+$23

    ldh a, [$c3]
    db $fc
    ret nz

    ldh a, [$a3]
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    add hl, bc
    inc b
    inc c
    inc bc
    dec bc
    nop
    ld [$0501], sp
    ld [bc], a
    ld a, [bc]
    inc bc
    inc c
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    jr nz, jr_007_60e3

    ld d, b
    ld d, d

jr_007_60c3:
    and b
    and d
    db $10
    ld d, $e0
    add sp, $00
    ld b, $00
    db $fc
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0003
    nop
    ld bc, $0003
    nop
    ld bc, $0100

jr_007_60e3:
    ld bc, $0b03
    rrca
    ccf
    ccf
    nop
    inc bc
    ld h, h
    inc bc
    jr c, @+$05

    nop
    ld bc, $0000
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    sub b
    nop
    ret nc

    nop
    ld hl, sp+$40
    ldh a, [rNR41]
    jr nz, jr_007_60c3

    ld d, b
    ldh [rBCPS], a
    ld hl, sp-$02
    cp $00
    ret nz

    nop
    add b
    db $10
    add b
    ld [hl], b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0003
    nop
    ld bc, $0003
    nop
    ld bc, $0100
    ld bc, $0b03
    rrca
    ccf
    ccf
    nop
    rlca
    adc b
    rlca
    ldh a, [rTAC]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    sub b
    nop
    ret nc

    nop
    ld hl, sp+$40
    ldh a, [rNR41]

jr_007_6143:
    jr nz, @-$3e

    ld d, b
    ldh [rBCPS], a
    ld hl, sp-$02
    cp $00
    add b

jr_007_614d:
    jr nz, jr_007_614f

jr_007_614f:
    ldh [rP1], a
    nop
    nop
    ld bc, $0000
    ld bc, $0003
    nop
    ld bc, $0003
    nop
    ld bc, $0100
    add hl, bc
    rrca
    ccf
    ccf
    inc bc
    inc bc
    jr c, jr_007_616c

    ld h, h
    inc bc
    nop

jr_007_616c:
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    sub b
    nop
    ret nc

    nop
    ld hl, sp+$40
    sub b
    nop
    ld b, b
    add b
    jr nz, jr_007_6143

    ld b, b
    ldh a, [$f8]
    ld hl, sp+$3e
    cp $08
    ret nz

    jr c, jr_007_614d

    nop
    ldh [rP1], a
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
    nop
    ld e, $00
    daa
    ld [bc], a
    ld l, [hl]
    dec b
    ld a, $01
    ld d, h
    dec hl
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
    nop
    nop
    nop

jr_007_61b4:
    nop
    jr nz, jr_007_61d7

    jr nz, jr_007_61d9

    ld h, b
    ld h, b
    and [hl]
    ld h, b
    ld h, d
    ldh [$e2], a
    ldh a, [rNR41]
    cp $e0
    cp $60
    db $fc
    jr z, @+$62

    ld h, h
    ld h, b
    inc h
    jr nz, @+$2e

    jr nz, jr_007_61d8

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_61d7:
    nop

jr_007_61d8:
    nop

jr_007_61d9:
    ld [bc], a
    nop
    rrca
    nop
    inc de
    ld bc, $0237
    rra
    nop
    ld a, [hl+]
    dec d
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    db $10
    jr nc, jr_007_622b

    ld d, b
    jr nc, jr_007_61b4

    ld [hl], b
    ld [hl], d
    ldh a, [rNR12]
    ld hl, sp+$70
    cp $30
    ld a, [hl]
    db $10
    ld a, $34
    jr nc, jr_007_621e

    db $10
    ld [de], a
    db $10
    ld [bc], a
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$3c00], sp
    nop
    ld c, c

jr_007_621e:
    nop
    jp c, Jump_007_7c09

    inc bc
    xor c
    ld d, a
    jr z, jr_007_6228

    nop

jr_007_6228:
    ld bc, $0101

jr_007_622b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_6257

    jr nz, jr_007_6259

    ld a, b
    ld h, b
    ld l, b
    ldh [rBCPS], a
    db $e4
    ret nz

    db $fc
    ld b, b
    db $fc
    ret nz

    ld hl, sp-$40
    ldh a, [$90]
    add b
    and b
    add b
    and b
    add b
    or b
    add b
    stop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6257:
    nop
    nop

jr_007_6259:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop
    ccf
    nop
    rlca
    add e
    inc bc
    ld b, a
    rlca
    ld h, a
    rlca
    inc bc
    dec hl
    ld bc, $0019
    nop
    nop
    nop
    ld [bc], a
    nop
    inc b
    ld a, [bc]
    inc e
    jr nz, jr_007_62f4

    ld h, h
    ld e, b

jr_007_627e:
    ret nc

    ld c, b
    ret z

    ldh a, [$38]
    ld a, h
    sub b
    ld d, $f8
    nop
    ldh a, [$c0]
    ld hl, sp-$80
    adc h
    or b
    add d
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_629d:
    nop
    ld bc, $0300
    rlca
    nop
    nop
    ld a, a
    nop
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rst $00
    rlca
    ld h, c
    dec e
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [$3814], sp
    ld b, b
    ldh a, [$c8]
    or b
    and b
    sub b
    sub b
    ldh [rSVBK], a
    ld hl, sp+$20
    inc l
    ldh a, [rP1]
    ldh [$80], a
    ldh a, [rP1]
    jr jr_007_627e

    add h
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $1304
    rlca
    add hl, de
    inc de
    inc a
    ld de, $385e
    ld a, a
    ld a, h
    ccf
    cp $3f
    cp l
    inc a
    rra
    jr jr_007_62f2

jr_007_62f2:
    nop
    nop

jr_007_62f4:
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
    ldh a, [$fc]
    jp nz, $a8b0

    add b
    and b
    ld h, b
    ldh [$c0], a
    and b
    ldh [$80], a
    jr nz, jr_007_629d

    nop
    ret nz

    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    ld b, b
    jr nz, @+$32

    ld [$231e], sp
    dec e
    dec b
    add hl, bc
    add hl, de
    rrca
    ld c, $01
    ld b, $01
    ld [bc], a
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
    ld b, b
    inc b
    ret nz

    ld [$5880], sp
    call nz, $86f0
    ld [hl], b
    sub d
    ld [hl], b
    ld e, $fc
    ld a, $fe
    inc a
    db $fc
    jr @-$26

    nop
    add [hl]
    nop
    add d
    ld [$1884], sp
    nop
    jr nz, jr_007_6353

jr_007_6353:
    nop
    nop
    nop
    nop
    ld b, b
    jr nz, jr_007_638a

    ld [$231e], sp
    dec e
    dec b
    add hl, bc
    add hl, de
    rrca
    ld c, $01
    ld b, $01
    ld [bc], a
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
    ld b, b
    inc b
    ret nz

    ld [$5884], sp
    add $f0
    add d
    ld [hl], b
    sub [hl]
    ld [hl], h
    ld e, $fe
    inc a
    db $fc
    inc a
    cp $38

jr_007_638a:
    ld a, [$8200]
    ld [bc], a
    add b

jr_007_638f:
    ld b, $80
    inc b
    nop
    inc b
    nop
    inc b
    ld [bc], a
    ld b, $00
    ld b, $01
    inc bc
    inc b
    inc bc
    dec b
    ld b, $06
    rlca
    rlca
    ld bc, $0107
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0300
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
    ld a, [bc]
    ld e, b
    ld [c], a
    ld [hl], b
    ld b, [hl]
    or b
    db $fc
    add $38
    adc d
    ld a, b
    ld e, $fc
    ld a, $fe
    cp $fe
    inc a
    cp h

jr_007_63cf:
    jr jr_007_6431

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
    nop
    nop
    nop
    nop
    inc b
    rlca
    rra
    rra
    inc bc
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    ld c, b
    inc bc
    ld a, b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld d, b
    nop
    jr c, jr_007_643b

    db $e4
    nop
    inc [hl]
    ld b, b
    cp $10
    jr c, jr_007_63cf

    adc b
    ldh [$a4], a
    ldh a, [$f0]
    ld hl, sp+$3c
    db $fc
    ld b, $86
    jr nz, jr_007_638f

    ldh [rP1], a
    nop
    nop

jr_007_6413:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rra
    rra
    inc bc
    inc bc
    ld bc, $8807
    rlca
    ldh a, [rTAC]

jr_007_6431:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_643b:
    ld d, b
    nop
    jr c, jr_007_647f

    db $e4
    nop
    inc [hl]
    ld b, b
    cp $10
    jr c, jr_007_6413

    adc b
    ldh [$a4], a
    ldh a, [$f0]
    ld hl, sp+$3c
    cp h
    and $06

jr_007_6451:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rra
    rra
    inc bc
    inc bc
    nop
    ld bc, $0300
    ld h, h
    inc bc
    jr c, jr_007_6474

    nop
    nop
    nop

jr_007_6474:
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    jr c, jr_007_64bd

    db $e4
    nop

jr_007_647f:
    inc [hl]
    ld b, b
    cp $10
    jr c, jr_007_6451

    adc b
    ldh [$a4], a
    ldh a, [$f0]
    ld hl, sp+$3c
    db $fc
    ld d, $86
    ld [hl], b
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
    ldh [rP1], a
    stop
    db $fc
    nop
    ld h, [hl]
    cp $ff
    rst $38
    ld a, $c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_64bd:
    rrca
    nop
    ld bc, $4f06
    ld b, b
    rst $20
    ld a, a
    rst $38
    ccf
    ld a, h
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld [$3c0c], sp
    inc a
    nop
    ld [bc], a
    inc [hl]
    nop
    ld l, b
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, b
    nop
    and b
    ld h, b
    db $10
    jr nz, jr_007_650d

    nop
    ld [$1000], sp
    nop
    jr nz, jr_007_6504

jr_007_6504:
    db $10
    ld [$3e08], sp
    ld a, $00
    ld b, b
    nop
    add b

jr_007_650d:
    db $10
    add b
    ld [hl], b
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
    ld hl, $3000
    nop
    db $10
    jr z, @+$1b

    nop
    nop
    ld [$0818], sp
    db $10
    jr nz, jr_007_6544

    jr nz, @+$10

    ld de, $0e01
    nop
    nop
    ld b, b
    nop
    jr nz, jr_007_6537

jr_007_6537:
    ld d, b
    ld h, b
    jr z, @+$72

    call z, $9e30
    ld h, h
    ld h, [hl]
    ld a, d
    ret nc

    inc a
    add b

jr_007_6544:
    ld c, b
    jr nz, @-$3e

    db $10
    ld h, b
    ld c, b
    ld [hl], b
    inc [hl]
    ld hl, sp-$40
    jr nc, jr_007_6550

jr_007_6550:
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld de, $1b08
    nop
    ld [$0110], sp
    ld [$080b], sp
    db $10
    ld bc, $2010
    jr @+$22

    ld c, $11
    ld bc, $000e
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    and b
    ret nz

    ld d, b
    ldh [$98], a
    ld h, b
    inc a
    ret z

    call z, $a0f4
    ld a, b
    nop
    sub b

jr_007_6587:
    ld h, b
    add b
    db $10
    ldh [$c8], a
    ldh a, [$b0]
    ld [hl], b
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
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

    jr nz, jr_007_6612

    nop
    ld de, $0828
    ld [$0008], sp
    ld [$0c10], sp
    db $10
    rlca
    ld [$0700], sp
    nop
    nop
    jr nz, jr_007_65b5

jr_007_65b5:
    stop
    jr z, jr_007_65e9

    inc d
    jr c, jr_007_6622

    jr @-$2f

    ld [hl-], a
    inc sp
    dec a
    ld l, b
    ld e, $80
    ld h, h
    jr nz, jr_007_6587

    db $10
    ld h, b
    db $10
    ld h, b
    ret z

    ldh a, [$34]
    ld hl, sp-$70
    ld [hl], b
    nop
    nop
    nop
    nop
    ld b, $02
    ld c, $05
    inc e
    inc bc
    dec h
    dec de
    ld d, d
    ccf

jr_007_65df:
    xor e
    ld [hl], $0d
    nop
    inc b
    nop
    nop
    nop
    nop
    nop

jr_007_65e9:
    nop
    ld bc, $0003
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1000], sp
    adc b
    jr z, @+$1e

    ld c, b
    ld a, $14
    ld a, [$4a84]
    add d
    inc b
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    xor h
    ld h, d
    cp b
    inc b
    nop
    jr jr_007_6610

jr_007_6610:
    nop
    nop

jr_007_6612:
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0207
    ld c, $01
    ld [de], a
    dec c
    add hl, hl
    rra
    ld d, l

jr_007_6622:
    dec de
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc b
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1480], sp
    call z, $9ea4
    jr z, jr_007_65df

    adc h
    ld a, d
    jp nz, Jump_007_4424

    ld [bc], a
    inc b
    ld [bc], a
    ld c, h
    jp nz, Jump_000_0438

    nop
    jr jr_007_6650

jr_007_6650:
    nop
    nop
    nop
    ld b, $02
    ld c, $05
    inc e
    inc bc
    dec h
    dec de
    ld d, d
    ccf
    xor e
    ld [hl], $0d
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
    ld bc, $0100
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    add b
    ld [$3604], sp
    ld c, $44
    cp [hl]
    ld [$8afe], sp
    ld c, h
    add h
    ld [bc], a
    inc b
    ld [bc], a
    inc c
    ld [bc], a
    ld a, b
    call nz, Call_000_1880
    nop
    add b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, e
    nop
    ld b, b
    nop
    ld h, e
    nop
    ld h, b
    nop
    ld sp, $3310
    jr nc, jr_007_66b7

    ld de, $2020
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    dec de
    dec sp
    inc d
    dec e
    nop
    nop
    add b
    nop
    ldh [rP1], a

jr_007_66b7:
    jr nc, jr_007_66f9

    ld [c], a
    jr c, @-$02

    ld a, [hl]
    ld c, [hl]
    rst $08
    pop hl
    ld h, c
    ld e, b

Jump_007_66c2:
    ret c

    ret nz

    call nz, $e0c0
    ldh [$f0], a
    ld a, b
    ld [hl], b
    jr nz, jr_007_66fd

    ret c

    ret nc

    and b
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $4000
    nop
    ld b, [hl]
    nop
    ld h, e
    nop
    ld h, c
    nop
    ld [hl], $11
    ld sp, $1230
    ld de, $2127
    ld h, c
    ld h, c
    ld h, b
    ld h, b
    jr nc, jr_007_675d

    dec sp
    dec sp
    inc c
    dec e
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop

jr_007_66f9:
    ld h, b
    add b
    ret nc

    ld h, b

jr_007_66fd:
    db $e4
    ldh a, [$b8]
    cp h
    call c, $a2de
    and d
    ret c

    call c, $e0c0
    ldh [$f0], a
    ld a, b
    ld [hl], b
    and b
    or b
    sbc b
    ret nc

    nop
    nop
    nop
    nop
    ld bc, $1000
    nop
    stop
    inc sp
    nop
    jr nc, jr_007_671f

jr_007_671f:
    ld h, e
    ld b, b
    ld h, b
    ld h, b
    ld b, e
    ld b, b
    add c
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    pop hl
    pop hl
    ld l, $6e
    dec h
    cpl
    nop
    nop
    nop
    nop
    add b
    nop
    ld a, [c]
    nop
    inc h
    ld e, [hl]
    cp $3f
    reti


    ld e, c
    ld b, b
    ret nz

    ldh [$60], a
    ld d, b
    ret nc

    ret nc

    ret nc

    ret z

    db $ec
    ret nz

    ldh [$f0], a
    ldh [$80], a
    ret nz

    ld h, b
    ld b, b
    nop
    nop
    ld [bc], a
    ld b, $14
    inc c
    inc c
    inc c
    dec c
    dec e
    add hl, hl
    add hl, de

jr_007_675d:
    ld a, d
    ld a, [de]
    ld e, a
    cpl
    jp c, $9505

    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    inc d
    nop
    inc d
    inc a
    ld a, [hl-]
    ld a, d
    db $f4
    or $e6
    and $c4
    ld b, [hl]
    add h
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $ce
    adc $b8
    cp h
    jr jr_007_67a9

    nop
    nop
    nop
    nop
    nop
    ld bc, $0305
    inc bc
    inc bc
    dec bc
    rlca
    ld d, $0e
    dec a
    dec c
    ld l, a
    rla
    ld c, l
    ld [bc], a
    ld a, [de]
    nop
    ld [de], a
    nop

jr_007_67a9:
    nop
    nop
    inc bc
    inc bc
    rrca
    ld bc, $003c
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    ld e, [hl]
    sbc h
    cp h
    ld a, b
    ld a, d
    or $f6
    ld h, h

jr_007_67c4:
    and $c4
    inc b
    ld b, d
    ld [bc], a
    ld b, $06
    adc h
    adc [hl]
    ld a, h
    ld a, h
    jr nc, @+$3a

    nop
    nop
    inc b
    inc c
    jr z, @+$1a

    jr jr_007_67f1

    inc c
    inc e
    inc l
    inc e
    add hl, sp
    add hl, bc
    cpl
    rla
    ld l, l
    ld [bc], a
    ld c, d
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    rrca
    ld bc, $0303

jr_007_67f1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_681a

jr_007_67fa:
    jr nz, jr_007_67c4

    ret nz

    ld a, [bc]
    jr c, jr_007_67fa

    cp $7c
    db $fc
    jp z, $840a

    ld b, $06
    ld b, $04
    ld b, $00
    nop

jr_007_680d:
    ld c, $0e
    cp b
    cp h
    ld l, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_681a:
    nop
    nop
    nop
    jr nz, jr_007_681f

jr_007_681f:
    ld h, b
    nop
    ld b, c
    and b
    ret nz

    nop
    ld bc, $8080
    add b
    add b
    ld bc, $8361
    ld a, [hl-]
    ld b, l
    inc b
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_007_683b

jr_007_683b:
    ld d, b
    ld h, b
    jr z, jr_007_68af

    call z, $9e30
    ld h, h
    ld h, [hl]
    ld a, d
    ret nc

    inc a
    nop
    ret z

jr_007_6849:
    ld b, b
    add b
    jr nz, jr_007_680d

    ret nc

    ldh [rP1], a
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
    jr nz, jr_007_685d

jr_007_685d:
    jr nc, jr_007_685f

jr_007_685f:
    ld de, $1828
    nop
    nop
    ld [$0819], sp
    db $10
    jr nz, jr_007_687a

    jr nz, jr_007_6884

    ld hl, $120d
    ld [bc], a
    dec c
    nop
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_007_6879

jr_007_6879:
    ld d, b

jr_007_687a:
    ld h, b
    jr z, jr_007_68ed

    call z, $9e30
    ld h, h
    ld h, [hl]
    ld a, d
    ret nc

jr_007_6884:
    inc a
    add b
    ld c, b
    jr nz, jr_007_6849

    sub b
    ldh [rBCPS], a
    ldh a, [$88]
    ld h, b
    nop
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
    stop
    ld de, $1b08
    nop
    ld [$0110], sp
    ld [$080b], sp
    db $10
    ld bc, $2010
    jr @+$22

    ld c, $11

jr_007_68af:
    ld bc, $000e
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    and b
    ret nz

    ld d, b
    ldh [$98], a
    ld h, b
    inc a
    ret z

    call z, $a0f4
    ld a, b
    nop
    sub b
    ld h, b
    add b
    db $10
    ldh [$c8], a
    ldh a, [$b0]
    ld [hl], b
    nop
    ldh [rP1], a
    nop
    nop
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
    ld b, c
    ld h, b
    sbc b
    pop bc
    pop bc
    call z, Call_007_6b4f
    sub [hl]
    ld de, $006f
    nop
    nop
    nop

jr_007_68ed:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    add b
    sbc $e0
    rst $08
    ld [hl], $77
    ld sp, hl
    ret nc

    ld a, $08
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    jr jr_007_6922

jr_007_6922:
    jr z, jr_007_6924

jr_007_6924:
    ld sp, $2000
    jr nz, jr_007_6959

    nop
    jr nc, jr_007_692c

jr_007_692c:
    jr z, jr_007_692e

jr_007_692e:
    rla
    nop
    rrca
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_007_6978

    ld d, b
    nop
    ld c, b
    nop
    add h
    nop
    add d
    ld b, d
    ld b, d
    db $10
    or h
    nop
    ld c, b
    nop
    and b
    nop
    ld d, b
    ld b, b
    ld c, b
    nop
    adc h
    nop
    stop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6959:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_007_6978:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $d3ff


    rst $38
    sub e
    rst $38
    sub e
    rst $38
    sbc a
    rst $28
    rst $18
    rst $38
    db $e3
    db $fd
    di
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    db $fd
    sub e
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    and l
    rst $38
    and l
    rst $38
    and l
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $30
    rst $08
    rst $38
    rst $00
    cp a
    rst $00
    rst $38
    and a
    ei
    and a
    rst $38
    add e
    rst $38
    and e
    rst $38
    or e
    rst $38
    or e
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $28
    pop de
    rst $38
    reti


    rst $38
    reti


    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    reti


    rst $38
    reti


    rst $28
    pop de
    ei
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    reti


    rst $38
    reti


    rst $38
    rst $18
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    jp $d3ff


    rst $38
    db $d3
    rst $38
    rst $18
    rst $38
    reti


    rst $38
    reti


    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    db $db
    cp l
    db $db
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    cp l
    db $db
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $93fd


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $93fd


    rst $38
    sbc c
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    jp $f3ff


    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    sbc c
    rst $38
    sub e
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $d3ff


    rst $38
    db $d3
    rst $38
    sub e
    rst $38
    add c
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add e
    rst $38
    sub e
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    sbc c
    rst $38
    sub e
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    di
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add e
    rst $38
    sub e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sub e
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    ret


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    ld sp, hl
    db $fd
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    ei
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    db $e3
    cp l
    db $d3
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    cp a
    db $d3
    rst $38
    jp $d3bf


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    cp l
    db $d3

Call_007_6b4f:
    rst $18
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $93fd


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sub c
    rst $38
    pop bc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    inc de
    rra
    ld e, $0f
    inc c
    ld bc, $000e
    rra
    ld a, h
    ld a, a
    db $fd
    cp $fa
    db $fd
    or a
    or b
    add e
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

    ret nz

    ldh [$e0], a
    ldh a, [rSVBK]
    ld h, b
    jr nz, jr_007_6c28

    nop
    rst $08
    nop
    rra
    db $10
    ld [hl], $b0
    jr nz, @-$1e

    nop
    ret nz

    ret nz

    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    rrca
    rrca
    rra
    inc de
    rra
    ld e, $0f
    inc c
    ld bc, $000e
    rra
    inc e
    rra
    dec e
    ld e, $3d
    ld a, $3f
    inc a
    ld a, a
    ld a, c
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [rSVBK]
    ld h, b
    jr nz, jr_007_6c68

    nop
    rst $08
    nop
    rra
    db $10
    ld [hl], $b0
    jr nz, @-$1e

    nop
    ret nz

    add b
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    inc de
    rra
    ld e, $0f
    inc c
    ld bc, $000e
    rra
    inc e

jr_007_6c28:
    rra
    dec e
    ld e, $1c
    rra
    ccf
    inc a
    ccf
    ld a, $00
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [rSVBK]
    ld h, [hl]
    jr nz, jr_007_6cb1

    nop
    rst $18
    db $10
    ld [hl], $30
    ld h, b
    ldh [rP1], a
    ret nz

    add b
    ld b, b
    ldh [rP1], a
    ld hl, sp+$78
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    inc b
    inc b
    rrca
    ld c, $1f
    inc e
    inc e
    jr jr_007_6ce3

    ld a, h
    ld e, a
    ld e, [hl]
    rra

jr_007_6c68:
    dec de
    rrca
    dec bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ld h, d
    ld h, d
    ld [hl-], a
    ld [hl-], a
    add [hl]
    ld a, [de]
    add [hl]
    ld a, [hl-]
    sub [hl]
    ld l, b
    ld c, $f0
    inc [hl]
    ld hl, sp+$38
    ld hl, sp+$3c
    ld a, h
    inc a
    inc a
    jr c, jr_007_6cc9

    ld e, $1e
    nop
    nop
    ld bc, $0100
    nop
    nop

jr_007_6c9a:
    nop
    inc b
    inc b
    rrca
    ld c, $1f
    inc e
    ld e, h
    ld e, b
    ld a, a
    ld a, h
    rra
    ld e, $1f
    dec de
    rrca
    dec bc
    ld b, $06
    nop
    nop
    nop
    nop

jr_007_6cb1:
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ld h, b
    ld h, b
    ld [hl-], a
    ld [hl-], a
    add d
    ld a, [de]
    add [hl]
    ld a, [hl-]
    sbc [hl]
    ld h, d
    ld b, $f8
    ld a, $fc

jr_007_6cc9:
    ld a, $fe
    ld a, $7e
    ld c, $0e
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld bc, $0400
    inc b
    rrca
    ld c, $1f
    inc e
    ld a, h
    ld a, b

jr_007_6ce3:
    ccf
    inc a
    rra
    ld e, $1f
    dec de
    rrca
    dec bc
    ld b, $06
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
    ret nz

    nop
    add d
    ld [bc], a
    jp nz, Jump_007_66c2

    ld h, d
    and [hl]
    ld a, [hl-]
    adc [hl]
    jr nc, jr_007_6c9a

    ld l, b
    ld b, $fa
    ld a, $fe
    ld a, $fe
    ld a, $7e
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    inc de
    rra
    ld e, $0f
    inc c
    ld bc, $000e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    ccf
    inc a
    ccf
    ld a, $00
    nop
    nop
    nop
    add b
    add b
    sbc b
    add b
    db $fc
    ret nz

    db $fc
    ldh [$f8], a
    ld [hl], b
    ld h, b
    jr nz, jr_007_6da2

    nop
    ret nz

    nop
    nop
    ret nz

    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    ld hl, sp+$78
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    rrca
    rrca
    rra
    inc de
    rra
    ld e, $0f
    inc c
    ld bc, $000e
    rra
    inc e
    rra
    dec e
    ld e, $3d
    ld a, $3f
    inc a
    ld a, a
    ld a, c
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    db $ec
    ldh [$fe], a
    ld [hl], b
    ld a, [hl]
    jr nz, jr_007_6dee

    nop
    ret nz

    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    rrca
    rlca

jr_007_6da2:
    ld b, $00
    rlca
    nop
    rrca
    ld a, h
    ld a, a
    ei
    db $fc
    ld hl, sp-$01
    or e
    or b
    add c
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$48
    or b
    db $10
    or b
    nop
    ldh [rP1], a
    nop
    add b
    nop
    add b
    ld h, $e0
    ccf
    ldh a, [$ef]
    nop
    cp $78
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_007_6dd9

jr_007_6dd9:
    inc a
    nop
    inc a
    inc b
    rra
    ld c, $1f
    inc e
    ld a, h
    ld a, b
    ccf
    inc a
    rra
    ld e, $1f
    dec de
    rrca
    dec bc
    ld b, $06
    nop

jr_007_6dee:
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $0a
    sub [hl]
    ld l, d
    sub [hl]
    ld l, b
    sub [hl]
    ld l, b
    ld c, $f0
    inc [hl]
    ld hl, sp+$38
    ld hl, sp+$3c
    ld a, h
    inc a
    inc a
    jr c, jr_007_6e49

    ld e, $1e
    nop
    nop
    ld b, $00
    rrca
    nop
    rrca
    nop
    ld b, $04
    rrca
    ld c, $1f
    inc e
    ld e, h
    ld e, b
    ld a, a
    ld a, h
    rra
    ld e, $1f
    dec de
    rrca
    dec bc
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
    ld [bc], a
    ld [bc], a
    add d
    ld a, [hl-]
    add [hl]
    ld a, d
    sbc [hl]
    ld h, d
    ld b, $f8
    ld a, $fc

jr_007_6e49:
    ld a, $fe
    ld a, $7e
    ld c, $0e
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
    inc b
    inc b
    rrca
    ld c, $1f
    inc e
    inc e
    jr jr_007_6ee1

    ld a, h
    ld e, a
    ld e, [hl]
    rra
    dec de
    rrca
    dec bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld e, $00
    ld e, $00
    ld c, $02
    ld a, [bc]
    ld a, [bc]
    sbc [hl]
    ld a, [de]
    add [hl]
    ld a, [de]
    add [hl]
    ld a, b
    ld d, $e8
    inc d
    add sp, $20
    ld hl, sp+$38
    ld a, b
    inc a
    inc a
    inc a
    inc a
    jr c, jr_007_6ec9

    ld e, $1e
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    rrca
    rlca
    ld b, $00
    rlca
    nop
    rrca
    ld a, [hl]
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$01
    or e
    or b
    add c
    add b
    nop
    nop
    nop
    nop
    or b
    add b
    ld hl, sp-$80
    ld hl, sp-$20
    ldh a, [$f0]
    ld hl, sp-$48
    or b
    db $10
    or b
    nop
    ldh [rP1], a
    ld [bc], a
    ret nz

    ld b, $f8

jr_007_6ec9:
    nop
    ld hl, sp+$00
    ret nz

    ldh [rP1], a
    ld hl, sp+$78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    inc b
    rlca
    rlca

jr_007_6ee1:
    inc bc
    inc bc
    nop
    inc bc
    nop
    rlca
    ld c, $0f
    ld e, $1f
    inc a
    ccf
    ccf
    inc a
    ld a, a
    ld a, c
    nop
    nop
    nop
    nop
    ld [hl], b
    ld h, b
    ld a, b
    ld b, b
    ld hl, sp-$10
    ld hl, sp-$08
    db $fc
    call c, $88d8
    ret c

    nop
    ld [hl], b
    add b

jr_007_6f05:
    ld [bc], a
    ldh [rTMA], a
    ld hl, sp+$00
    ld hl, sp+$00
    ret nz

    add b
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0300
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    ld e, $1f
    rra
    rra
    nop

jr_007_6f32:
    nop
    nop
    nop
    jr nc, @+$12

    ld a, b
    jr nc, jr_007_6f32

    ld hl, sp-$04
    db $fc
    cp $6e
    db $ec
    call nz, $80ec
    jr c, jr_007_6f05

    ld [bc], a
    ldh a, [rTMA]
    ld hl, sp+$00
    ld hl, sp+$70
    add b
    db $fc
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
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    rlca
    inc e
    rra
    ld a, a
    ld a, a
    db $fc
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
    db $10
    db $10
    ld hl, sp-$08
    db $fc
    db $fc
    cp $6e
    db $fc
    call nz, $80e4
    dec sp
    ret nz

    ld b, $f8
    nop
    nop

jr_007_6f8d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    rrca
    rlca
    ld b, $00
    rlca
    ld c, $0f
    ld e, $1f
    inc a
    ccf
    ld a, a
    ld a, h
    rst $38
    di
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$48
    ldh a, [rNR10]
    sub [hl]
    nop
    rst $28
    nop
    rra
    ldh a, [rPCM12]
    or b
    jr nz, jr_007_6f8d

    add b
    nop
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
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    inc b
    rlca
    rlca
    inc bc
    rlca
    db $fc
    rst $38
    ld a, a
    ld a, a
    ld a, $3f
    rra
    inc e
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ld b, b
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    call c, $88f8
    jp z, $7700

    add b
    rrca
    ldh a, [rTMA]
    ldh [$30], a
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
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    rlca
    inc a
    ccf
    rst $38
    rst $38
    ld a, [hl]
    ld a, a
    cp $f1
    nop
    nop
    nop
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
    ld b, b
    jr nz, jr_007_7061

    ld hl, sp-$08
    db $fc
    db $fc
    cp $6e
    db $fc
    call nz, $80e4
    dec sp
    ret nz

    inc bc
    db $fc
    ld c, $f0
    nop
    nop
    nop
    nop
    rlca
    nop
    inc b
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7061:
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    rlca
    nop
    rlca
    rra
    rra
    ld a, [hl]
    ld a, a
    cp $f9
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, jr_007_7079

jr_007_7079:
    ldh [rP1], a
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_007_70a1

    ld hl, sp-$08
    db $fc
    db $fc
    cp $6e
    db $fc
    call nz, $80e4
    dec sp
    ret nz

    inc bc
    db $fc
    ld c, $f0
    nop
    nop
    rst $38
    rst $38
    rst $38
    add hl, sp
    rst $38
    sub $ff
    sub $ff
    sub $ff
    sub $ff
    add hl, sp

jr_007_70a1:
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
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $fc
    call z, $b4fc
    db $fc
    or h
    db $fc
    or h
    db $fc
    or h
    db $fc
    call z, $f8f8
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ff
    or l
    rst $38
    or l
    rst $38
    or l
    rst $38
    or l
    rst $38
    adc $ff
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
    ret nz

    ret nz

    ldh [$60], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$60], a
    ret nz

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
    ld a, a
    ld a, a
    rst $38
    rst $28
    rst $38
    adc $ff
    xor $ff
    xor $ff
    xor $ff
    rst $00
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $00
    rst $38
    cp d
    rst $38
    ld a, [$c6ff]
    rst $38
    cp [hl]
    rst $38
    add e
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $30
    rst $38
    and $ff
    sub $ff
    or [hl]
    rst $38
    add d
    rst $38
    rst $30
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $00
    rst $38
    cp [hl]
    rst $38
    add [hl]
    rst $38
    cp d
    rst $38
    cp d
    rst $38
    rst $00
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $00
    rst $38
    cp d
    rst $38
    add $ff
    cp d
    rst $38
    cp d
    rst $38
    rst $00
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $08
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    add sp, -$69
    ldh [$9f], a
    rst $38
    add b
    rst $38
    add b
    add b
    rst $38
    db $fd
    add d
    pop hl
    sbc [hl]
    add sp, -$69
    pop hl
    sbc [hl]
    rst $38
    rst $38
    jr c, jr_007_720d

    ld a, a
    ld h, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], h
    ld c, e
    ld [hl], b
    ld c, a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld b, b
    ld a, a
    db $fd
    add d
    pop hl
    sbc [hl]
    add sp, -$69
    pop hl
    sbc [hl]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    adc [hl]
    adc [hl]
    ld a, a
    di
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rla
    jp hl


    rlca
    ld sp, hl
    rst $38
    ld bc, $01ff
    ld [bc], a
    cp $be
    ld b, d
    adc [hl]
    ld [hl], d

jr_007_720d:
    ld l, $d2
    adc [hl]
    ld [hl], d
    cp $fe
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $08
    ldh [$9f], a
    ldh [$9f], a
    add sp, -$69
    ldh [$9f], a
    rst $38
    add b
    rst $38
    cp $fe
    rst $38
    add c
    cp $fd
    add d
    pop hl
    sbc [hl]
    add sp, -$69
    pop hl
    sbc [hl]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $08
    add sp, -$69
    rst $38
    add b
    cp a
    cp $a1
    cp $bf
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    db $fc
    add e
    pop hl
    sbc [hl]
    add sp, -$69
    pop hl
    sbc [hl]
    rst $38
    rst $38
    pop af
    ldh a, [rIE]
    adc [hl]
    add c
    cp $bf
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    cp a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    db $fc
    add e
    pop hl
    sbc [hl]
    add sp, -$69
    pop hl
    sbc [hl]
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
    ld [bc], a
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    dec b
    dec bc
    nop
    rrca
    inc b
    dec bc
    dec bc
    inc c
    inc b
    rlca
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
    nop
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [rBCPS]
    sbc b
    db $10
    add sp, -$80
    ld hl, sp+$50
    add sp, $48
    ld hl, sp-$30
    ldh a, [$a0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
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
    ld bc, $0306
    rlca
    rlca
    rlca
    rlca
    dec b
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ret nz

    or b
    ld h, b
    ld d, b
    or b
    ldh a, [$f0]
    ld d, b
    ldh a, [$b0]
    ld h, b
    ldh [$c0], a
    ret nz

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
    nop
    ld bc, $0300
    ld bc, $0306
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ret nz

    or b
    ld h, b
    ld d, b
    or b
    ldh a, [$f0]
    ld d, b
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    nop
    nop
    nop
    nop
    nop

jr_007_7334:
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
    ld bc, $0306
    dec bc
    ld b, $06
    rrca
    rlca
    rrca
    rlca
    rrca
    dec bc
    rlca
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
    nop
    nop
    nop
    nop
    ldh [$80], a
    sub b
    ld h, b
    ld l, b
    ldh a, [$f0]
    ld hl, sp+$70
    ld hl, sp-$50
    ld hl, sp+$78
    or b
    or b
    ld h, b
    ld h, b
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
    ld bc, $0601
    rlca
    dec bc
    inc c
    rla
    jr jr_007_73a5

    ld d, $15
    rra
    rrca
    dec bc
    dec b
    ld b, $03
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
    inc c
    inc c
    ld a, h
    ld [hl], h
    cp b
    ret z

    add sp, $18
    ret z

    jr c, jr_007_7334

    ld [hl], b

jr_007_73a5:
    db $10
    ldh a, [$a0]
    ld h, b
    and b
    ld h, b
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0306
    ld e, $05
    add hl, sp
    ld e, $2a
    inc e
    ld [de], a
    inc c
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
    jr nc, jr_007_73db

jr_007_73db:
    ld l, b
    jr nc, @-$16

    ld d, b
    sub b
    ldh [$a0], a
    ld b, b
    ld b, b
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
    nop
    nop
    nop
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
    inc bc
    dec b
    ld b, $07
    rlca
    ld b, $07
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
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
    nop
    ldh a, [$f0]
    xor b
    ld a, b
    ld hl, sp-$18
    ld a, b
    add sp, -$08
    add sp, -$48
    ld l, b
    ld hl, sp-$18
    ld hl, sp-$18
    ld [$f0f8], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    ld bc, $1f07
    rra
    ld [hl+], a
    dec [hl]
    ld a, [de]
    inc l
    ld [de], a
    jr c, jr_007_7453

    nop
    nop
    nop
    nop

jr_007_7453:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    or b
    ld h, b
    ld hl, sp+$50
    ld [hl], h
    ret c

    cp h
    ld l, b
    ld hl, sp-$10
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
    dec b
    ld [bc], a
    add hl, bc
    ld b, $11
    ld c, $02
    dec e
    rlca
    dec de
    dec d
    dec bc
    ld a, [bc]
    dec b

jr_007_748b:
    rlca
    nop
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
    nop
    nop
    nop
    nop
    nop
    jr c, jr_007_749f

jr_007_749f:
    ld hl, sp+$30
    ld [hl], b
    ldh [$f8], a
    ret nz

    ld hl, sp-$50
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    ld d, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
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
    db $76
    jr jr_007_7524

    inc a
    ld h, d
    inc a
    ld h, [hl]
    jr jr_007_7504

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    db $db
    inc a
    cp l
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp l
    ld a, [hl]
    db $db
    inc a
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop

jr_007_74ef:
    nop
    nop
    nop
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
    inc h
    jr jr_007_74ef

    jr jr_007_748b

    ld a, [hl]
    rst $38

jr_007_7504:
    ld a, [hl]
    rst $28
    jr jr_007_7534

    jr jr_007_7546

    nop
    nop
    nop
    nop

jr_007_750e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7518:
    nop
    nop
    nop
    ld a, a
    nop
    add c
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    db $eb

jr_007_7524:
    inc e
    or a

jr_007_7526:
    ld a, [hl]
    or a
    ld a, [hl]
    add c
    ld a, [hl]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7534:
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    inc b
    inc c
    dec c
    dec bc
    inc bc
    inc b
    rlca

jr_007_7542:
    inc b
    rlca

jr_007_7544:
    inc b
    inc bc

jr_007_7546:
    inc b
    dec c
    dec bc
    inc b
    inc c
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
    ld [$2008], sp
    jr nc, jr_007_750e

    ret nc

    ret nz

    jr nz, jr_007_7542

    jr nz, jr_007_7544

    jr nz, jr_007_7526

    jr nz, jr_007_7518

    ret nc

    jr nz, jr_007_759b

    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    jr c, jr_007_757e

jr_007_757e:
    jr z, jr_007_7580

jr_007_7580:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    nop
    jr c, jr_007_758e

jr_007_758e:
    jr z, jr_007_7590

jr_007_7590:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$3e00], sp

jr_007_759b:
    nop
    inc e
    nop
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
    ld [$3e00], sp
    nop
    inc e
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_75d7

    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_007_75eb

    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    inc b
    inc b

jr_007_75d7:
    rra
    rra
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
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
    inc b

jr_007_75eb:
    rra
    rra
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    inc hl
    inc hl
    ld h, h
    ld h, h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld [hl], e
    ld [hl], e
    nop
    nop
    adc [hl]
    adc [hl]
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    adc [hl]
    adc [hl]
    nop
    nop
    ld a, [$c200]

jr_007_7616:
    cp $0a
    jr c, jr_007_761e

    sub $0a
    jr jr_007_7616

jr_007_761e:
    ld hl, $4203
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $40
    call Call_000_07e6
    call Call_000_0389
    ld c, $01

jr_007_7631:
    xor a
    ldh [$bc], a
    ld de, $c494
    ld b, $40

jr_007_7639:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_7639

    ld a, c
    ldh [$bc], a
    call Call_000_0389
    inc c
    ld a, c
    cp $0f
    jr c, jr_007_7631

    ret


    nop
    nop
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
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    ld c, h
    inc sp

jr_007_7666:
    ld a, a
    nop
    ccf
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
    jr nz, jr_007_7666

    ld d, b
    add sp, $70
    ret nz

    ld d, b
    add sp, $20
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$64

jr_007_7685:
    sbc b
    db $fc
    nop
    ld hl, sp+$60
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0207
    rrca
    inc bc
    ld e, $02
    ccf
    ld bc, $007f
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    add b
    nop
    add b
    ld b, b
    nop
    add b
    add b
    add b
    nop
    ret nz

    nop
    ldh a, [$08]
    ldh a, [$f8]
    nop
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
    rra
    ld b, $39
    cpl
    db $10
    ccf
    ld [bc], a
    inc e
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$141c], sp
    ld a, d
    inc e
    ldh a, [rNR14]
    ld a, [$fc08]
    nop
    ld hl, sp+$00
    db $fc
    ld [hl-], a
    call z, $807e
    db $fc
    jr nc, jr_007_7685

    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [$0d0a], sp
    rlca
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
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
    inc c
    nop
    ld b, $18
    ld b, [hl]
    ld hl, sp-$72
    ld a, [c]
    ld c, $f2
    ld b, $f8
    ld b, $f8
    ld b, $f8
    ld c, $f2
    ld c, $f2
    ld b, $78
    ld b, $18
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
    nop
    nop
    nop
    nop
    nop
    dec b
    rlca
    ld [$0d0a], sp
    rlca
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
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

jr_007_7772:
    inc c
    nop

jr_007_7774:
    ld b, $18
    ld b, $18
    ld b, $38

jr_007_777a:
    ld b, [hl]
    ld hl, sp-$7a
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$0c
    jr nc, jr_007_778d

jr_007_778d:
    nop
    nop
    inc d
    inc e
    ld [hl+], a
    ld a, [hl+]
    scf
    inc e
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca

jr_007_779c:
    nop
    rrca

jr_007_779e:
    nop
    rlca
    nop
    inc bc
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
    ld h, b
    nop
    jr nc, jr_007_7772

    jr nc, jr_007_7774

    ld [hl], b
    sub b
    ld [hl], b
    sub b
    jr nc, jr_007_777a

    jr jr_007_779c

    jr jr_007_779e

    jr c, @-$36

    inc a
    call nz, $e01c
    inc c
    ldh a, [rNR23]
    jr nz, jr_007_77c9

jr_007_77c9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec bc
    inc bc
    rlca
    dec b
    rlca
    ld b, $07
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sub b
    jr nz, jr_007_7805

    add b
    ld d, b
    jr nz, jr_007_77f9

jr_007_77f9:
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR14]
    ldh a, [$f8]
    add sp, -$08
    ret c

jr_007_7805:
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0303
    inc bc
    dec de
    ld bc, $0f07
    rrca
    rra
    rra
    ccf
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
    ld [hl], b
    add b
    ld c, b
    sub b
    adc b
    ret nz

    jr z, jr_007_784c

    nop
    add b
    ldh a, [$80]
    ld hl, sp-$02
    db $e4
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop

jr_007_784c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $1f1f
    rra
    ccf
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
    inc e
    jr nz, jr_007_788b

    inc h
    ld [hl+], a
    jr nc, jr_007_78c7

    ld b, h
    ret nz

    ldh [$fc], a
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$20
    cp $fc
    db $fc
    nop

jr_007_788b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    jr nz, jr_007_78ac

    inc h
    nop
    jr nc, jr_007_78a4

    ld [$0038], sp
    nop
    nop
    nop
    nop
    nop

jr_007_78a4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_78ac:
    nop
    nop
    nop
    nop
    ld b, $46
    ld e, $3e
    ld l, [hl]
    ld a, [hl]
    db $76
    ld a, $7e
    ld a, $7e
    ld a, $6e
    cp $de
    cp $3e
    ld a, [hl]
    ld c, $8e
    ld [bc], a
    ld [bc], a
    nop

jr_007_78c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$0905], sp
    nop
    inc c
    ld [bc], a
    ld [bc], a
    ld c, $fe
    cp $6e
    ld a, [hl]
    ld c, $1e
    ld c, $2e
    ld b, $26
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$18

    ld [hl], $2e
    ld a, $6e
    ld a, $7e
    ld a, $7e
    ld a, $7e
    cp $00
    nop
    inc bc
    nop
    inc b
    ld [bc], a
    inc b
    nop
    ld b, $01
    ld bc, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ld [hl+], a
    add [hl]
    xor d
    ld c, $3a
    ld e, $3e
    ld a, [hl]
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld d, $1e
    ld b, $0e
    ld b, $0e
    ld b, $0e
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
    nop
    rrca
    ld de, $1f0e
    nop
    rrca
    ld bc, $0000
    nop
    nop
    ld [$143c], sp
    ld a, d
    inc e
    ld [hl], b
    inc d
    ld a, d
    ld [$047c], sp
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0dfe
    ld a, [c]
    sbc [hl]
    ld h, b
    cp $08
    ldh a, [$90]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7998:
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    inc hl
    inc e
    ccf
    nop
    rra
    inc bc

jr_007_79aa:
    nop
    nop
    nop
    nop

jr_007_79ae:
    nop
    nop
    nop
    nop
    db $10
    ld a, b
    jr z, jr_007_79aa

    jr c, jr_007_7998

    jr z, jr_007_79ae

    db $10
    ld hl, sp+$08
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $32
    call z, Call_000_00fe
    db $fc
    jr nc, jr_007_79cb

jr_007_79cb:
    nop
    nop
    nop
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
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    ld b, b
    ccf
    ld a, a
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
    ld b, b
    ldh [$a0], a
    ret nc

    ldh [$80], a
    and b
    ret nc

    ld b, b
    ldh [rNR41], a
    ldh [rP1], a
    ld hl, sp+$04
    ld hl, sp-$04
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $13
    inc bc
    ld bc, $130d
    ld e, $1f
    nop
    ccf
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7a56:
    nop
    ld bc, $0200
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    stop
    jr nz, jr_007_7a65

jr_007_7a65:
    ld b, b
    nop
    ld b, b
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
    jr nz, jr_007_7a56

    ld c, b
    ld c, b
    ld c, b
    ld b, b
    ld c, b
    ld c, b
    jr nz, jr_007_7a9e

    nop
    stop
    stop
    ld [$0400], sp
    nop
    inc b
    nop
    ld hl, sp+$00
    nop
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
    inc bc
    inc a

jr_007_7a9e:
    ld bc, $001e
    rrca
    nop
    rlca
    nop
    inc bc
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
    add b
    nop
    ret nz

    nop
    ldh [$80], a

jr_007_7ab9:
    ld [hl], b
    ret nz

    jr c, jr_007_7ab9

    inc a
    ld hl, sp+$78
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

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
    nop
    nop
    ld bc, $0300
    nop
    rlca
    ld bc, $030e
    inc e
    inc bc
    inc a
    ld bc, $001e
    rrca
    nop
    rlca
    nop
    inc bc
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
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [rSVBK]
    ld hl, sp+$38
    db $fc
    inc a
    ld hl, sp+$78
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

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
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    ld c, $1f
    inc e
    inc bc
    inc a
    ld bc, $001e
    rrca
    nop
    rlca
    nop
    inc bc
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    inc a
    ld hl, sp+$78
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

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
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_007_7c09:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
