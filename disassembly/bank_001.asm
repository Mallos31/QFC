; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    call Call_000_0783
    di
    call Call_000_0679
    ld a, [$cf46]
    ld [$c227], a
    ld hl, $9800
    call Call_000_098d
    ld a, $08
    ld hl, $540c
    call Call_000_0061
    ldh a, [$8b]
    cp $01
    jr nz, jr_001_402d

    ld hl, $5220
    call Call_000_0d52
    ld hl, $5220
    call Call_000_0d37

jr_001_402d:
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $fc
    ld [$cf1b], a
    ld [$cf1c], a
    ld [$cf1d], a
    ld a, $d1
    call Call_000_04a0
    ld a, $02
    ld [$dd02], a
    xor a
    ld [$dd00], a
    ld [$dd01], a
    call Call_000_0389
    ld b, $b4

jr_001_405d:
    call Call_000_0389
    call Call_000_06f6
    ldh a, [$8d]
    bit 3, a
    jr nz, jr_001_406c

    dec b
    jr nz, jr_001_405d

jr_001_406c:
    call Call_000_0783
    di
    call Call_000_0679
    ld a, [$cf46]
    ld [$c227], a
    xor a
    ldh [$a4], a
    ldh [$a5], a
    ld a, $00
    ld [$c582], a
    ld hl, $0bfc
    ldh a, [$8b]
    cp $02
    call nc, Call_000_09b0
    ld hl, $9800
    call Call_000_098d
    ldh a, [$8b]
    cp $01
    jr nz, jr_001_40cb

    ld hl, $5260
    ld bc, $0520
    ld de, $9000
    ld a, $00
    call Call_000_07ce
    ld hl, $5984
    call Call_000_0d52
    ld hl, $5984
    call Call_000_0d37
    ld hl, $581a
    ld de, $9800
    ld a, $01
    call Call_000_080b
    ld hl, $56b0
    ld de, $9800
    ld a, $00
    call Call_000_080b
    jr jr_001_40e2

jr_001_40cb:
    ld hl, $4711
    ld de, $9000
    ld bc, $0450
    ld a, $00
    call Call_000_07ce
    ld de, $4b61
    ld hl, $9800
    call Call_000_069a

jr_001_40e2:
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, $8f
    ldh [rWY], a
    ld a, $b0
    ldh [rWX], a
    ld a, $e4
    ld [$cf1b], a
    ld [$cf1c], a
    ld [$cf1d], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ldh [$95], a
    xor a
    ldh [rSC], a
    ld a, $c3
    call Call_000_04a0
    call Call_000_0389
    ld b, $b4

jr_001_4112:
    call Call_000_0389
    call Call_000_06f6
    ldh a, [$8d]
    bit 3, a
    jr nz, jr_001_4121

    dec b
    jr nz, jr_001_4112

jr_001_4121:
    call Call_000_0783
    di
    call Call_000_0679
    xor a
    ldh [$a4], a
    ldh [$a5], a
    ld a, $00
    ld [$c582], a
    ldh a, [$8b]
    cp $01
    jr nz, jr_001_419d

    ld hl, $59c4
    ld bc, $0800
    ld de, $9000
    ld a, $00
    call Call_000_07ce
    ld hl, $61c4
    ld bc, $0580
    ld de, $8800
    ld a, $00
    call Call_000_07ce
    ld hl, $4ccb
    ld bc, $0200
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $68ae
    call Call_000_0d52
    ld hl, $68ae
    call Call_000_0d37
    ld hl, $6744
    ld de, $9800
    ld a, $01
    call Call_000_080b
    ld hl, $4e8b
    ld de, $9800
    ld a, $00
    call Call_000_080b
    ld hl, $68ee
    ld de, $9c00
    ld a, $01
    call Call_000_080b
    ld hl, $5070
    ld de, $9c00
    ld a, $00
    call Call_000_080b
    jp Jump_001_41dd


jr_001_419d:
    ld hl, $6a58
    ld bc, $0800
    ld de, $9000
    ld a, $00
    call Call_000_07ce
    ld hl, $7258
    ld bc, $0580
    ld de, $8800
    ld a, $00
    call Call_000_07ce
    ld hl, $4ccb
    ld bc, $0200
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $4e8b
    ld de, $9800
    ld a, $00
    call Call_000_080b
    ld hl, $5070
    ld de, $9c00
    ld a, $00
    call Call_000_080b

Jump_001_41dd:
    ld a, $b8
    ld [$c110], a
    ld a, $68
    ld [$c111], a
    ld a, [$cf46]
    add $02
    ld [$c112], a
    ld a, $03
    ld [$c113], a
    ld a, $c8
    ld [$c13c], a
    ld [$c140], a
    ld [$c144], a
    ld [$c148], a
    ld [$c14c], a
    ld a, $68
    ld [$c13d], a
    add $08
    ld [$c141], a
    add $08
    ld [$c145], a
    add $08
    ld [$c149], a
    add $08
    ld [$c14d], a
    ld a, [$c582]
    ld hl, $5039
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf20]
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c13e], a
    ld a, [hl+]
    ld [$c142], a
    ld a, [hl+]
    ld [$c146], a
    ld a, [hl+]
    ld [$c14a], a
    ld a, [hl]
    ld [$c14e], a
    ld a, $03
    ld [$c13f], a
    ld [$c143], a
    ld [$c147], a
    ld [$c14b], a
    ld [$c14f], a
    ld a, $d8
    ld [$c150], a
    ld [$c154], a
    ld a, $68
    ld [$c151], a
    add $08
    ld [$c155], a
    ld a, $01
    ld [$c152], a
    ld [$c156], a
    ld a, $03
    ld [$c153], a
    ld [$c157], a
    ld a, $e8
    ld [$c158], a
    ld [$c15c], a
    ld a, $68
    ld [$c159], a
    add $08
    ld [$c15d], a
    ld a, $01
    ld [$c15a], a
    ld [$c15e], a
    ld a, $03
    ld [$c15b], a
    ld [$c15f], a
    ld a, $64
    ld [$c160], a
    ld [$c164], a
    ld [$c168], a
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    ld a, $38
    ld [$c161], a
    add $08
    ld [$c165], a
    add $08
    ld [$c169], a
    add $08
    ld [$c16d], a
    add $08
    ld [$c171], a
    add $08
    ld [$c175], a
    ld hl, $51f2
    ld a, [hl+]
    ld [$c162], a
    ld a, [hl+]
    ld [$c166], a
    ld a, [hl+]
    ld [$c16a], a
    ld a, [hl+]
    ld [$c16e], a
    ld a, [hl+]
    ld [$c172], a
    ld a, [hl+]
    ld [$c176], a
    ld a, $03
    ld [$c163], a
    ld [$c167], a
    ld [$c16b], a
    ld [$c16f], a
    ld [$c173], a
    ld [$c177], a
    ld a, $e4
    ld [$cf1b], a
    ld a, $c3
    ld [$cf1c], a
    ld a, $27
    ld [$cf1d], a
    xor a
    ld [$d3d0], a
    call Call_000_0e7d
    ld a, $e3
    call Call_000_04a0
    xor a
    ld [$dd02], a
    ld a, $06
    ld [$dd00], a
    xor a
    ld [$dd01], a
    ld b, $00

