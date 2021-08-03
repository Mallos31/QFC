; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    call Call_000_0783
    di
    call Call_000_0679
    ld hl, $0bfc
    ldh a, [$8b]
    cp $02
    call nc, Call_000_09b0
    ld hl, $9800
    call Call_000_098d
    ldh a, [$8b]
    cp $01
    jr nz, jr_008_404f

    ld hl, $4ac8
    ld bc, $0830
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $538c
    call Call_000_0d52
    ld hl, $53cc
    call Call_000_0d37
    ld hl, $52f8
    ld de, $98c1
    ld a, $01
    call Call_000_080b
    ld hl, $5366
    ld de, $9861
    ld a, $01
    call Call_000_080b
    jr jr_008_405d

jr_008_404f:
    ld hl, $41d6
    ld bc, $0830
    ld de, $8000
    ld a, $00
    call Call_000_07ce

jr_008_405d:
    ld hl, $4a06
    ld de, $98c1
    ld a, $00
    call Call_000_080b
    ld hl, $c100
    ld a, [$c200]
    cp $64
    jr c, jr_008_408b

    ld d, $50
    ld e, $7a
    ld b, $09

jr_008_4078:
    ld a, $dc
    ld [hl+], a
    ld a, d
    ld [hl+], a
    add $08
    ld d, a
    ld a, e
    ld [hl+], a
    inc e
    ld a, $00
    ld [hl+], a
    dec b
    jr nz, jr_008_4078

    jr jr_008_40ae

jr_008_408b:
    ld c, $d8
    ld d, $50
    ld e, $6e
    ld b, $0c

jr_008_4093:
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    add $08
    ld d, a
    ld a, e
    ld [hl+], a
    inc e
    ld a, $00
    ld [hl+], a
    dec b
    jr z, jr_008_40ae

    ld a, b
    cp $08
    jr nz, jr_008_4093

    ld c, $e0
    ld d, $58
    jr jr_008_4093

jr_008_40ae:
    xor a
    ld [$cf0b], a
    ld a, $60
    ld [$cf0c], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $1b
    ld [$cf1b], a
    ld a, $03
    ld [$cf1c], a
    ld [$cf1d], a
    ld a, $d3
    call Call_000_04a0
    ld a, $01
    ld [$dd00], a
    xor a
    ld [$dd01], a
    call Call_000_0389
    ld a, $08
    ldh [$a1], a
    xor a
    ldh [$a2], a
    xor a
    ldh [$a3], a

Jump_008_40e7:
jr_008_40e7:
    call Call_000_0616
    call Call_000_0389
    call Call_000_06f6
    ld a, [$cf0c]
    and a
    jr z, jr_008_40fd

    inc a
    inc a
    ld [$cf0c], a
    jr jr_008_40e7

jr_008_40fd:
    ldh a, [$a3]
    and a
    jr nz, jr_008_4137

    ldh a, [$a1]
    dec a
    ldh [$a1], a
    and a
    jr nz, jr_008_40e7

    ld a, $01
    ldh [$a3], a
    ld a, [$41c1]
    ldh [$a1], a
    ld hl, $c100
    ld b, $0c
    ld a, [$c200]
    cp $64
    jr c, jr_008_4121

    ld b, $09

