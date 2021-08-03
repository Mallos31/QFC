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


    db $d3, $4f, $13, $65, $d3, $60, $93, $5c, $53, $58, $13, $54, $4c, $76, $93, $4b
    db $53, $47

    inc de
    ld b, e

    db $00, $00, $9f, $53, $80, $79, $df, $30, $00, $00, $ff, $5b, $0a, $03, $e4, $01
    db $ff, $7f, $9f, $5f, $f9, $01, $00, $00, $00, $00, $ff, $73, $1c, $51, $af, $28
    db $e0, $7e, $f9, $7f, $e0, $7f, $00, $00, $00, $00, $a0, $51, $20, $7f, $f4, $7f
    db $00, $00, $a0, $19, $e0, $36, $f4, $67, $00, $00, $9f, $00, $df, $11, $ff, $3f
    db $00, $00, $9f, $00, $df, $11, $ff, $3f, $00, $00, $40, $29, $80, $52, $f4, $7f
    db $00, $00, $5c, $01, $bc, $12, $ff, $5f, $00, $00, $a0, $7c, $80, $7e, $ff, $7f
    db $00, $00, $b4, $7c, $9f, $7e, $df, $7f, $00, $00, $7f, $01, $3f, $03, $ff, $7f
    db $00, $00, $07, $7c, $ef, $7e, $dc, $7f, $00, $00, $80, $7d, $e0, $7e, $ff, $73
    db $57, $42, $5f, $42, $67, $42, $6f, $42, $77, $42, $7f, $42, $87, $42, $8f, $42
    db $00, $00, $ff, $73, $1c, $51, $af, $28, $00, $00, $ff, $73, $5f, $2a, $50, $11
    db $00, $00, $ff, $2b, $f9, $01, $90, $00, $00, $00, $ff, $7f, $d6, $5a, $ad, $35
    db $00, $00, $ff, $7f, $d6, $5a, $ad, $35, $00, $00, $ff, $7f, $2f, $7f, $e0, $79
    db $00, $00, $ff, $7f, $1e, $2a, $54, $09

    nop
    nop
    sbc $53
    ld e, a
    ld a, [hl+]
    ld d, b
    db $11

    db $00, $00, $ff, $63, $5f, $2a, $50, $11, $00, $00, $ff, $7f, $1e, $2a, $54, $09

    nop
    nop
    rst $38
    ld a, a
    rst $18
    ld a, [hl+]
    ld e, a
    add hl, hl

    db $a7, $42, $af, $42, $b7, $42, $bf, $42, $c7, $42, $cf, $42, $d7, $42, $ef, $42
    db $e7, $42

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    INCBIN "gfx/image_007_4753.2bpp"

    INCBIN "gfx/image_007_4b53.2bpp"

    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03, $07, $07, $0f, $0f
    db $3f, $00, $1f, $20, $07, $18, $1c, $1f, $0f, $30, $7f, $00, $ff, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $80, $00, $80, $c0, $c0, $00, $a0, $00, $98
    db $80, $7e, $c0, $3e, $c4, $20, $7c, $90, $e8, $18, $c0, $20, $80, $78, $00, $00
    db $00, $00, $00, $01, $01, $01, $03, $03, $07, $07, $0f, $0f, $0f, $08, $3f, $00
    db $0f, $30, $1c, $1f, $0f, $10, $3f, $00, $3f, $00, $7e, $01, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $80, $c0, $c0, $00, $a0, $00, $9e, $84, $7a, $c4, $38
    db $d8, $30, $68, $98, $e0, $00, $e0, $18, $c0, $20, $00, $80, $00, $00, $00, $00
    db $00, $00, $00, $01, $00, $01, $00, $03, $00, $03, $00, $05, $08, $09, $09, $3e
    db $1f, $1e, $0f, $0e, $07, $06, $03, $02, $01, $00, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $80, $c0, $00, $60, $a2, $40, $ea, $3c, $c2, $fe, $00, $de, $20
    db $de, $20, $de, $20, $fe, $20, $be, $60, $ae, $70, $0e, $80, $02, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $02, $04, $04, $04, $1f
    db $0f, $0f, $07, $07, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $c0, $30, $c0, $18, $ca, $10, $da, $18, $e6, $7c, $82, $ee, $10
    db $ee, $10, $ee, $10, $fe, $10, $de, $30, $d6, $38, $86, $48, $06, $00, $02, $00
    db $00, $00, $00, $06, $03, $04, $00, $07, $00, $07, $00, $0b, $11, $12, $13, $3c
    db $3f, $7c, $1f, $1c, $0f, $0c, $07, $06, $01, $00, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $c0, $50, $80, $d0, $70, $88, $f8, $00, $b8, $44
    db $b8, $44, $bc, $40, $fc, $40, $fc, $40, $5c, $e0, $1c, $80, $04, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $01, $03, $03, $07, $07, $0f, $0f, $0f, $0f
    db $1f, $1f, $1f, $1f, $3f, $3f, $3f, $3f, $00, $3f, $01, $3f, $0e, $0f, $00, $00
    db $00, $00, $00, $00, $80, $c0, $80, $c0, $e0, $e0, $80, $d0, $80, $cc, $80, $ff
    db $02, $fd, $9e, $f8, $04, $fc, $e0, $20, $7c, $8c, $fe, $fe, $02, $f2, $00, $00
    db $00, $00, $01, $01, $03, $03, $07, $07, $0f, $0f, $1f, $1f, $1f, $1f, $3e, $3f
    db $3f, $3f, $3e, $3f, $07, $3e, $01, $3e, $70, $7f, $ff, $ff, $03, $f3, $00, $00
    db $00, $00, $00, $80, $00, $80, $c0, $c0, $00, $a0, $00, $98, $02, $fe, $0f, $ff
    db $7d, $9d, $d8, $38, $a0, $60, $00, $e0, $30, $f0, $f0, $fc, $c0, $f8, $00, $00
    db $00, $00, $02, $03, $06, $07, $07, $07, $0f, $0f, $1f, $1f, $1f, $1f, $3e, $3f
    db $3f, $3e, $3f, $3e, $07, $3e, $40, $ff, $70, $ff, $7f, $ff, $03, $c3, $00, $00
    db $00, $00, $38, $38, $70, $70, $60, $60, $60, $e0, $70, $b8, $c0, $3e, $84, $7a
    db $bc, $70, $08, $f8, $e0, $e0, $00, $e0, $30, $f0, $f0, $fc, $c0, $f8, $00, $00
    db $00, $01, $00, $01, $00, $03, $00, $03, $00, $05, $08, $09, $08, $3f, $3f, $3f
    db $1f, $1f, $0f, $0f, $07, $07, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $80, $c6, $06, $6c, $ac, $4c, $ec, $4c, $e6, $1c, $f6, $1c, $e6, $54, $ee
    db $f4, $fe, $f2, $fe, $f2, $fe, $f2, $fe, $f0, $fc, $30, $3c, $00, $00, $00, $00
    db $01, $01, $03, $03, $01, $03, $01, $07, $00, $07, $00, $0b, $10, $13, $10, $7f
    db $7e, $7f, $3f, $3f, $1f, $1f, $0f, $0f, $07, $07, $01, $01, $00, $00, $00, $00
    db $80, $80, $00, $00, $80, $84, $c0, $c6, $cc, $ce, $ac, $7e, $c6, $3e, $66, $9e
    db $b6, $ce, $e6, $fe, $e4, $fc, $c4, $fc, $cc, $fe, $cc, $fe, $0c, $0e, $04, $06
    db $00, $00, $00, $03, $01, $02, $40, $47, $64, $67, $7c, $7f, $3e, $39, $03, $0c
    db $1e, $7f, $7f, $7f, $3f, $3f, $0f, $0f, $07, $07, $01, $01, $00, $00, $00, $00
    db $00, $00, $00, $00, $80, $04, $c0, $46, $8c, $ce, $ac, $fe, $26, $fe, $a6, $7e
    db $e6, $1e, $e6, $fe, $e4, $fc, $c4, $fc, $cc, $fc, $cc, $fc, $1c, $1e, $00, $1e
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03
    db $1f, $01, $1f, $00, $1f, $10, $6f, $1c, $fa, $07, $7f, $00, $3f, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $80, $c0, $e0, $e0, $80, $d0
    db $80, $cc, $c0, $3f, $e2, $1d, $ee, $18, $34, $cc, $e0, $00, $80, $70, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03, $07, $07
    db $1f, $00, $0f, $10, $13, $1c, $0e, $1f, $1f, $20, $7f, $00, $ff, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $40, $80, $c0, $e0, $e0, $80, $d0, $80, $cc
    db $c0, $3f, $e2, $1d, $ee, $18, $34, $cc, $e0, $10, $e0, $00, $c0, $38, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $01, $03, $03, $07, $07, $0f, $0f, $3f, $00
    db $1f, $20, $07, $18, $1c, $1f, $0f, $10, $1f, $00, $1f, $00, $3f, $00, $00, $00
    db $00, $00, $00, $00, $00, $80, $00, $80, $c0, $c0, $00, $a0, $00, $98, $80, $7e
    db $c4, $3a, $dc, $30, $68, $98, $e0, $00, $e0, $10, $f0, $00, $f0, $0c, $00, $00

    INCBIN "gfx/image_007_4f53.2bpp"

    INCBIN "gfx/image_007_7553.2bpp"

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


    INCBIN "gfx/image_007_764c.2bpp"

    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $07, $02, $0f, $03, $1e, $02, $3f
    db $01, $7f, $00, $7f, $00, $ff, $00, $ff, $80, $7f, $ff, $00, $7f, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $40, $80, $00, $80, $40
    db $00, $80, $80, $80, $00, $c0, $00, $f0, $08, $f0, $f8, $00, $f0, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $03, $00, $07, $00, $0f
    db $00, $1f, $00, $1f, $06, $39, $2f, $10, $3f, $02, $1c, $04, $00, $00, $00, $00
    db $00, $00, $00, $00, $08, $1c, $14, $7a, $1c, $f0, $14, $fa, $08, $fc, $00, $f8
    db $00, $fc, $32, $cc, $7e, $80, $fc, $30, $80, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05, $07, $08, $0a, $0d, $07, $0f, $00, $0f
    db $00, $07, $00, $03, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $0c, $00, $06, $18, $46, $f8, $8e, $f2, $0e, $f2, $06, $f8
    db $06, $f8, $06, $f8, $0e, $f2, $0e, $f2, $06, $78, $06, $18, $0c, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $07, $08
    db $0a, $0d, $07, $0f, $00, $0f, $00, $07, $00, $03, $00, $01, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $0c, $00, $06, $18, $06, $18, $06, $38, $46, $f8
    db $86, $f8, $06, $f8, $06, $f8, $06, $f8, $06, $f8, $06, $f8, $06, $f8, $0c, $30
    db $00, $00, $00, $14, $1c, $22, $2a, $37, $1c, $3f, $00, $1f, $00, $1f, $00, $0f
    db $00, $0f, $00, $07, $00, $03, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $60, $00, $30, $c0, $30, $c0, $70, $90, $70, $90, $30, $c0, $18, $e0
    db $18, $e0, $38, $c8, $3c, $c4, $1c, $e0, $0c, $f0, $18, $20, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $01, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $02, $0b, $03, $07, $05, $07, $06, $07, $0f, $0f, $0f, $0f, $1f, $1f, $00, $00
    db $00, $00, $00, $00, $e0, $00, $90, $20, $10, $80, $50, $20, $00, $00, $00, $00
    db $00, $00, $f0, $14, $f0, $f8, $e8, $f8, $d8, $f8, $fc, $fc, $fc, $fc, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01
    db $01, $01, $03, $03, $03, $1b, $01, $07, $0f, $0f, $1f, $1f, $3f, $3f, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $70, $80, $48, $90, $88, $c0, $28, $10
    db $00, $80, $f0, $80, $f8, $fe, $e4, $fc, $f8, $f8, $fc, $fc, $fc, $fc, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $03, $03, $01, $1f, $1f, $1f, $3f, $3f, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1c, $20, $12, $24, $22, $30
    db $4a, $44, $c0, $e0, $fc, $e0, $f0, $f0, $f8, $f8, $e0, $fe, $fc, $fc, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1c, $00, $20, $14, $24, $00, $30, $08
    db $08, $38, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $06, $46, $1e, $3e, $6e, $7e, $76, $3e, $7e, $3e, $7e, $3e
    db $6e, $fe, $de, $fe, $3e, $7e, $0e, $8e, $02, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $07, $00, $08, $05, $09, $00, $0c, $02, $02, $0e
    db $fe, $fe, $6e, $7e, $0e, $1e, $0e, $2e, $06, $26, $02, $02, $00, $00, $00, $00
    db $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $20, $16, $36, $2e, $3e, $6e, $3e, $7e, $3e, $7e, $3e, $7e, $fe
    db $00, $00, $03, $00, $04, $02, $04, $00, $06, $01, $01, $07, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $80, $04, $22, $86, $aa, $0e, $3a, $1e, $3e, $7e, $fe, $fe, $7e, $7e
    db $3e, $3e, $16, $1e, $06, $0e, $06, $0e, $06, $0e, $02, $02, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $00, $03, $00, $0f, $11, $0e, $1f, $00, $0f, $01, $00, $00
    db $00, $00, $08, $3c, $14, $7a, $1c, $70, $14, $7a, $08, $7c, $04, $7e, $00, $ff
    db $00, $ff, $00, $ff, $01, $fe, $0d, $f2, $9e, $60, $fe, $08, $f0, $90, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01
    db $00, $03, $00, $07, $00, $0f, $00, $1f, $23, $1c, $3f, $00, $1f, $03, $00, $00
    db $00, $00, $00, $00, $00, $00, $10, $78, $28, $f4, $38, $e0, $28, $f4, $10, $f8
    db $08, $f8, $00, $fc, $00, $fe, $00, $fe, $32, $cc, $fe, $00, $fc, $30, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $03, $00, $07
    db $00, $0f, $00, $1f, $00, $1f, $00, $3f, $40, $3f, $7f, $00, $3f, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $e0, $a0, $d0, $e0, $80
    db $a0, $d0, $40, $e0, $20, $e0, $00, $f8, $04, $f8, $fc, $00, $f8, $00, $00, $00

    INCBIN "gfx/image_007_7a0c.2bpp"

    INCBIN "gfx/image_007_7b0c.2bpp"

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