jr_001_4327:
    call Call_000_0389
    call Call_000_06f6
    inc b
    ld a, b
    and $1f
    jr nz, jr_001_4352

    ld hl, $4ff5
    bit 5, b
    jr z, jr_001_4348

    ld de, $5031
    ld a, [$c582]
    call Call_000_07f4
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a

jr_001_4348:
    ld de, $9963
    push bc
    ld a, $00
    call Call_000_0838
    pop bc

jr_001_4352:
    ldh a, [$8d]
    bit 3, a
    jr z, jr_001_4327

Jump_001_4358:
    ld de, $5035
    ld a, [$c582]
    call Call_000_07f4
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld de, $9962
    ld a, $00
    call Call_000_0838
    call Call_000_0389

Jump_001_4371:
    ld a, $58
    ld [$c100], a
    ld a, $1f
    ld [$c101], a
    ld a, $d7
    ld [$c102], a
    ld a, $12
    ld [$c103], a
    ld hl, $c160
    ld b, $06

jr_001_438a:
    ld a, $e4
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_001_438a

    ld b, $00

jr_001_4395:
    call Call_000_0616
    call Call_000_0389
    call Call_000_06f6
    ld a, [$d917]
    and a
    jp nz, Jump_001_4468

    ldh a, [$8d]
    and $31
    jr z, jr_001_4395

    bit 0, a
    jr z, jr_001_43bc

    ld a, $0f
    ld [$dd01], a
    ld a, b
    cp $01
    jp z, Jump_001_44a0

    jr jr_001_43e6

jr_001_43bc:
    bit 4, a
    jr nz, jr_001_43ca

    dec b
    ld a, b
    cp $ff
    jr nz, jr_001_43d2

    ld b, $01
    jr jr_001_43d2

jr_001_43ca:
    inc b
    ld a, b
    cp $02
    jr c, jr_001_43d2

    ld b, $00

jr_001_43d2:
    ld a, $10
    ld [$dd01], a
    ld a, b
    ld hl, $4cc9
    call Call_000_07e6
    ld a, $1f
    add [hl]
    ld [$c101], a
    jr jr_001_4395

jr_001_43e6:
    and a
    jr nz, jr_001_4426

    ld a, [$cf46]
    ld [$c227], a
    call Call_000_0ebe
    xor a
    ld [$c200], a
    ld [$c204], a
    ld [$c205], a
    ld [$c588], a
    ld [$c589], a
    ld [$c58a], a
    ld [$c58b], a
    ld [$c538], a
    ld a, $07
    ld [$c514], a
    ld a, $01
    ld [$c515], a
    ld a, $4b
    ld [$c51c], a
    xor a
    ld [$c202], a
    ld a, $03
    ld hl, $4000
    jp Jump_000_0077


jr_001_4426:
    call Call_000_0ed3
    xor a
    ld [$d911], a
    ld [$d912], a
    ld [$d913], a
    ld [$d914], a
    xor a
    ld [$d90c], a
    ld [$d90d], a
    ld [$d90e], a
    ld [$d90f], a
    ld b, $f8

jr_001_4445:
    call Call_000_0616
    call Call_000_0389
    ld a, [$d917]
    and a
    jr nz, jr_001_4468

    ld a, b
    and $07
    jr nz, jr_001_4465

    ld hl, $c160
    ld c, $06

jr_001_445b:
    ld a, [hl]
    add $80
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_001_445b

jr_001_4465:
    dec b
    jr nz, jr_001_4445

Jump_001_4468:
jr_001_4468:
    jp z, Jump_001_4371

    xor a
    ld [$c200], a
    ld [$c204], a
    ld [$c205], a
    ld [$c588], a
    ld [$c589], a
    ld [$c58a], a
    ld [$c58b], a
    ld [$c538], a
    ld a, $07
    ld [$c514], a
    ld a, $01
    ld [$c515], a
    ld a, $4b
    ld [$c51c], a
    ld a, $01
    ld [$c202], a
    ld a, $03
    ld hl, $4000
    jp Jump_000_0077


Jump_001_44a0:
    xor a
    ld [$dd00], a
    ld a, $00
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    call Call_000_0389
    ld hl, $4cc9
    call Call_000_07e6
    ld a, $30
    add [hl]
    ld a, $37
    ld [$c100], a
    ld a, $14
    ld [$c101], a
    ld a, $d7
    ld [$c102], a
    ld a, $12
    ld [$c103], a
    ld hl, $c110
    ld c, $14

jr_001_44d1:
    ld a, [hl]
    sub $80
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_001_44d1

    ld a, $01
    ld [$c152], a
    ld [$c156], a
    ld [$c15a], a
    ld [$c15e], a
    xor a
    ldh [$a1], a
    ldh [$a2], a
    ld b, a

Jump_001_44ef:
jr_001_44ef:
    call Call_000_0616
    call Call_000_0389
    call Call_000_06f6
    ldh a, [$8d]
    and $f3
    jr z, jr_001_44ef

    ldh a, [$8d]
    bit 1, a
    jr z, jr_001_4533

    ld a, $11
    ld [$dd01], a
    ld a, $a8
    ld [$c100], a
    ld hl, $c110
    ld c, $14

jr_001_4513:
    ld a, [hl]
    add $80
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_001_4513

    call Call_000_0616
    call Call_000_0389
    ld a, $8f
    ldh [rWY], a
    ld a, $b0
    ldh [rWX], a
    ld a, $06
    ld [$dd00], a
    jp Jump_001_4358


jr_001_4533:
    and $c0
    jr z, jr_001_455c

    bit 7, a
    jr nz, jr_001_4545

    dec b
    ld a, b
    cp $ff
    jr nz, jr_001_454d

    ld b, $03
    jr jr_001_454d

jr_001_4545:
    inc b
    ld a, b
    cp $04
    jr c, jr_001_454d

    ld b, $00

jr_001_454d:
    ld a, $10
    ld [$dd01], a
    ld a, b
    swap a
    add $37
    ld [$c100], a
    jr jr_001_44ef

jr_001_455c:
    ldh a, [$8d]
    bit 0, a
    jr z, jr_001_4586

    bit 1, b
    jr z, jr_001_44ef

    bit 0, b
    jr nz, jr_001_4578

    xor a
    ld [$dd01], a
    ldh a, [$a1]
    add $01
    ld [$dd00], a
    jp Jump_001_44ef


jr_001_4578:
    xor a
    ld [$dd00], a
    ldh a, [$a2]
    add $0f
    ld [$dd01], a
    jp Jump_001_44ef


jr_001_4586:
    ld a, b
    ld hl, $5029
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$8d]
    call Call_000_007c
    bit 5, a
    jr z, jr_001_45a5

    ld a, [$cf46]
    dec a
    cp $ff
    jr nz, jr_001_45ae

    ld a, $04
    jr jr_001_45ae