jr_008_4121:
    res 7, [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_008_4121

    ld hl, $4aa1
    ld de, $9861
    ld a, $00
    call Call_000_08a4
    jr jr_008_40e7

jr_008_4137:
    cp $01
    jr nz, jr_008_418f

    ldh a, [$8d]
    and $09
    jr nz, jr_008_4175

    ldh a, [$a1]
    dec a
    ldh [$a1], a
    and a
    jr nz, jr_008_40e7

    ldh a, [$a2]
    inc a
    ldh [$a2], a
    cp $c8
    jr nc, jr_008_4175

    and $03
    ld hl, $41c1
    call Call_000_07e6
    ld a, [hl]
    ldh [$a1], a
    ldh a, [$a2]
    and $03
    ld hl, $41c8
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9964
    ld a, $00
    call Call_000_08a4
    jp Jump_008_40e7


jr_008_4175:
    ld a, $02
    ldh [$a3], a
    xor a
    ldh [$a2], a
    ld a, [$41c5]
    ldh [$a1], a
    ld hl, $4a74
    ld de, $9964
    ld a, $00
    call Call_000_08a4
    jp Jump_008_40e7


jr_008_418f:
    ldh a, [$a1]
    dec a
    ldh [$a1], a
    and a
    jp nz, Jump_008_40e7

    ldh a, [$a2]
    inc a
    ldh [$a2], a
    cp $03
    jr nc, jr_008_41c0

    ld hl, $41c5
    call Call_000_07e6
    ld a, [hl]
    ldh [$a1], a
    ldh a, [$a2]
    ld hl, $41d0
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9964
    ld a, $00
    call Call_000_08a4
    jp Jump_008_40e7


jr_008_41c0:
    ret


    inc a
    inc b
    inc b
    inc b
    inc a
    inc b
    ld a, b
    ld [hl], h
    ld c, d
    ld a, l
    ld c, d
    add [hl]
    ld c, d
    ld a, l
    ld c, d
    ld [hl], h
    ld c, d
    adc a
    ld c, d
    sbc b
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0205
    dec bc
    inc b
    rlca
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ldh [rP1], a
    add sp, -$10
    ld a, [bc]
    db $fc
    sbc [hl]
    ld a, a
    ret z

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
    add b
    nop
    ld b, b
    add b
    rla
    ld [$1008], sp
    nop
    db $10
    ld bc, $0210
    ld de, $0314
    inc hl
    ld b, $2a
    ld b, $e4
    rra
    ld a, [bc]
    rlca
    ld bc, $4000
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ret nz

    ld b, b
    ldh [$30], a
    ldh [rOBP0], a
    jr nc, jr_008_4267

    db $10
    ld d, b
    jr nz, jr_008_4243

jr_008_4243:
    nop
    nop
    nop
    inc h
    ld c, $26
    inc c
    inc h
    inc c
    jr nc, jr_008_425a

    inc h
    ld [$082c], sp
    jr jr_008_425c

    db $10
    ld [$0000], sp
    nop
    nop

jr_008_425a:
    nop
    nop

jr_008_425c:
    nop
    nop

jr_008_425e:
    ld [bc], a
    ld bc, $0708
    jr nz, jr_008_4283

    ld b, b
    ccf
    db $10

jr_008_4267:
    ld [$0018], sp
    jr jr_008_426c

jr_008_426c:
    xor h
    ld b, e
    inc d
    db $e3
    inc b
    di
    dec bc
    rst $30
    inc d
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @-$3e

    inc b
    ld hl, sp-$7f
    ld a, [hl]
    ld h, a

jr_008_4283:
    sbc e
    cp l
    rst $00
    nop
    nop
    nop
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
    and b
    ld b, b
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    ld a, [bc]
    rlca
    inc b
    rrca
    dec de
    rrca
    dec c
    ld e, $80
    ld a, a
    ld b, b
    rst $38
    ld bc, $0eff
    rst $38
    dec sp
    db $fc
    sbc $e0
    ld a, h
    add b

jr_008_42b4:
    add sp, $00
    ld a, [bc]
    db $fd
    ld b, $f9
    xor d
    pop af
    ld [hl], $c1
    ld h, l
    ld [bc], a
    call z, $cd02
    ld [bc], a
    call z, Call_008_5603
    jp hl


    adc a
    ld [hl], b
    ld e, e
    jr nz, jr_008_425e

    jr nz, jr_008_42f4

    nop
    sbc $00
    ld h, d
    db $fc
    ldh a, [$fe]
    sub b
    ldh [rOBP0], a
    or b
    jr nz, jr_008_42b4

    and h
    ld e, b
    sub b
    ld l, h
    sbc d
    ld h, h
    adc b
    ld h, [hl]
    cp l
    ld b, d
    scf
    jr jr_008_4308

    jr nz, @+$41

    nop
    ccf
    nop
    add hl, de
    nop
    ld [$0500], sp
    inc bc

jr_008_42f4:
    ld b, $03
    inc e
    jp $914e


    and c
    ld [de], a
    ld b, d
    inc h
    add h
    ld c, b
    cp b
    nop
    ld h, b
    nop
    ld b, b
    ldh [$03], a
    inc b

jr_008_4308:
    ld c, $03
    ld a, [bc]
    rlca
    ld [bc], a
    rrca
    rlca
    rrca
    rlca
    rrca
    ld a, [bc]
    rlca
    nop
    nop
    ret nz

    and b
    add b
    ld h, b
    ld b, b
    ldh [$e0], a
    ret nz

    add b
    ret nz

    add b
    nop
    nop
    nop
    ld d, b
    jr nz, jr_008_4328

    nop

jr_008_4328:
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    dec b
    inc bc
    or b
    ld a, a
    add a
    ld hl, sp+$20
    ret nz

    sbc b
    nop
    ld h, e
    nop
    dec de
    inc b
    call z, Call_000_2030
    ret nz

    ld [$f6f7], sp
    add hl, bc
    ld a, l
    ld [bc], a
    cp $01
    rst $38
    nop
    db $fc
    nop
    dec c
    ld [bc], a
    ld [bc], a
    ld bc, $fe7d
    rra
    rst $38
    add a
    ld a, a
    ldh [$1f], a
    db $10

jr_008_435f:
    ldh [rOBP1], a
    jr nc, jr_008_4387

    add hl, de
    sub l
    dec bc
    ld hl, sp-$04
    push af
    ld hl, sp-$28
    db $e4
    ld h, l
    adc b
    jp Jump_008_6a08


    ret nz

    call nc, $e0f0
    ld hl, sp-$20
    db $10
    ldh [rNR10], a
    ldh a, [rP1]
    ldh [rNR10], a
    cp b
    nop
    ld a, h
    nop
    ld [hl], h
    ld [$30cc], sp
    ld [bc], a

jr_008_4387:
    rlca
    dec b
    ld b, $04
    ld b, $04
    ld b, $00
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    add e
    nop
    rra
    nop
    ld d, b
    jr nz, jr_008_4328

    ld h, h
    ld h, c
    ld c, $58
    rlca
    ld b, e
    sbc h
    ld [hl+], a
    sbc h
    ld de, $c4e0
    jr c, jr_008_43b5

    inc b
    ld de, $b800
    ld bc, $219c

jr_008_43b2:
    ld l, c
    inc b

jr_008_43b4:
    ld a, [de]

jr_008_43b5:
    inc b
    db $eb
    rst $00
    ld [c], a
    ld [hl], a
    inc a
    inc bc
    jp nz, Jump_000_0101

    db $fc
    adc h
    cp $7a
    db $fc
    ld a, [$b77c]
    call z, Call_000_0efc
    ld a, [de]
    db $ed
    or e
    call c, $c038
    add a
    nop
    ld b, l

jr_008_43d3:
    jr c, jr_008_435f

    ld [hl], b
    ld [de], a
    pop hl
    ld [$be07], sp
    ld bc, $007f
    pop bc
    ld a, $a0
    ld b, b
    sub d
    inc c
    ld e, h
    ld [hl+], a
    ld b, b
    add b
    nop
    ldh a, [rSB]
    cp $02
    rst $38
    pop bc
    ccf
    ld h, c
    rra
    ld h, c
    rra
    ret nz

    ccf
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
    ld b, b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $000f
    inc c
    ld bc, $000f
    inc c
    ld bc, $000f
    nop
    nop
    adc h
    ld [hl], b
    dec c
    cp $02
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38

jr_008_4426:
    ld c, e
    inc b
    db $ec
    inc bc
    ld a, b
    rlca
    or c
    ld c, $2e
    add b
    jr nc, jr_008_43b2

    jr nz, jr_008_43b4

    sub l
    ld c, $35
    ld a, b
    ld [hl], c
    jr c, jr_008_4426

    jr nc, jr_008_43d3

    ld h, c
    xor a
    ld b, b
    ld e, [hl]
    add b
    cp l
    nop
    ld a, e
    nop
    add c
    ld [hl], b
    ld d, $e1
    inc l
    jp Jump_000_0c93


    ld a, [hl+]
    db $10
    add b
    ld a, a
    sbc a
    ld h, b
    ccf
    ret nz

    ld a, [hl+]
    call nc, $a055
    sub e
    ld h, b
    push bc
    ld [bc], a
    ld a, [bc]
    dec b
    sub h
    dec bc
    ld c, b
    scf
    add b
    ld a, a
    pop bc
    ld a, $82
    ld a, h
    add h
    ld a, b
    nop
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    inc c
    ld bc, $0007
    inc d
    nop
    add hl, de
    nop
    ld [$2710], sp
    db $10
    inc hl
    inc d
    add hl, bc
    ld h, $02
    rst $38
    ld [c], a
    rra
    ld [hl], e
    inc c
    ld a, $c0
    add hl, hl
    ld b, $b8
    ld a, a
    xor c
    ld a, [hl]
    or b
    ld a, [hl]
    dec c
    inc e
    dec bc
    inc e
    ld b, d
    dec d
    and [hl]
    add hl, bc
    sub h
    dec bc
    call z, Call_000_0e33
    ld [hl], e

jr_008_44a4:
    ld b, $7b

jr_008_44a6:
    pop af
    ld [bc], a
    inc h
    jp $e314


    dec d
    ld [c], a
    ld [bc], a
    pop hl
    jr nz, @-$3e

    ld c, h
    add e
    and c
    rra
    sbc h
    ld h, e
    ret nz

    ccf
    ldh a, [rIF]
    ldh [$1f], a
    ld c, $f1
    nop
    nop
    rst $38
    nop
    add $f9
    ld bc, $02ff
    rst $38
    dec c
    cp $3a
    db $fc
    jp hl


    ldh a, [rTAC]
    nop
    ld d, b
    add c
    ld [de], a
    pop bc
    nop
    add b
    add b
    nop
    ld b, b
    nop
    ret nz

    nop

jr_008_44de:
    ld b, b
    add b
    ld h, b
    add b
    jr nz, jr_008_44a4

    jr nz, jr_008_44a6

    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    inc b
    inc bc
    inc c
    inc de
    ld c, $71
    rrca
    ldh a, [rNR11]
    ld b, $58
    daa
    inc d
    db $e3
    jr jr_008_44de

    ld a, h
    add b
    cp $00
    ld d, c
    add b
    inc hl
    nop
    or [hl]
    ld a, b
    or [hl]
    ld a, b
    and c
    ld a, [hl]
    nop
    rra
    ld e, e
    inc b
    ld hl, $c600
    nop
    db $fc
    nop
    and e
    ld a, b
    ld c, b
    jr nc, jr_008_451b

jr_008_451b:
    ld bc, $31cc
    inc a
    ld h, c
    sbc a
    ld h, c
    ld a, l
    pop bc
    ld a, a
    pop bc
    ld b, a
    ccf
    inc sp
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    ld b, d
    add c
    ld l, l
    add d
    inc l
    ret nz

    cp a
    ret nz

    xor [hl]
    pop bc
    sbc a
    ldh [$90], a
    ldh [$d8], a
    ldh [$80], a
    ld h, b
    nop
    ld h, b
    and b
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
    call nc, $ba08
    inc b
    dec de
    ld b, $8d
    inc bc
    rst $20
    nop
    ld a, d
    ld bc, $871b
    and e
    adc $25
    ld b, e
    ld d, l
    inc hl
    ld l, e
    ld sp, $3997
    jp nc, $d90d

    and $c0
    ccf
    inc bc
    rra
    ldh a, [$fe]
    ei
    db $fc
    ld a, [$f2fd]
    db $fc
    db $f4
    ld hl, sp-$1c
    rst $38
    jp c, $e7e7

    jp $fc62


    and h
    ld a, d
    ld b, b
    cp [hl]
    db $e3
    ld e, $e3
    rst $38
    add c
    rst $38
    ld h, c
    sbc a
    ld [hl], b
    rrca
    daa
    rrca
    ld d, a
    ccf
    ld a, a
    rst $38
    ld e, a
    ccf
    cp a
    ld a, a
    db $fd
    cp $fc
    rst $38
    ei
    rst $38
    add $c3
    rst $00
    adc $eb
    add $d6
    rst $28
    ld l, [hl]
    rst $38
    ld a, a
    cp $fc
    cp $7e
    db $fc
    call nc, $ba08
    inc b
    dec de
    ld b, $8d
    inc bc
    rst $20
    nop
    ld a, d
    ld bc, $871b
    and d
    rst $08
    dec h
    ld b, e
    ld d, l
    inc hl
    ld l, e
    ld sp, $3997
    jp nc, $d90d

    and $e0
    rst $38
    jp $f03f


    cp $fb
    db $fc
    ld a, [$f2fd]
    db $fc
    db $f4
    ld hl, sp-$04
    rst $38
    and $ff
    db $db
    rst $20
    ld h, c
    cp $a2
    ld a, h
    ld b, b
    cp [hl]
    db $e3
    ld e, $e3
    rst $38
    add c
    rst $38
    ld h, c
    sbc a
    ld [hl], b
    rrca
    rla
    rrca
    ld b, a
    ccf
    ld a, a
    rst $38
    ld e, a
    ccf
    cp a
    ld a, a
    db $fd
    cp $fc
    rst $38
    ei
    rst $38
    and $c3
    rst $00
    adc $eb
    add $d6
    rst $28
    ld l, [hl]
    rst $38
    ld a, a
    cp $fc
    cp $7e
    db $fc
    call nc, $ba08
    inc b
    dec de
    ld b, $8d
    inc bc
    rst $20
    nop
    ld a, d
    ld bc, $871b
    and e
    rst $08
    dec h
    ld b, e
    ld d, l
    inc hl
    ld l, e
    ld sp, $3997
    jp nc, $d90d

    and $e0
    rst $38
    di
    rst $38
    ldh a, [$fe]
    ei
    db $fc
    ld a, [$f2fd]
    db $fc
    db $f4
    ld hl, sp-$14
    rst $38
    cp $ff
    rst $38
    rst $38
    ld h, e
    rst $38
    and c
    ld a, a
    ld b, d
    cp l
    db $e3
    ld e, $e3
    rst $38
    add c
    rst $38
    ld h, c
    sbc a
    ld [hl], b
    rrca
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld e, a
    ccf
    cp a
    ld a, a
    db $fd
    cp $fc
    rst $38
    ei
    rst $38
    cp $ff
    ei
    cp $fb
    sub $d6
    rst $28
    ld l, [hl]
    rst $38
    ld a, a
    cp $fc
    cp $7e
    db $fc
    nop
    nop
    rra

jr_008_4689:
    ld e, $3f

jr_008_468b:
    inc sp
    ld a, c

jr_008_468d:
    ld h, c
    ld [hl], b

jr_008_468f:
    ld h, b
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a
    nop
    nop
    jp $c783


    add [hl]
    rst $08
    adc h
    adc $8c
    sbc $98
    inc e
    jr jr_008_46c1

    jr jr_008_46a7

jr_008_46a7:
    nop
    pop af
    pop bc
    ld hl, sp+$60
    jr c, jr_008_46de

    inc a
    jr nc, @+$1e

jr_008_46b1:
    jr jr_008_46cf

    jr jr_008_46d1

    jr jr_008_46b7

jr_008_46b7:
    nop
    rst $20
    rst $00
    di
    jp nz, $e2f3

    ei
    ld [c], a
    ei

jr_008_46c1:
    or d
    rst $38
    or d
    rst $18
    sbc d
    nop
    nop
    add a
    rlca
    adc a
    inc c
    ld e, $18
    inc e

jr_008_46cf:
    jr jr_008_470d

jr_008_46d1:
    jr nc, jr_008_470b

    jr nc, jr_008_470d

    jr nc, jr_008_46d7

jr_008_46d7:
    nop
    ld [hl], a
    and a
    di
    db $e3
    ld [hl], e
    ld h, e

jr_008_46de:
    inc sp
    inc hl
    inc sp
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld hl, sp-$10
    cp h
    jr c, jr_008_4689

    jr jr_008_468b

    jr jr_008_468d

    jr jr_008_468f

    jr jr_008_46b1

    jr nc, jr_008_46f7

jr_008_46f7:
    nop
    inc c
    ld [$0c0e], sp
    ld e, $1c
    rra
    inc e
    rra
    ld e, $1f
    ld d, $3f
    ld [hl], $00
    nop
    ccf
    ccf
    inc sp

jr_008_470b:
    inc hl
    inc sp

jr_008_470d:
    inc hl
    inc sp
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    rst $38
    rst $30
    ccf
    inc de
    scf
    inc de
    scf
    inc de
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    nop
    nop
    cp a
    sbc l
    dec sp
    ld [$0819], sp
    add hl, de
    ld [$0819], sp
    add hl, de
    ld [$0819], sp
    nop
    nop
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    jr jr_008_4752

    inc a
    inc c
    inc a
    inc e
    inc a
    inc e
    ld a, $1e

jr_008_4752:
    ld a, [hl]
    ld d, $7e
    ld [hl], $00
    nop
    ld a, a
    ccf
    ld h, a
    inc hl
    ld h, a
    inc hl
    ld h, a
    inc hl
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    nop
    nop
    adc a
    add e
    rra
    ld b, $1c
    inc c
    inc a
    inc c
    jr c, jr_008_478a

    jr c, jr_008_478c

    jr c, jr_008_478e

    nop
    nop
    jp $e3c1


jr_008_477b:
    ld h, b
    pop af
    jr nc, jr_008_47f0

    jr nc, jr_008_47fa

    jr @+$3b

    jr @+$3b

    jr jr_008_4787

jr_008_4787:
    nop
    rst $08
    rst $00

jr_008_478a:
    adc $c2

jr_008_478c:
    and $e2

jr_008_478e:
    and $e2
    or $b2
    or $b2
    cp $9a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$c0]
    ld [hl], c