jr_001_45a5:
    ld a, [$cf46]
    inc a
    cp $05
    jr c, jr_001_45ae

    xor a

jr_001_45ae:
    ld [$cf46], a
    add $02
    ld [$c112], a
    ld a, $0f
    ld [$dd01], a
    jp Jump_001_44ef


    bit 5, a
    jr z, jr_001_45cd

    ldh a, [$a4]
    dec a
    cp $ff
    jr nz, jr_001_45d5

    ld a, $02
    jr jr_001_45d5

jr_001_45cd:
    ldh a, [$a4]
    inc a
    cp $03
    jr c, jr_001_45d5

    xor a

jr_001_45d5:
    ldh [$a4], a
    ld a, [$c582]
    ld hl, $5039
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$a4]
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c116], a
    ld a, [hl+]
    ld [$c11a], a
    ld a, [hl+]
    ld [$c11e], a
    ld a, [hl+]
    ld [$c122], a
    ld a, [hl]
    ld [$c126], a
    ld a, $0f
    ld [$dd01], a
    jp Jump_001_44ef


    bit 5, a
    jr z, jr_001_4616

    ldh a, [$a5]
    dec a
    cp $ff
    jr nz, jr_001_461e

    ld a, $02
    jr jr_001_461e

jr_001_4616:
    ldh a, [$a5]
    inc a
    cp $03
    jr c, jr_001_461e

    xor a

jr_001_461e:
    ldh [$a5], a
    ld a, [$c582]
    ld hl, $5039
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$a5]
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c12a], a
    ld a, [hl+]
    ld [$c12e], a
    ld a, [hl+]
    ld [$c132], a
    ld a, [hl+]
    ld [$c136], a
    ld a, [hl]
    ld [$c13a], a
    ld a, $0f
    ld [$dd01], a
    jp Jump_001_44ef


    bit 5, a
    jr z, jr_001_4660

    ld a, [$cf20]
    dec a
    cp $ff
    jr nz, jr_001_4669

    ld a, $02
    jr jr_001_4669

jr_001_4660:
    ld a, [$cf20]
    inc a
    cp $03
    jr c, jr_001_4669

    xor a

jr_001_4669:
    ld [$cf20], a
    ld a, [$c582]
    ld hl, $5039
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf20]
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c13e], a
    ld a, [hl+]
    ld [$c142], a
    ld a, [hl+]
    ld [$c146], a
    ld a, [hl+]
    ld [$c14a], a
    ld a, [hl]
    ld [$c14e], a
    ld a, $0f
    ld [$dd01], a
    jp Jump_001_44ef


    bit 5, a
    jr z, jr_001_46ac

    ldh a, [$a1]
    dec a
    cp $ff
    jr nz, jr_001_46b4

    ld a, $0b
    jr jr_001_46b4

jr_001_46ac:
    ldh a, [$a1]
    inc a
    cp $0c
    jr c, jr_001_46b4

    xor a

jr_001_46b4:
    ldh [$a1], a
    ld hl, $51f8
    call Call_000_07e6
    ld a, [hl]
    swap a
    and $0f
    add $01
    ld [$c152], a
    ld a, [hl]
    and $0f
    add $01
    ld [$c156], a
    ldh a, [$a1]
    ld a, $10
    ld [$dd01], a
    jp Jump_001_44ef


    bit 5, a
    jr z, jr_001_46e7

    ldh a, [$a2]
    dec a
    cp $ff
    jr nz, jr_001_46ef

    ld a, $0f
    jr jr_001_46ef

jr_001_46e7:
    ldh a, [$a2]
    inc a
    cp $10
    jr c, jr_001_46ef

    xor a

jr_001_46ef:
    ldh [$a2], a
    ld hl, $51f8
    call Call_000_07e6
    ld a, [hl]
    swap a
    and $0f
    add $01
    ld [$c15a], a
    ld a, [hl]
    and $0f
    add $01
    ld [$c15e], a
    ld a, $10
    ld [$dd01], a
    jp Jump_001_44ef


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $18
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
    nop
    nop
    nop
    nop
    call z, $fef0
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
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    inc bc
    dec bc
    rlca
    rla
    rrca
    cpl
    rra
    dec b
    inc bc
    rla
    rrca
    ld e, a
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
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
    or $f8
    and b
    ret nz

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $60
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$10
    db $fd
    cp $fe
    rst $38
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

jr_001_47c3:
    nop
    nop
    ld b, b
    add b
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
    inc bc
    nop
    dec bc
    rlca
    rra
    rrca
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    jr jr_001_47c3

    ld_long a, $fffc
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    ret nz

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
    ld bc, $0000
    ld bc, $0103
    inc bc
    ld bc, $3f5f
    ccf
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fe
    db $fc
    ld hl, sp-$04
    db $f4
    ld hl, sp-$30
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    ld [bc], a
    ld bc, $070b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0f17
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    nop
    ld l, a
    rra
    rst $38
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
    nop
    nop
    ret z

    ldh a, [$fd]
    cp $ff
    rst $38

jr_001_4879:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rrca
    dec bc
    rlca
    ld b, e
    add b
    and b
    ret nz

    ret nz

    ldh [$f0], a
    ldh [$e0], a
    ldh a, [rIE]
    rst $38
    rst $38
    cp $fa
    db $fc
    jr jr_001_4879

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0103
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$e1]
    ldh a, [$e0]
    pop af
    db $e3
    pop af
    pop hl
    di
    rla
    rrca
    cpl
    rra
    ld e, a
    ccf
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
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh a, [$e0]
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    ld e, a
    ccf
    cpl
    rra
    rla
    rrca
    di
    di
    ei
    di
    di
    ei
    db $fd
    ei
    ei
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    ret nz

    ldh [$e0], a
    ret nz

    add b
    ret nz

    ret nz

    add b
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    dec bc
    rlca
    dec b
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    rla
    rrca
    dec b
    inc bc
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
    rst $18
    ccf
    inc c
    inc bc
    rst $38
    rst $38
    rst $38
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
    call z, $fff0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$e8fc]
    ldh a, [$c0]
    nop
    nop
    nop
    db $f4
    ld hl, sp-$18
    ldh a, [$a0]
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
    nop
    rrca
    rrca
    rrca
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld e, e
    ld a, a
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $1c
    ld a, $36
    ld [hl], $36
    ld [hl], $36
    ld c, $06
    nop
    nop
    nop
    nop
    ld c, $06
    inc a
    jr jr_001_4a76

    jr z, jr_001_4a68

    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
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
    nop
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rla
    rra
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    jr @+$40

    inc d
    ld [hl], $36
    ld [hl], $36
    ld a, $36
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
    nop
    nop
    nop
    nop
    ldh [$c0], a
    ldh a, [$a0]
    or b
    or b
    or b
    or b
    ldh a, [$b0]
    nop
    nop
    nop
    nop
    nop
    nop
    rlca

jr_001_4a68:
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop

jr_001_4a76:
    nop
    ldh [$e0], a
    and b
    jr nz, jr_001_4a9c

    jr nz, jr_001_4a7e