jr_008_479d:
    ld h, c
    ld a, c
    ld h, c
    ccf
    inc sp
    rra
    ld e, $00
    nop
    inc e
    jr jr_008_47c5

    jr jr_008_47c9

    jr jr_008_477b

    adc h
    rst $08
    adc h
    rst $00
    ld b, $83
    inc bc
    nop
    nop
    inc e
    jr @+$1e

jr_008_47b9:
    jr @+$1e

    jr @+$3e

    jr nc, @+$3a

    jr nc, jr_008_47b9

    ld h, b
    pop af
    pop bc
    nop

jr_008_47c5:
    nop
    rst $18
    sbc d
    rst $08

jr_008_47c9:
    adc [hl]
    rst $08
    adc [hl]
    rst $00
    add [hl]
    rst $00
    add [hl]
    jp $e382


    jp nz, RST_00

    jr c, @+$32

    jr c, jr_008_480a

    inc a
    jr nc, @+$1e

    jr jr_008_47fd

    jr jr_008_47f0

    inc c

jr_008_47e2:
    rlca
    rlca
    nop
    nop
    ei
    di
    dec sp
    inc hl
    inc sp
    inc hl
    ld [hl], e
    ld h, e
    ld [hl], e
    ld h, e

jr_008_47f0:
    di
    jp $87e7


    nop
    nop
    ld hl, sp-$20
    ld hl, sp+$70

jr_008_47fa:
    cp h
    jr nc, jr_008_47b9

jr_008_47fd:
    jr c, @-$62

    jr jr_008_479d

    jr jr_008_47e2

    sbc [hl]
    nop
    nop
    scf
    ld h, $3f
    ccf

jr_008_480a:
    inc sp
    inc hl
    ld [hl], e
    ld h, e
    ld [hl], e
    ld b, e
    ld h, e
    ld b, e
    rst $30
    rst $20
    nop
    nop
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    jp $c303


    add e
    db $e3
    add e
    rst $20
    rst $00
    nop
    nop
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0103
    add e
    add b
    nop
    nop
    add hl, de
    ld [$0819], sp
    add hl, sp
    ld [$98b9], sp
    pop af
    sub b
    di
    ldh a, [$e3]
    pop hl
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    jp $c6c1


    jp nz, $c6ce

    rst $38
    cp $00
    nop
    ld l, [hl]
    ld h, $7f
    ccf
    rst $20
    inc hl
    rst $20
    ld h, e
    rst $00
    ld b, e
    rst $08
    ld b, e
    rst $28
    rst $20
    nop
    nop
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    add a
    add e
    adc a
    add e
    rst $08
    rst $00
    nop
    nop
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    inc bc
    adc a
    add a

jr_008_4884:
    nop
    nop
    jr c, @+$1a

    jr c, jr_008_48a2

    jr c, @+$1a

    inc a
    inc c
    inc e
    inc c

jr_008_4890:
    rra
    ld b, $8f
    add e
    nop
    nop
    add hl, sp
    jr jr_008_48d2

    jr jr_008_4914

    jr jr_008_490e

    jr nc, jr_008_4890

    jr nc, jr_008_4884

    ld h, b

jr_008_48a2:
    jp Jump_000_00c1


    nop
    cp [hl]
    sbc d
    cp [hl]
    adc [hl]
    sbc [hl]
    adc [hl]
    sbc [hl]
    add [hl]
    adc [hl]
    add [hl]
    adc [hl]
    add d
    add $c2
    nop
    nop
    ld a, h
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1000
    nop
    nop
    nop
    ldh [rP1], a
    stop
    stop
    stop
    stop
    stop

jr_008_48d2:
    ldh [rP1], a
    nop
    nop
    inc a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    inc a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    inc a
    nop
    nop
    nop
    ldh a, [rP1]
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    db $e3
    nop
    inc d
    nop
    inc b
    nop
    inc b
    nop

jr_008_490e:
    inc b
    nop
    inc d
    nop
    db $e3
    nop

jr_008_4914:
    nop
    nop
    sub c
    nop
    ld d, c
    nop
    ld e, c
    nop
    ld d, l
    nop
    ld d, e
    nop
    ld d, c
    nop
    sub c
    nop
    nop
    nop
    ld a, l
    nop
    stop
    stop
    stop
    stop
    stop
    ld de, $0000
    nop
    pop de
    nop
    sub c
    nop
    sbc c
    nop
    sub l
    nop
    sub e
    nop
    sub c
    nop
    pop de
    nop
    nop
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    add hl, sp
    nop
    nop
    nop
    rst $28
    nop
    ld [$0800], sp
    nop
    add sp, $00
    ld [$0800], sp
    nop
    rst $28
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
    add b
    nop
    add b
    nop
    ld a, [hl+]
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
    db $f4
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, a
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    nop
    nop
    ld b, h
    nop
    ld c, d
    nop
    ld d, c
    nop
    pop de
    nop
    ld e, a
    nop
    ld d, c
    nop
    ld d, c
    nop
    nop
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld h, l
    nop
    ld d, l
    nop
    ld c, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    nop
    nop
    stop
    jr nz, jr_008_49ba

jr_008_49ba:
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_008_49c2

jr_008_49c2:
    stop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    inc d
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    nop
    nop
    ld [hl], d
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    ld [hl], c
    nop
    nop
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    jr nz, jr_008_49f2

jr_008_49f2:
    call nz, RST_00
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b

Call_008_49ff:
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add hl, bc
    inc c
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
    nop
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    ld de, $3a39
    dec sp
    ld [de], a
    nop
    nop
    nop
    nop
    inc de
    inc a
    dec a
    ld a, $14
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_008_4a66

    ld a, [de]
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_008_4a79

    ld [hl+], a
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_008_4a8a

    nop
    nop
    ld a, [hl+]
    dec hl
    inc l

jr_008_4a66:
    dec l
    ld l, $2f
    jr nc, jr_008_4a6b

jr_008_4a6b:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_008_4a74