jr_001_4a7e:
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rrca
    ld b, $0f
    rrca
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l

jr_001_4a9c:
    ld l, l
    db $ed
    ld l, l
    db $ed
    db $ed
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
    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ld e, $0e
    ld e, $1e
    ld a, $16
    ld [hl], $36
    ld [hl], $36
    scf
    ld [hl], $3f
    scf
    ccf
    add hl, de
    nop
    nop
    nop
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
    add b
    ld l, h
    ld l, h
    ld l, h
    jr z, jr_001_4b0e

    jr jr_001_4b48

    ld h, b
    ld l, b
    ld [hl], b
    ld a, [hl]
    inc a
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    nop
    nop
    nop
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
    ld bc, $c0c0
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

    ldh [$c0], a
    ldh [$e0], a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, sp

jr_001_4b0e:
    add hl, de
    add hl, sp
    add hl, sp
    ld a, $3e
    jr nc, jr_001_4b45

    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], $12
    ld e, $14
    inc e
    inc c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    add b
    add b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    or b
    sub b
    ldh a, [$a0]
    ldh [$60], a
    inc bc
    inc bc
    inc bc
    inc bc

jr_001_4b45:
    inc bc
    inc bc
    inc bc

jr_001_4b48:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    rlca
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc h
    inc a
    jr jr_001_4b5a

jr_001_4b5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_001_4c02

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    dec de
    dec de
    dec de
    dec de
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4c02:
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_001_4c2a

    dec de
    dec de
    dec de
    dec de
    ld [hl+], a
    inc hl
    nop
    nop
    nop
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
    dec h
    ld h, $1b
    daa
    jr z, jr_001_4c4b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4c2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    dec hl
    inc l
    dec l
    nop
    ld l, $2f
    jr nc, jr_001_4c7a

    inc l
    ld [hl-], a

jr_001_4c4b:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    scf
    nop
    jr c, jr_001_4c90

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    add hl, sp
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4c7a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4c90:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $38

    INCBIN "gfx/image_001_4ccb.2bpp"

    INCBIN "gfx/image_001_4dcb.2bpp"

    db $14, $12, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02
    db $03, $04, $00, $00, $00, $00, $00, $05, $06, $00, $00, $00, $00, $00, $00, $00
    db $00, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $00
    db $00, $00, $00, $00, $00, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $00, $00, $00, $00, $00, $00, $23, $24, $25, $26, $27, $28, $29
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $00, $00, $00, $00, $00, $31, $32, $33, $34
    db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $00, $00, $00, $00
    db $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50
    db $51, $00, $00, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $54, $5d
    db $5e, $5f, $60, $61, $62, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $63, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $00, $00, $00, $00
    db $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1e, $0f, $02, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $10
    db $10
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

    db $95, $45, $50, $46, $9d, $46, $d8, $46, $3d, $50

    ld hl, sp+$51

    db $4d, $50

    ld hl, sp+$51

    db $da, $51

    ld hl, sp+$51

    db $0d, $0d, $01, $00, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c
    db $20, $10, $02, $00, $00, $00, $8d, $8e, $8f, $00, $00, $00, $00, $90, $91, $92
    db $93, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $14, $12, $a1, $a2, $a3, $a2, $a3, $a2, $a3, $a2, $a3, $a2, $a3
    db $a2, $a3, $a2, $a3, $a2, $a3, $a2, $a4, $a5, $a6, $a7, $a8, $a9, $a8, $a9, $a8
    db $a9, $a8, $a9, $a8, $a9, $a8, $a9, $a8, $a9, $a8, $a9, $aa, $ab, $a6, $ac, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ad
    db $ab, $a6, $ac, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $ad, $ab, $a6, $ac, $00, $00, $00, $00, $00, $00, $ae, $af, $b0
    db $b1, $b2, $00, $00, $00, $00, $00, $ad, $ab, $a6, $ac, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ad, $ab, $a6, $ac, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ad
    db $ab, $a6, $ac, $00, $00, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $00, $00, $00
    db $00, $00, $00, $ad, $ab, $bb, $bc, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $bd, $be, $bf, $c0, $00, $00, $c1, $c2, $c3
    db $c4, $c5, $c6, $c7, $00, $00, $00, $00, $00, $00, $00, $c8, $c9, $a6, $ac, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ad
    db $ab, $a6, $ac, $00, $00, $ca, $cb, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $ad, $ab, $a6, $ac, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $ad, $ab, $a6, $ac, $00, $00, $cc, $cd, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ad, $ab, $a6, $ac, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ad
    db $ab, $a6, $ac, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $ad, $ab, $a6, $ce, $cf, $d0, $cf, $d0, $cf, $d0, $cf, $d0, $cf
    db $d0, $cf, $d0, $cf, $d0, $cf, $d0, $d1, $ab, $d2, $d3, $d4, $d3, $d4, $d3, $d4
    db $d3, $d4, $d3, $d4, $d3, $d4, $d3, $d4, $d3, $d4, $d3, $d5, $d6, $e0, $51, $e6
    db $51, $ec, $51, $0b, $0c, $0d, $00, $00

    nop

    db $0e, $0f, $10, $11, $12

    nop

    db $13, $14, $15, $00, $00

    nop

    db $16, $17, $18, $19, $1a, $1b, $00, $01, $02

    inc bc
    inc b
    dec b
    ld b, $07
    ld [$1009], sp
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    db $ff, $7f, $80, $7e, $00, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    INCBIN "gfx/image_001_5260.2bpp"

    INCBIN "gfx/image_001_5660.2bpp"

    db $14, $12, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $06, $07, $08
    db $09, $0a, $0b, $0c, $0d, $0e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $1a, $1b, $1c, $1d, $1b, $1b, $1b, $1b, $1e, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $1f, $20, $21, $1b, $1b, $1b, $1b, $22, $23
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $24, $25, $26, $1b
    db $27, $28, $29, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $2a, $00, $2b, $2c, $2d, $00, $2e, $2f, $30, $31, $2c, $32, $33, $34, $35, $36
    db $00, $00, $00, $00, $37, $00, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $39, $40
    db $41, $42, $43, $3b, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $44, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $14, $12, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $ff, $7f, $d6, $5a, $ad, $35, $00, $00, $ff, $7f, $9f, $52
    db $5f, $29, $1f, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00

    INCBIN "gfx/image_001_59c4.2bpp"

    INCBIN "gfx/image_001_66c4.2bpp"

    db $14, $12, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $7f, $3f, $13, $f4, $15
    db $00, $00, $ff, $7f, $f4, $7e, $a0, $19, $00, $00, $00, $00, $ff, $73, $df, $02
    db $1a, $01, $00, $00, $ff, $7f, $ff, $7f, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $14, $12, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $f4
    ld hl, sp-$1d
    ldh a, [$cd]
    db $e3
    sbc e
    rst $00
    scf
    adc a
    add sp, -$10
    ld b, e
    add b
    ccf
    nop
    ret nz

    ccf
    rst $18
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld c, d
    ld bc, $00ff
    rst $38
    nop
    rra
    ldh [$87], a
    ld hl, sp-$0f
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $28
    rra
    rst $30
    rrca
    cp e
    rlca
    db $fd
    inc bc
    xor $01
    ld [hl], a
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
    db $fc
    cp $f1
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
    cpl
    sbc a
    ld [hl], a
    rrca
    rst $30
    rrca
    cp $ff
    cp $fe
    db $fc
    cp $fc
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    rst $38
    ld hl, sp-$05
    ld hl, sp+$67
    rra
    ld l, a
    rra
    rst $08
    ccf
    rst $08
    ccf
    rst $18
    ccf
    ld e, a
    ccf
    rst $18
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf

jr_001_6af4:
    ld e, a
    ccf
    ld e, [hl]
    ccf
    rst $38
    rst $38

jr_001_6afa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_6aff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    adc a
    dec sp
    rlca
    or e
    ret nz

    ld sp, hl
    ret nz

    reti


    ldh [rIE], a
    ldh [$ed], a
    ldh a, [$ea]
    push af
    call Call_000_1fe2
    add b
    ld a, a
    rst $38
    db $fc
    ld a, [hl]
    cp b
    ld a, h
    pop af
    jr c, jr_001_6af4

    jr nc, jr_001_6afa

    jr c, jr_001_6aff

    inc a
    db $db
    jr c, @+$01

    rst $38
    ld e, [hl]
    ccf
    db $ec
    ld e, $f8
    inc c
    ld sp, hl
    ld [$1ceb], sp
    call $dd3e
    inc a
    rst $38
    rst $38
    cpl
    rra
    ld [hl], a
    rrca
    rst $38
    rlca
    cp $07
    db $76
    ld c, $e6
    ld e, $6e
    ld e, $ff
    rst $38
    rst $38
    rst $38
    ld [c], a
    pop af
    add a
    ret nz

    rra
    nop
    ld [hl], a
    inc c
    rst $30
    ld c, $b7
    rrca

jr_001_6b58:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp [hl]
    ld a, a
    ret z

    inc l
    reti


    ld [$18ea], sp
    ldh a, [$f7]
    rst $38
    rst $38
    ld [c], a
    pop af
    add a
    ret nz

    rra
    nop
    ld l, c
    db $10
    call c, $d730
    jr c, @+$7d

    add a
    cp e
    rst $00
    rst $30
    rst $08
    scf
    rst $08
    xor $1f
    db $ec
    ld e, $d9
    inc a
    reti


    jr c, jr_001_6b58

    rst $38
    sub a
    rst $08
    scf
    adc a
    scf
    rrca
    ld [hl], a
    rrca
    ldh a, [$08]
    cp a
    nop
    rst $38
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
    rla
    rrca
    rst $20
    rra
    rst $08
    ccf
    ei
    ld hl, sp-$02
    ld hl, sp-$06
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    ei
    db $fc
    rst $38
    db $fc
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    rst $08
    ccf
    ld l, a
    rra
    xor a
    ld e, a
    ld h, a
    sbc a
    rst $30
    rrca
    ld e, d
    inc a
    ld d, c
    jr c, jr_001_6c10

    jr nc, @+$71

    nop
    ld e, c
    ld b, $66
    rra
    ld c, a

jr_001_6bd5:
    ccf
    ld e, a
    ccf

jr_001_6bd8:
    ld a, h
    inc bc

jr_001_6bda:
    sbc $00

jr_001_6bdc:
    xor a
    ld d, b
    sbc $21
    db $fc
    inc bc
    di
    rrca
    ld h, a
    sbc a
    sbc h
    cp $3c
    nop
    call nz, $9430
    ld [hl], b
    ld [hl], l
    ldh a, [$f5]
    ldh a, [$f5]
    ldh a, [$f7]
    ldh a, [$75]
    ldh a, [$da]
    jr c, jr_001_6bd5

    jr c, jr_001_6bd8

    jr c, jr_001_6bda

    jr c, @-$24

    jr c, jr_001_6bdc

    ld a, [hl-]
    jp c, $9b39

    ld a, b
    db $dd
    inc a
    db $dd
    inc a
    db $dd
    inc a
    db $dd
    inc a

jr_001_6c10:
    call c, $5d3d
    cp h
    db $dd
    inc a
    db $dd
    inc a
    ld l, [hl]
    ld e, $ee
    ld e, $ee
    ld e, $6e
    ld e, $ae
    ld e, [hl]
    ld l, [hl]
    sbc [hl]
    xor $1e
    ld l, [hl]
    ld e, $f6
    ld c, $b5
    inc c
    or e
    ld [$01f6], sp
    db $fd
    inc bc
    cp e
    rlca
    ld d, a
    xor a
    or a
    ld c, a
    jp c, $bb38

    ld a, b
    ld a, d
    ld hl, sp-$0f
    ld a, [$f1f6]
    rst $38
    ldh a, [$f1]
    cp $fc
    rst $38
    db $db
    inc a
    db $dd
    ld a, $ef
    rra
    ld d, b
    adc h
    db $e3
    nop
    rst $38
    nop
    pop af
    ld c, $66
    sbc [hl]
    cp a
    ld a, b
    ld a, a
    db $fc
    cp $fe
    ld e, [hl]
    ld a, $96
    ld c, $e6
    ld [bc], a
    cp d
    ld b, $f6
    ld c, $b0
    rrca
    or a
    rrca
    rst $30
    rrca
    rst $30
    rrca
    or a
    rrca
    ld d, a
    xor a
    or a
    ld c, a
    rst $30
    rrca
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    rrca
    cp e
    rlca
    sbc e
    rlca
    db $dd
    inc bc
    db $ed
    inc bc
    db $76
    add c
    cp a
    ret nz

    rst $18
    ldh [$5f], a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    rst $18
    daa
    ld sp, hl
    db $fc
    di
    ld hl, sp-$19
    ldh a, [$cf]
    ldh [$d3], a
    call z, $fec9
    db $fc
    rst $38
    db $fd
    db $fc
    xor a
    ld h, b

jr_001_6cca:
    rst $08
    jr nz, @+$01

    nop
    ld a, [hl]
    ld bc, $039c
    rst $08
    ld bc, $00e7
    ei
    nop
    cp d
    ld a, b
    ld a, [hl-]
    ld hl, sp+$7a
    ld hl, sp+$7a
    ld hl, sp-$0e
    ld hl, sp-$09
    ldh a, [$f7]
    ld hl, sp-$07
    ld a, [hl]
    db $dd
    inc a
    db $dd
    inc a
    db $dd
    inc a
    db $ed
    inc e
    ld h, c
    inc c
    ld [hl], c
    nop

jr_001_6cf4:
    cp a
    nop
    ld sp, hl
    inc b
    ld l, [hl]
    ld e, $6e
    ld e, $6e
    ld e, $ee
    ld e, $6c
    ld e, $fd
    inc b
    db $e4
    rra
    adc [hl]
    ld a, a
    rst $30
    rrca
    or a
    rrca
    or [hl]
    rrca
    or b
    inc c
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$1e

    pop de
    jr c, jr_001_6cf4

    jr nc, jr_001_6cca

    ld [hl], b
    add hl, hl
    and $6a
    rst $20
    ld e, $fe
    cp $fe
    cp [hl]
    ld a, [hl]
    xor $1e
    jr c, jr_001_6d38

    sbc c
    nop
    rst $28
    nop
    ld a, a
    add b