jr_008_4a74:
    ld b, $03
    ld [bc], a
    add hl, sp
    ld a, [hl-]

jr_008_4a79:
    dec sp
    inc a
    dec a
    ld a, $06
    inc bc
    ld [bc], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, $03
    ld [bc], a
    ld b, l

jr_008_4a8a:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld b, $03
    ld [bc], a
    ccf
    ld b, b
    dec sp
    ld b, d
    ld b, e
    ld a, $06
    inc bc
    ld [bc], a
    ld b, l
    ld b, [hl]
    dec sp
    ld c, b
    ld c, c
    ld a, $24
    ld [de], a
    ld [bc], a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld d, h
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    cp $fa
    db $fd
    db $f4
    ei
    ld hl, sp-$09
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rla
    rrca
    push af
    inc bc
    ld h, c
    add b
    scf
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
    ld a, a
    rst $38
    cp a
    ld a, a
    add sp, -$09
    rst $30
    rst $28
    rst $38
    rst $28
    cp $ef
    db $fd
    xor $eb
    db $fc
    call c, $d5f9
    ld sp, hl
    dec de
    ldh [$f5], a
    ld hl, sp-$02
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ccf
    cp a
    rra
    rst $08
    rra
    or a
    rst $08
    rst $10
    rst $28
    xor a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    pop af
    reti


    di
    db $db
    di
    rst $08
    di
    db $db
    rst $30
    db $d3
    rst $30
    rst $20
    rst $30
    rst $28
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $f7
    ld hl, sp-$21
    ldh [$bf], a
    ret nz

    rst $28
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    ld d, e
    cp h
    db $eb
    inc e
    ei
    inc c
    db $f4
    ld [$10eb], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    ei
    rlca
    ld a, [hl]
    add c
    sbc b
    ld h, h
    ld b, d
    jr c, @+$01

    rst $38
    rst $38
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
    ld e, a
    cp a
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fa
    db $fc
    push af
    ld hl, sp-$05
    ldh a, [$e4]
    ldh a, [$f2]
    pop hl
    ld a, a
    add b
    cp a
    nop
    cp $00
    pop af
    nop
    call nz, Call_000_2103
    rra
    add e
    ld a, a
    rla
    rst $38
    push af
    ld [bc], a
    ld sp, hl
    ld b, $55
    ld c, $c9
    ld a, $9a
    db $fd
    inc sp
    db $fd
    ld [hl-], a
    db $fd
    inc sp
    db $fc
    xor c
    ld d, $70
    adc a
    and h
    rst $18
    ld l, [hl]
    rst $18
    jp c, Jump_000_21ff

    rst $38
    sbc l
    inc bc
    rrca
    ld bc, $1f6f
    or a
    ld c, a
    rst $18
    daa
    ld e, e
    and a
    ld l, a
    sub e
    ld h, l
    sbc e
    ld [hl], a
    sbc c
    ld b, d
    cp l
    ret z

    rst $20
    ldh [$df], a
    ret nz

    rst $38
    ret nz

    rst $38
    and $ff
    rst $30
    rst $38
    ld a, [$f9fc]
    db $fc
    db $e3
    inc a
    or c
    ld l, [hl]
    ld e, [hl]
    db $ed
    cp l
    db $db
    ld a, e
    or a
    ld b, a
    rst $38
    sbc a
    rst $38
    cp a
    rra
    db $fc
    ei
    pop af
    db $fc
    push af
    ld hl, sp-$03
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f5]
    ld hl, sp-$01
    rst $38
    ccf
    ld e, a
    ld a, a
    sbc a
    cp a
    rra
    rra
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld h, a
    rst $38
    sbc h
    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    rra
    rst $38
    rlca
    ld hl, sp+$01
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    add e
    nop
    ldh [rP1], a
    ld a, b
    add b
    rra
    ldh [rIF], a
    rst $38
    add $ff
    ld [c], a
    rst $38
    ldh a, [$fe]
    rlca
    inc bc
    ld c, $03
    dec sp
    rlca
    ld a, [c]
    rra
    inc [hl]
    rst $38
    dec d
    cp a
    dec bc
    rra
    rlca
    cpl
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld b, a
    rst $38
    add e
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    db $fc
    rst $38
    ldh [rIE], a
    adc a
    ldh a, [$3f]
    ldh a, [$bf]
    ldh [$bf], a
    ld h, b
    rst $38
    ld b, c
    rst $38
    cp $0f
    rst $38
    inc bc
    rst $38
    pop af
    rst $28
    cp $46
    cp $42
    cp $93
    cp $e1
    rst $38
    dec sp
    db $fc
    rrca
    ld hl, sp-$3f
    db $fc
    inc a
    cp $02
    inc bc
    adc l
    ld bc, $0379
    ld a, c
    add e
    nop
    scf
    ld bc, $03f3
    inc [hl]
    rlca
    jr z, jr_008_4cc8

    rra
    ld a, a
    ld hl, sp-$01
    add d
    rst $38
    dec b