jr_001_6d38:
    or [hl]
    ld c, $56
    xor [hl]
    or [hl]
    ld c, [hl]
    or $0e
    or [hl]
    ld c, $f7
    inc c
    call Call_000_3e3e
    rst $38
    or a
    rrca
    or a
    rrca
    or a
    rrca
    sbc e
    rlca
    call c, $ef00
    nop
    ei
    nop
    ld a, a
    add b
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
    rrca
    rra
    rst $28
    rra
    sbc a
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
    add b
    add b
    sbc b
    rst $20
    rst $18
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    cpl
    rst $18
    rst $18
    cp a
    rst $20
    ld hl, sp-$08
    rst $38
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
    db $f4
    nop
    rst $38
    nop
    rra
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    nop
    cp $01
    ldh a, [rIF]
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    ld e, a
    cp a
    sbc [hl]
    ld h, b
    ld c, a
    ldh a, [$e7]
    ld hl, sp-$0f
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $1f
    rst $20
    rlca
    ld hl, sp+$00
    cp $00
    ld a, a
    add b
    rrca
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    ld h, h
    sbc l
    adc [hl]
    db $fd
    db $fd
    rst $38
    dec bc
    rlca
    db $e3
    rra
    add a
    ld a, a
    ld e, $ff
    db $fd
    cp $3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    ret nz

    db $e3
    inc e
    cp l
    ld a, [hl]
    adc h
    di
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    ld b, a
    ld e, a
    rst $20
    rst $30
    rst $28
    db $eb
    rst $20
    ei
    rst $20
    db $eb
    rst $30
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
    sbc h
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $38
    ld sp, hl
    push af
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
    rst $08
    rst $08
    rst $38
    rst $08
    xor a
    rst $18
    sbc h
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $30
    rst $08
    cp $ce
    cp l
    adc $f3
    add b
    ld [c], a
    sbc l
    ld a, a
    sbc c
    reti


    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ldh a, [$79]
    ld l, c
    or $d7
    xor $fd
    adc $af
    call c, $9dfa
    rst $38
    sbc c
    rst $38
    rst $38
    ld h, c
    ld [hl], d
    sbc $61
    ld h, a
    reti


    push af
    ei
    rst $38
    di
    ld_long $fff7, a
    and $fc
    db $fc
    inc c
    rrca
    ccf
    adc $ad
    sbc $7f
    sbc h
    jp c, $ff3d

    add hl, sp
    or l
    ld a, e
    rrca
    rrca
    adc b
    ld a, h
    db $f4
    ld a, e
    ld l, e
    rst $30
    cp $e7
    rst $10
    xor $fd
    adc $7f
    ld c, h
    rst $38
    rst $38
    inc [hl]
    cp b
    db $fc
    inc sp
    cp l
    ld [hl], e
    or $79
    ei
    ld a, h
    ld a, l
    cp $e7
    xor $ff
    rst $38
    and [hl]
    ld l, [hl]
    ld l, [hl]
    or a
    cp e
    ld [hl], a
    rst $38
    di
    ld a, [hl]
    di
    rst $30
    ld a, d
    db $fd
    ld a, d
    rst $38
    db $fc
    dec sp
    inc e
    ld a, [hl]
    sbc c
    ld e, a
    cp c
    rst $38
    add hl, sp
    cp a
    ld a, c
    cp $79
    ld a, e
    db $fc
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
    ld a, l
    db $fd
    rst $38
    rst $28
    ret nc

    jp hl


    rst $38
    ret nz

    di
    call z, $ddaa
    rst $38
    sbc c
    push de
    cp e
    ld a, a
    or e
    rst $38
    rst $38
    ldh a, [$f9]
    jp hl


    or $d7
    xor $fd
    adc $af
    call c, $9dfa
    rst $38
    sbc c
    rst $38
    di
    ld a, a
    ld [hl], e
    db $eb
    ld [hl], a
    ld a, a
    rst $20
    rst $38
    rst $20
    sub $ef
    rst $38
    adc $fb
    jp z, $9fff

    db $fd
    sbc [hl]
    ld e, d
    cp l
    db $fd
    dec sp
    rst $30
    dec sp

jr_001_6f32:
    cp a
    ld [hl], d
    db $fc
    ld [hl], c
    db $dd
    ld d, e
    rst $38
    rst $38
    jr nc, jr_001_6f75

    rst $28
    jr nc, jr_001_6f32

    inc l
    cp d
    ld a, l
    ld a, a
    ld sp, hl
    push af
    ei
    cp a
    or e
    rst $38
    rst $38
    add [hl]
    rlca
    rra
    and $d5
    xor $be
    call $9def
    ld a, a
    sbc l
    call c, $fd3e
    di
    sub e
    rrca
    cp [hl]
    ld h, a
    ld a, a
    and $d5
    xor $bf
    call z, $9c6f
    rst $18
    inc a
    rst $38
    rst $38
    ld c, a
    adc a
    cp a
    ld c, a
    ld a, a
    rst $08
    rst $28
    rst $18
    rst $18
    cp a
    ccf

jr_001_6f75:
    ld a, a
    ld l, a
    rst $28
    cp $ff
    db $fd
    db $fc
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
    ccf
    rst $18
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    sbc c
    xor e
    call nz, $ffc4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    ld l, [hl]
    ld a, [hl]
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ld d, d
    jr jr_001_6fed

    ld sp, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    call z, $e2d4
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    and [hl]
    add hl, hl
    ld [hl], b
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    db $76
    ld sp, hl
    db $ed

jr_001_6fed:
    di
    db $db
    rst $20
    ld l, a
    sbc a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    or l
    ld a, e
    adc e
    ld b, $06
    rst $38
    rst $38
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
    ld [hl], d
    ld [hl], b
    ld sp, hl
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
    ld [hl], e
    ld b, [hl]
    ld [hl], a
    adc $ce
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    inc sp
    or h
    ld a, b
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    ld [hl], a
    ld a, a
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0e2d], a
    sbc b
    sub [hl]
    ld sp, hl
    db $fd
    di
    rst $38
    di
    db $f4
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ccf
    db $fc
    dec l
    ld e, $3e
    rst $08
    cp a
    rst $08
    ld a, a
    adc a
    rst $28
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $28
    rst $18
    rra
    ccf
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
    cp $fe
    db $fd
    db $fd
    ld a, [$fafa]
    ld a, [$fafa]
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    dec a
    dec a
    reti


    reti


    dec l
    dec l
    db $ed
    db $ed
    dec l
    dec l
    db $dd
    db $dd
    jr c, jr_001_70e0

    rst $38
    rst $38
    rst $00
    rst $00
    cp d
    cp d
    cp d
    cp d
    jp $fbc3


    ei
    rst $30
    rst $30
    rst $08
    rst $08
    rst $38
    rst $38
    inc e
    inc e
    db $eb
    db $eb
    db $eb
    db $eb
    inc c
    inc c
    db $eb
    db $eb
    db $db
    db $db
    inc a
    inc a
    rst $38
    rst $38
    ld a, h
    ld a, h
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    ld a, h
    ld a, h
    rst $38
    rst $38
    ld e, l
    ld e, l
    ret


    ret


    ret


    ret