jr_008_4cc8:
    db $fd
    cp $37
    ld hl, sp+$41
    cp $80
    rst $38
    ld a, $c1
    ld e, a
    cp a
    ld l, l
    di
    and e
    db $dd
    cp a
    ld a, a
    rst $38
    rrca
    cp $01
    db $fd
    nop
    ld a, $c0
    sbc [hl]
    ldh [$9e], a
    ldh [$3f], a
    ret nz

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
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $f0
    rst $38
    di
    cp $f0
    rst $38
    di
    cp $f0
    rst $38
    rst $38
    rst $38
    ld [hl], e
    adc a
    ld a, [c]
    ld bc, $00fd
    cp $00
    cp $00
    cp $00
    cp $00
    or b
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    reti


    ld a, a
    rst $08
    ld a, a
    rst $08
    ld a, a
    ei
    ld [hl], b
    jp z, $8e87

    rst $00
    dec d
    adc $69
    sbc [hl]
    ld d, d
    cp l
    and c
    ld a, a
    ld b, d
    rst $38
    call nz, Call_008_4eff
    cp a
    adc c
    ld a, [hl]
    sub e
    ld a, h
    ld l, h
    di
    push de
    rst $28
    ld a, a
    add b
    ld h, b
    sbc a
    ret nz

    ccf
    push de
    dec hl
    xor d
    ld e, a
    ld l, h
    sbc a
    ld a, [hl-]
    db $fd
    push af
    ld a, [$f46b]
    or a
    ret z

    ld a, a
    add b
    ld a, $c1
    ld a, l
    add e
    ld a, e
    add a
    rst $38
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    di
    cp $f8
    rst $38
    db $eb
    rst $38
    and $ff
    rst $30
    rst $28
    ret c

    rst $28
    call c, $f6eb
    reti


    db $fd
    nop
    dec e
    ldh [$8c], a
    di
    pop bc
    ccf
    sub $f9
    ld b, a
    add b
    ld d, [hl]
    add c
    ld c, a
    add c
    db $f4
    rst $20
    cp h
    db $eb
    ld e, l
    ld a, [c]
    add hl, hl
    or $1b
    db $e4
    ld h, c
    call z, $8cd1
    db $db
    add h
    ld c, $fd
    db $db
    inc a
    db $eb
    inc e
    ld [$fd1d], a
    ld e, $df
    ccf
    or e
    ld a, h
    ld e, [hl]
    ldh [$63], a
    sbc h
    ccf
    ret nz

    rrca
    ldh a, [$1f]
    ldh [$f1], a
    ld c, $ff
    rst $38
    nop
    rst $38
    add hl, sp
    ld b, $fe
    nop
    db $fd
    nop
    ld a, [c]
    ld bc, $03c5
    ld d, $0f
    ld hl, sp-$01
    xor a
    ld a, [hl]
    db $ed
    ld a, $ff
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    cp $fb
    db $fc
    di
    db $ec
    pop af
    adc [hl]
    ldh a, [rIF]
    xor $f9
    and a
    ret c

    db $eb
    inc e
    rst $20
    rra
    add e
    ld a, a
    ld bc, $aeff
    ld a, a
    call c, Call_008_49ff
    add a
    ld c, c
    add a
    ld e, [hl]
    add c
    rst $38
    ldh [$a4], a
    ei
    sbc $ff
    add hl, sp
    rst $38
    inc bc
    rst $38
    rst $38
    adc a
    ei
    sbc a
    db $eb
    cp $8b
    cp $9b
    cp $11
    rst $38
    inc de
    rst $38
    ld sp, $87ff
    add b
    inc sp
    nop
    ld a, l
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    add b
    ld hl, sp+$00
    ldh a, [rP1]
    db $e3
    nop
    rst $08
    nop
    rst $08
    nop
    adc a
    nop
    add a
    nop
    rlca
    nop
    cp l
    ld a, [hl]
    sub d
    ld a, l
    db $d3
    ccf
    ld b, b
    ccf
    ld d, c
    ld a, $60
    rra
    ld l, a
    rra
    daa
    rra
    ld a, a
    sbc a
    rst $38
    sbc a
    ld e, a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
    rst $30
    ld b, l
    ei
    db $e4
    ld sp, hl
    ld [hl], d
    db $fc
    jr @+$01

    add l
    cp $e4
    ld a, b
    ld e, h
    ld sp, $bcda
    xor d
    call c, $ce94
    ld l, b
    add $2d
    ld a, [c]
    ld h, $19
    ccf
    ret nz

    db $fc
    ldh [rIF], a
    ld bc, $0304
    dec b
    ld [bc], a
    dec c
    inc bc
    dec bc
    rlca
    dec de
    nop
    dec h
    jr jr_008_4e9f

jr_008_4e87:
    inc a
    sbc l
    inc bc
    ld e, e
    add l
    cp a
    ld b, c
    inc e
    pop hl
    inc e
    nop
    ld a, [hl]
    nop
    sbc [hl]
    ld h, b
    adc a
    ldh a, [$d8]
    ldh a, [$a8]
    ret nz

    add b
    nop
    and b

jr_008_4e9f:
    ret nz

    ld b, b
    add b
    ld [bc], a

jr_008_4ea3:
    ld bc, $0003
    inc b
    nop
    add hl, sp
    inc a
    jr c, jr_008_4edd

    inc d
    add hl, sp
    add hl, hl
    db $10
    sub c
    nop
    add b
    ld bc, $0103
    add c
    inc bc
    dec hl
    rst $30
    ld b, l
    ei
    db $e4
    ld sp, hl
    ld [hl], d
    db $fc
    jr @+$01

    add l
    cp $e4
    ld a, b
    ld e, l
    jr nc, jr_008_4ea3

    cp h
    xor d
    call c, $ce94
    ld l, b
    add $2d
    ld a, [c]
    ld h, $19
    rra
    nop
    inc a
    ret nz

    rrca
    ld bc, $0304
    dec b

jr_008_4edd:
    ld [bc], a
    dec c
    inc bc
    dec bc
    rlca
    inc bc
    nop
    add hl, de
    nop
    inc h
    jr jr_008_4e87

    ld bc, $835d
    cp a
    ld b, c
    inc e
    pop hl
    inc e
    nop
    ld a, [hl]
    nop
    sbc [hl]
    ld h, b
    adc a
    ldh a, [$e8]
    ldh a, [$b8]
    ret nz

    add b
    nop
    and b

Call_008_4eff:
    ret nz

    ld b, b
    add b
    ld [bc], a

jr_008_4f03:
    ld bc, $0003
    inc b
    nop
    add hl, de
    inc a
    jr c, jr_008_4f3d

    inc d
    add hl, sp
    add hl, hl
    db $10
    sub c
    nop
    add b
    ld bc, $0103
    add c
    inc bc
    dec hl
    rst $30
    ld b, l
    ei
    db $e4
    ld sp, hl
    ld [hl], d
    db $fc
    jr @+$01

    add l
    cp $e4
    ld a, b
    ld e, h
    jr nc, jr_008_4f03

    cp h
    xor d
    call c, $ce94
    ld l, b
    add $2d
    ld a, [c]
    ld h, $19
    rra
    nop
    inc c
    nop
    rrca
    ld bc, $0304
    dec b

jr_008_4f3d:
    ld [bc], a
    dec c
    inc bc
    dec bc
    rlca
    inc de
    nop
    ld bc, $0000

jr_008_4f47:
    nop
    sbc h
    nop
    ld e, [hl]
    add b
    cp l
    ld b, d
    inc e
    pop hl
    inc e
    nop
    ld a, [hl]
    nop
    sbc [hl]
    ld h, b
    adc a
    ldh a, [$08]
    nop
    nop
    nop
    stop
    and b
    ret nz

    ld b, b
    add b

jr_008_4f62:
    ld [bc], a
    ld bc, $0003

jr_008_4f66:
    inc b
    nop

jr_008_4f68:
    ld bc, $0400
    ld bc, $2904
    add hl, hl

jr_008_4f6f:
    db $10
    sub c
    nop
    add b
    ld bc, $0103
    add c
    inc bc
    nop
    nop
    ld e, $01
    inc sp
    inc c
    ld h, c
    jr @+$62

    db $10
    ret nz

    jr nc, @-$3e

    jr nz, jr_008_4f47

    jr nz, jr_008_4f89

jr_008_4f89:
    nop
    add e
    ld b, b
    add [hl]
    ld b, c
    adc h
    ld b, e
    adc h
    ld b, d
    sbc b
    ld b, [hl]
    jr jr_008_4f9a

    jr @+$06

    nop
    nop

jr_008_4f9a:
    pop bc
    jr nc, jr_008_4ffd

    sbc b
    jr nc, jr_008_4fa8

    jr nc, @+$0e

    jr jr_008_4fa8

    jr jr_008_4faa

    jr @+$06

jr_008_4fa8:
    nop
    nop

jr_008_4faa:
    rst $00
    jr nz, jr_008_4f6f

    ld sp, $11e2
    ld [c], a
    add hl, de
    or d
    ld c, c
    or d
    ld c, l
    sbc d
    ld b, l
    nop
    nop
    rlca
    add b
    inc c
    add e
    jr jr_008_4fc6

    jr jr_008_4fc6

    jr nc, jr_008_4fd0

    jr nc, jr_008_4fce

jr_008_4fc6:
    jr nc, jr_008_4fd0

    nop
    nop
    and a
    ld d, b
    db $e3
    db $10

jr_008_4fce:
    ld h, e
    db $10

jr_008_4fd0:
    inc hl
    db $10
    inc hl
    db $10
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    ldh a, [$08]
    jr c, jr_008_4f62

    jr @-$7a

    jr jr_008_4f66

    jr jr_008_4f68

    jr @-$7a

    jr nc, @-$72

    nop
    nop
    ld [$0c04], sp
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    inc bc
    ld e, $01
    ld d, $09
    ld [hl], $09
    nop
    nop
    ccf
    nop
    inc hl

jr_008_4ffd:
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    rst $30
    ld [$2c13], sp
    inc de
    inc h
    inc de
    inc h
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    nop
    nop
    sbc l
    ld [hl+], a
    ld [$0833], sp
    ld de, $1108
    ld [$0811], sp
    ld de, $1108
    nop
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

jr_008_5031:
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ld [$0c10], sp
    jr nc, jr_008_505b

    jr nz, @+$1e

    jr nz, jr_008_5061

    jr nz, jr_008_505b

    ld l, b
    ld [hl], $48
    nop
    nop
    ccf

jr_008_504b:
    ld b, b
    inc hl

jr_008_504d:
    ld b, h
    inc hl
    ld b, h
    inc hl
    ld b, h
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    nop
    nop
    add e

jr_008_505b:
    inc c
    ld b, $19
    inc c
    db $10
    inc c

jr_008_5061:
    jr nc, jr_008_507b

    jr nz, @+$1a

    jr nz, jr_008_507f

    jr nz, jr_008_5069

jr_008_5069:
    nop
    pop bc
    ld [bc], a
    ld h, b
    add e
    jr nc, jr_008_5031

    jr nc, jr_008_50b3

    jr jr_008_50d5

jr_008_5074:
    jr jr_008_5097

jr_008_5076:
    jr @+$23

jr_008_5078:
    nop
    nop

jr_008_507a:
    rst $00

jr_008_507b:
    ld [$0cc2], sp
    ld [c], a

jr_008_507f:
    inc b
    ld [c], a
    inc b
    or d
    ld b, h
    or d
    ld b, h
    sbc d
    ld h, h
    ret nz

    jr nz, jr_008_504b

    jr nz, jr_008_504d

    jr nc, jr_008_50f0

    db $10
    ld h, c
    jr @+$35

    inc c
    ld e, $01
    nop

jr_008_5097:
    nop
    jr jr_008_509e

    jr jr_008_50a0

    jr jr_008_50a4

jr_008_509e:
    adc h
    ld b, d

jr_008_50a0:
    adc h
    ld b, e
    ld b, $c1

jr_008_50a4:
    inc bc
    add b
    nop
    nop
    jr jr_008_50ae

    jr jr_008_50b0

    jr jr_008_50b2

jr_008_50ae:
    jr nc, jr_008_50bc

jr_008_50b0:
    jr nc, jr_008_50ba

jr_008_50b2:
    ld h, b

jr_008_50b3:
    sbc b
    pop bc
    jr nc, jr_008_50b7

jr_008_50b7:
    nop
    sbc d
    ld b, l

jr_008_50ba:
    adc [hl]
    ld b, c

jr_008_50bc:
    adc [hl]
    ld b, c
    add [hl]
    ld b, c
    add [hl]
    ld b, c
    add d
    ld b, c
    jp nz, Jump_000_0021

    nop
    jr nc, jr_008_50d2

    jr nc, jr_008_50d4

    jr nc, @+$0e

    jr jr_008_50d4

    jr jr_008_50d8

jr_008_50d2:
    inc c
    inc bc

jr_008_50d4:
    rlca

jr_008_50d5:
    nop
    nop
    nop

jr_008_50d8:
    di
    ld [$1823], sp
    inc hl
    db $10
    ld h, e
    db $10
    ld h, e
    db $10
    jp $8730


    ld h, b
    nop
    nop
    ldh [rNR23], a
    ld [hl], b
    adc b

jr_008_50ec:
    jr nc, jr_008_507a

    jr c, jr_008_5074

jr_008_50f0:
    jr jr_008_5076

    jr jr_008_5078

    sbc [hl]
    ld b, c
    nop
    nop
    ld h, $11
    ccf
    nop
    inc hl
    db $10
    ld h, e
    db $10
    ld b, e
    jr nc, jr_008_5146

    jr nz, jr_008_50ec

    stop
    nop
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    ret nz

    add e
    ld b, b
    add e
    ld h, b
    rst $00
    jr nz, jr_008_5117

jr_008_5117:
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0106
    ld [bc], a
    add b
    inc bc
    nop

jr_008_5127:
    nop
    ld [$0811], sp

jr_008_512b:
    ld de, $3108
    sbc b
    ld hl, $6190
    ldh a, [$03]
    pop hl
    ld [bc], a
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    pop bc
    ld [bc], a
    jp nz, $c604

    ld [$01fe], sp

jr_008_5146:
    nop
    nop
    ld h, $48
    ccf
    ld b, b
    inc hl
    call nz, $8463
    ld b, e
    add h
    ld b, e

jr_008_5153:
    adc h
    rst $20
    ld [$0000], sp
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    add e
    inc b
    add e
    inc c
    rst $00
    ld [$0000], sp
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc c
    add a
    ld [$0000], sp
    jr jr_008_519a

    jr @+$22

    jr jr_008_519e

    inc c
    jr nc, @+$0e

    db $10
    ld b, $19
    add e
    inc c
    nop
    nop
    jr @+$23

    jr jr_008_51ad

    jr @+$63

    jr nc, jr_008_51d1

    jr nc, jr_008_5153

    ld h, b
    add e
    pop bc
    ld [bc], a
    nop
    nop
    sbc d
    inc h

jr_008_519a:
    adc [hl]
    jr nc, jr_008_512b

    db $10

jr_008_519e:
    add [hl]
    jr jr_008_5127

    ld [$0c82], sp
    jp nz, Jump_000_0004

    nop
    ld a, h
    nop
    ld de, $1100

jr_008_51ad:
    nop
    ld de, $1100
    nop
    ld de, $1000
    nop
    nop
    nop
    ldh [rP1], a
    stop
    stop
    stop
    stop
    stop
    ldh [rP1], a
    nop
    nop
    inc a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    inc a
    nop
    ld [hl+], a