jr_001_70e0:
    push de
    push de
    push de
    push de
    db $dd
    db $dd
    ld e, l
    ld e, l
    rst $38
    rst $38
    sbc $de
    xor l
    xor l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    dec b
    dec b
    ld [hl], l
    ld [hl], l
    db $76
    db $76
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    or $f6
    or $f6
    or $f6
    ld [hl], $36
    or [hl]
    or [hl]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    add sp, -$18
    db $eb
    db $eb
    ld l, e
    ld l, e
    xor b
    xor b
    set 1, e
    db $eb
    db $eb
    add sp, -$18
    rst $38
    rst $38
    ld b, d
    ld b, d
    sbc $de
    sbc $de
    ld b, d
    ld b, d
    sbc $de
    sbc $de
    ld b, d
    ld b, d
    rst $38
    rst $38
    rra
    rra
    rst $28
    rst $28
    rst $28
    rst $28
    rra
    rra
    cp a
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    adc [hl]
    adc [hl]
    ld [hl], l
    ld [hl], l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld [hl], l
    ld [hl], l
    adc [hl]
    adc [hl]
    rst $38
    rst $38
    ccf
    ccf
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    scf
    scf
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    cpl
    cpl
    xor a
    xor a
    ld h, b
    ld h, b
    rst $38
    rst $38
    add d
    add d
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    rst $38
    rst $38
    rra
    rra
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rra
    rra
    rst $38
    rst $38
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
    db $fd
    db $fd
    db $fc
    db $fc
    rst $38
    rst $38
    pop af
    pop af
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
    ld de, $ff11
    rst $38
    adc h
    adc h
    ld [hl], l
    ld [hl], l
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    ld a, l
    ld a, l
    ld [hl], l
    ld [hl], l
    adc h
    adc h
    rst $38
    rst $38
    ld l, $2e
    xor $ee
    and $e6
    ld a, [hl+]
    ld a, [hl+]
    db $ec
    db $ec
    xor $ee
    ld l, $2e
    rst $38
    rst $38
    add $c6
    cp d
    cp d
    cp [hl]
    cp [hl]
    add $c6
    ld a, [$bafa]
    cp d
    add $c6
    rst $38
    rst $38
    db $10
    db $10
    rst $30
    rst $30
    rst $30
    rst $30
    rla
    rla
    rst $30
    rst $30
    rst $30
    rst $30
    db $10
    db $10
    rst $38
    rst $38
    ld hl, sp-$08
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, b
    ld a, b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld hl, sp-$08
    rst $38
    rst $38
    ld l, [hl]
    ld l, [hl]
    xor [hl]
    xor [hl]
    or l
    or l
    ld a, e
    ld a, e
    cp e
    cp e
    cp e
    cp e
    ld a, e
    ld a, e
    rst $38
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    di
    di
    push af
    push af
    or $f6
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    ld b, l
    ld b, l
    ld l, l
    ld l, l
    ld l, h
    ld l, h
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld b, l
    ld b, l
    rst $38
    rst $38
    ret nc

    ret nc

    db $dd
    db $dd
    db $dd
    db $dd
    ld e, l
    ld e, l
    sbc l
    sbc l
    db $dd
    db $dd
    db $dd
    db $dd
    rst $38
    rst $38
    ld b, d
    ld b, d
    sbc $de
    sbc $de
    jp nz, $dec2

    sbc $de
    sbc $c2
    jp nz, $ffff

    add sp, -$18
    db $eb
    db $eb
    ld l, e
    ld l, e
    xor e
    xor e
    set 1, e
    db $eb
    db $eb
    add sp, -$18
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    ld [hl], c
    ld [hl], c
    dec c
    dec c
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    dec c
    dec c
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    ret c

    ret c

    rst $10
    rst $10
    rst $10
    rst $10
    ret c

    ret c

    rst $18
    rst $18
    rst $10
    rst $10
    jr c, jr_001_72be

    rst $38
    rst $38
    db $dd
    db $dd
    ld e, l
    ld e, l
    db $dd
    db $dd
    pop bc
    pop bc
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    db $dd
    db $dd
    rst $38
    rst $38
    pop af
    pop af
    xor $ee
    rst $28
    rst $28
    pop af
    pop af
    cp $fe
    xor $ee
    pop af
    pop af
    rst $38
    rst $38
    add e
    add e
    rst $28
    rst $28
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    rst $38
    rst $38
    cp b
    cp b
    ld e, e
    ld e, e
    db $eb
    db $eb

jr_001_72be:
    add sp, -$18
    ld a, [bc]
    ld a, [bc]
    db $eb
    db $eb
    db $eb
    db $eb
    rst $38
    rst $38
    ld h, b
    ld h, b
    cp e
    cp e
    cp e
    cp e
    ld a, e
    ld a, e
    ei
    ei
    ld a, e
    ld a, e
    cp e
    cp e
    rst $38
    rst $38
    ldh a, [$f0]
    rst $30
    rst $30
    rst $30
    rst $30
    ldh a, [$f0]
    rst $30
    rst $30
    rst $30
    rst $30
    ldh a, [$f0]
    rst $38
    rst $38
    db $dd
    db $dd
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    db $dd
    db $dd
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    db $e3
    db $e3
    rst $38
    rst $38
    inc b
    inc b
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    jr jr_001_7322

    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    rst $38
    rst $38
    db $dd
    db $dd
    ld e, l
    ld e, l
    ld c, l
    ld c, l
    ld d, l
    ld d, l
    ld e, c
    ld e, c