jr_008_51d1:
    nop
    ld [hl+], a
    nop
    inc a
    nop
    nop
    nop
    ldh a, [rP1]
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    db $e3
    nop
    inc d
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc d
    nop
    db $e3
    nop
    nop
    nop
    sub c
    nop
    ld d, c
    nop
    ld e, c
    nop
    ld d, l
    nop
    ld d, e
    nop
    ld d, c
    nop
    sub c
    nop
    nop
    nop
    ld a, l
    nop
    stop
    stop
    stop
    stop
    stop
    ld de, $0000
    nop
    pop de
    nop
    sub c
    nop
    sbc c
    nop
    sub l
    nop
    sub e
    nop
    sub c
    nop
    pop de
    nop
    nop
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    add hl, sp
    nop
    nop
    nop
    rst $28
    nop
    ld [$0800], sp
    nop
    add sp, $00
    ld [$0800], sp
    nop
    rst $28
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
    add b
    nop
    add b
    nop
    ld a, [hl+]
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
    db $f4
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, a
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    nop
    nop
    ld b, h
    nop
    ld c, d
    nop
    ld d, c
    nop
    pop de
    nop
    ld e, a
    nop
    ld d, c
    nop
    ld d, c
    nop
    nop
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld h, l
    nop
    ld d, l
    nop
    ld c, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    nop
    nop
    stop
    jr nz, jr_008_52ac

jr_008_52ac:
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_008_52b4

jr_008_52b4:
    stop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    inc d
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    nop
    nop
    ld [hl], d
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    ld [hl], c
    nop
    nop
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    jr nz, jr_008_52e4

jr_008_52e4:
    call nz, RST_00
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add hl, bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld bc, $0505
    nop
    dec b
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    nop
    ld [bc], a
    inc bc
    inc bc
    dec b
    dec b
    nop
    ld [de], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    sbc $7b
    jp c, Jump_000_1211

    ld bc, $0000
    inc e
    ld d, e
    jp c, Jump_000_1211

    ld bc, $0000
    inc e
    ld d, e
    jp c, $4411

    ld a, c
    nop
    nop
    call c, $df22
    ld h, e
    ld b, h
    ld a, c
    nop
    nop
    sbc $7b
    ld [de], a
    ld bc, $7944
    nop
    nop
    rst $18
    ld h, e
    jp c, Jump_000_1211

    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    sbc e
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
    rst $38
    ld a, a
    add hl, sp
    ld h, a
    rst $28
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    ld hl, $542e
    ldh a, [$8b]
    cp $01
    jr nz, jr_008_5418

    ld hl, $56ee

jr_008_5418:
    ld bc, $02c0
    ld de, $8000
    ld a, $00

jr_008_5420:
    call Call_000_07ce
    ld hl, $59ae
    ld de, $98e3
    xor a
    call Call_000_080b
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
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0001
    nop
    rra
    rrca
    ld [hl], b
    jr nc, jr_008_5420

    ld b, a
    cp a
    sbc a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei

jr_008_548c:
    ei
    ei
    nop
    nop
    pop af
    db $e3
    ld e, $1a
    and [hl]
    add $ea
    ld a, [c]
    ld a, [c]
    ld a, [$f8fc]
    ld hl, sp-$04
    nop
    nop
    db $fc
    cp $02
    ld [bc], a
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$0000]
    rlca
    inc bc
    inc e
    inc c
    ld [hl-], a
    ld de, $276f
    ld e, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    nop
    nop
    rst $38
    rst $38
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
    nop
    nop
    sbc a
    rst $08
    ld [hl], b
    ld [hl], b
    ld c, e
    ld b, a
    cpl
    rra
    ld e, a

jr_008_54d9:
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    nop
    nop
    ldh a, [$e0]
    dec e
    jr jr_008_548c

    push bc
    ld [$f5f2], a
    ld hl, sp-$03
    ld hl, sp-$08
    db $fd
    nop
    nop
    ld a, a
    ccf
    ret nz

    ret nz

    cpl
    rra
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    nop
    nop
    ld a, h
    jr c, jr_008_54d9

    ld b, h
    cp d
    cp d
    xor d
    xor d
    or d
    or d
    xor d
    xor d
    add $44
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ccf
    jr nz, jr_008_554e

    ld a, a
    ld a, a
    ccf
    ld a, a
    cp a
    cp a
    cp a
    sbc a
    rst $08
    ld e, a
    ld e, a
    ld c, a
    rst $18
    adc a
    cpl
    rra
    pop bc
    add c
    cp l
    dec e
    and l
    dec h
    dec [hl]
    and l
    push de
    sub l
    db $dd
    push de
    call $eded
    db $ed

jr_008_554e:
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld sp, hl
    ldh a, [$fb]
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    cp $fc
    db $fc
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $20
    rst $28
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld sp, hl
    ei
    ld hl, sp-$08
    ld e, a
    ld e, a
    ld c, a
    ld e, a
    ld l, a
    cpl
    cpl
    daa
    inc sp
    rla
    rla
    inc de
    rst $30
    db $e3
    dec bc
    rlca
    ldh a, [$e0]
    rst $28
    rst $00
    jp hl


    ret


    call $f5e9
    push hl
    rst $30
    push af
    di
    ei
    ei
    ei
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, h
    db $fd
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    db $fd
    ld a, l
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    jp nz, $dcc2

    sbc $d0
    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ld a, h
    jr c, jr_008_5601

jr_008_5601:
    nop
    nop

Call_008_5603:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    jr nz, jr_008_563a

    rra
    ccf
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
    db $fd
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    db $ec
    db $ed
    call $edec
    call z, $92d6
    inc sp
    ld hl, $c0e1

jr_008_563a:
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cpl
    rra
    ret nz

    ret nz

    ld a, a
    ccf
    nop
    nop
    di
    ei
    ei
    di
    db $eb
    di
    db $d3
    db $e3
    ld c, e
    adc e
    jr c, jr_008_5692

    rst $20
    rst $08
    nop
    nop
    rst $28
    rst $20
    db $e3
    rst $20
    push hl
    db $e3
    ld [$ece9], a
    db $ec
    rrca
    dec bc
    pop af
    ld hl, sp+$00
    nop
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    cp e
    ld a, e
    nop
    nop
    rst $38
    rst $38
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
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ei
    ei
    di
    ei

jr_008_5692:
    ei
    di
    push af
    db $e4
    ld c, h
    adc b
    jr c, jr_008_56ca

    ldh [$c0], a
    nop
    nop
    ccf
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    xor a
    sbc a
    bit 0, a
    ld [hl], b
    jr nc, jr_008_56ca

    rrca
    nop
    nop
    ld sp, hl
    db $fd
    db $fd
    ld sp, hl
    push af
    ld sp, hl
    jp hl


    pop af
    and l
    push bc
    inc e
    inc e
    di
    rst $20
    nop
    nop
    ldh a, [$f0]
    di
    rst $30
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    inc b
    inc b

jr_008_56ca:
    ld hl, sp-$04
    nop
    nop
    rlca
    rlca
    rst $20
    rst $30
    rla
    rla
    rla
    rla
    rla
    rla
    db $10
    db $10
    rrca
    rra
    nop
    nop
    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    db $10
    db $10
    ldh [$f0], a
    nop
    nop

    INCBIN "gfx/image_008_56ee.2bpp"

    INCBIN "gfx/image_008_58ee.2bpp"

    db $0f, $03, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $07
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $00

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_008_6a08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