jr_001_7322:
    ld e, l
    ld e, l
    db $dd
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    cp e
    cp e
    cp [hl]
    cp [hl]
    and d
    and d
    cp d
    cp d
    add $c6
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    ld e, c
    ld e, c
    add sp, -$18
    ld a, [bc]
    ld a, [bc]
    db $eb
    db $eb
    db $eb
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    and c
    and c
    cpl
    cpl
    ld hl, $af21
    xor a
    xor a
    xor a
    and c
    and c
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $b5cc
    or l
    or l
    or l
    or h
    or h
    or l
    or l
    call $ffcd
    rst $38
    rst $38
    rst $38
    ld h, b
    ld h, b
    cp e
    cp e
    cp e
    cp e
    ld a, e
    ld a, e
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    adc h
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    adc h
    adc h
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    db $db
    ld e, e
    ld e, e
    ld c, e
    ld c, e
    ld d, e
    ld d, e
    ld e, e
    ld e, e
    db $db
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $dd
    sbc [hl]
    adc l
    xor e
    sbc h
    call c, $fcfb
    rst $30
    db $db
    rst $28
    and $1f
    ld h, $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$8c]
    pop bc
    cp b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld e, a
    ccf
    rst $20
    jr @+$73

    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld e, a
    ccf
    rst $20
    add hl, de
    ld [hl], e
    dec c
    ld a, e
    cp e
    ld [hl], e
    or c
    push de
    inc sp
    dec sp
    rst $18
    ccf
    rst $28
    db $db
    rst $30
    ld h, a
    ld hl, sp+$64
    cp e
    xor $dd
    xor $dd
    xor $dd
    xor $dd
    xor $dd
    xor $dd
    xor $dd
    xor $dd
    jp nz, $e7b8

    ret c

    ld [hl], e
    db $ec
    cp b
    ld [hl], a
    sbc a
    ld [hl], b
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ld d, c
    cp $b3
    db $fd
    ld h, a
    ei
    rst $08
    rst $30
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, $e7b8

    ret c

    di
    db $ec
    ld hl, sp-$09
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, e
    db $fd
    or a
    ei
    ld l, [hl]
    rst $30
    db $dd
    xor $f9
    ld c, $f9
    cp $f9
    cp $f9
    cp $77
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $8c
    adc h
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    adc l
    adc l
    rst $38
    rst $38
    jr nc, jr_001_757a

    db $dd
    db $dd
    db $dd
    db $dd
    dec a
    dec a
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    ld b, [hl]
    ld b, [hl]
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    add $c6
    rst $38
    rst $38
    scf
    scf
    rst $10
    rst $10
    db $d3
    db $d3
    push de
    push de
    sub $d6
    rst $10
    rst $10
    scf
    scf
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_001_757a:
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    dec c
    dec c
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    dec c
    dec c
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    rst $38
    rst $38
    db $fd
    db $fd
    ld a, [$f7fa]
    rst $30
    rst $30
    rst $30
    ldh a, [$f0]
    rst $30
    rst $30
    rla
    rla
    rst $38
    rst $38
    db $dd
    db $dd
    db $dd
    db $dd
    ld l, e
    ld l, e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    ld [$7b08], sp
    ld a, e
    ld a, e
    ld a, e
    ld [$7a08], sp
    ld a, d
    ld a, e
    ld a, e
    dec bc
    dec bc
    rst $38
    rst $38
    ld a, l
    ld a, l
    cp l
    cp l
    cp l
    cp l
    ld a, l
    ld a, l
    db $fd
    db $fd
    ld a, l
    ld a, l
    cp h
    cp h
    rst $38
    rst $38
    ldh a, [$f0]
    rst $30
    rst $30
    rst $30
    rst $30
    ldh a, [$f0]
    rst $30
    rst $30
    rst $30
    rst $30
    db $10
    db $10
    rst $38
    rst $38
    add h
    add h
    cp a
    cp a
    cp a
    cp a
    adc a
    adc a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rra
    rra
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fd
    sbc $8d
    xor a
    ld [hl], a
    ei
    ld [hl], c
    xor c
    db $76
    sub $8f
    xor c
    db $76
    ld a, [$9f71]
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    cp a
    rra
    ld e, a
    rst $28
    rst $28
    rst $28
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    rst $38
    rst $38
    rst $38
    db $fd
    ld hl, sp-$06
    rst $30
    rst $30
    rst $30
    ld a, a
    cp a
    ld a, e
    or c
    push af
    xor $df
    adc [hl]
    sub l
    ld l, [hl]
    ld l, e
    pop af
    sub l
    ld l, [hl]
    ld e, a
    adc [hl]
    xor c
    db $76
    sub $8f
    xor c
    db $76
    rst $38
    ld [hl], c
    xor a
    ld [hl], a
    cp $8d
    cp $fd
    xor $dd
    ld e, a
    rst $28
    rst $38
    rra
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    adc [hl]
    adc [hl]
    ld a, l
    ld a, l
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld c, b
    ld c, b
    ld l, e
    ld l, e
    adc e
    adc e
    rst $38
    rst $38
    xor $ee
    ld h, h
    ld h, h
    and h
    and h
    xor d
    xor d
    ld a, [hl+]
    ld a, [hl+]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    rst $38
    rst $38
    add a
    add a
    cp a
    cp a
    cp a
    cp a
    add a
    add a
    cp a
    cp a
    cp a
    cp a
    add a
    add a
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    add d
    add d
    rst $38
    rst $38
    rla
    rla
    rst $30
    rst $30
    rst $30
    rst $30
    rla
    rla
    rst $30
    rst $30
    ld a, [$1dfa]
    dec e
    rst $38
    rst $38
    ld b, d
    ld b, d
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld b, d
    ld b, d
    ld e, [hl]
    ld e, [hl]
    sbc $de
    jp nz, $ffc2

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    ld_long a, $fff7
    ld hl, sp-$01
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $95
    ld l, [hl]
    ld l, e
    pop af
    sub l
    ld l, [hl]
    rst $38
    adc [hl]
    push af
    xor $7f
    or c
    ld a, a
    cp a
    ld [hl], a
    cp e
    ld c, $0e
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    dec c
    dec c
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld c, $0e
    rst $38
    rst $38
    ld l, $2e
    db $e4
    db $e4
    db $e4
    db $e4
    ld [$2aea], a
    ld a, [hl+]
    xor [hl]
    xor [hl]
    ld l, $2e
    rst $38
    rst $38
    adc a
    adc a
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    adc a
    adc a
    rst $30
    rst $30
    ld [hl], a
    ld [hl], a
    adc [hl]
    adc [hl]
    rst $38
    rst $38
    pop hl
    pop hl
    rst $28
    rst $28
    rst $28
    rst $28
    pop hl
    pop hl
    rst $28
    rst $28
    rst $28
    rst $28
    pop hl
    pop hl
    rst $38
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld [hl], b
    cp b
    db $76
    ld [hl], b
    db $ec
    pop hl
    ret c

    jp nz, $ffb8

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld c, a
    scf
    rst $20
    dec de
    ld [hl], e
    dec c
    ld d, c
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    or $f0
    db $ec
    pop hl
    ret c

    jp nz, $f9b8

    cp $f9
    cp $f9
    cp $f9
    ld c, $5d
    ld l, $ee
    rla
    ld [hl], a
    dec bc
    ld d, e
    db $fd
    ld h, $dd
    and $1f
    db $db
    rst $28
    db $fc
    rst $30
    call c, $9bdb
    adc h
    xor [hl]
    sbc l
    sbc $fd
    rst $00
    cp b
    ei
    add h
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    cp $67
    ld hl, sp-$21
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    db $fd
    ld h, a
    ld sp, hl
    rst $18
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, h
    cp e
    ld h, a
    ld hl, sp-$25
    rst $30
    ccf
    rst $28
    dec sp
    db $db
    db $d3
    ld sp, $b375
    ld a, e
    cp a
    inc a
    jr jr_001_7835

    inc [hl]
    or l
    ld l, [hl]
    ld l, [hl]
    rst $38
    db $76
    rst $38
    xor a
    db $76
    ld d, [hl]
    inc l
    inc l
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7835:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
