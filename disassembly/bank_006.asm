; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    ld a, [$d3d0]
    and a
    jr nz, jr_006_4013

    ld a, $ff
    ld [$d3d0], a
    ld a, $03
    ld hl, $4000
    jp Jump_000_0077


jr_006_4013:
    xor a
    ld [$d3d0], a
    call Call_000_0783
    di
    call Call_000_0679
    ld hl, $0bfc
    ldh a, [$8b]
    cp $02
    call nc, Call_000_09b0
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $1b
    ld [$cf1b], a
    ld a, $93
    ld [$cf1c], a
    ld [$cf1d], a
    ldh a, [$8b]
    cp $01
    jp nz, Jump_006_410d

    ld hl, $7034
    ld bc, $0570
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $4a6a
    ld bc, $0160
    ld de, $8570
    ld a, $00
    call Call_000_07ce
    ld hl, $75a4
    call Call_000_0d52
    ld hl, $6f74
    ld a, [$c557]

jr_006_4073:
    cp $0a
    jr c, jr_006_407b

    sub $0a
    jr jr_006_4073

jr_006_407b:
    cp $05
    jr z, jr_006_4082

    ld hl, $6fb4

jr_006_4082:
    call Call_000_0d37
    ld hl, $9800
    call Call_000_098d
    ld hl, $559b
    inc hl
    ld de, $9923
    ld a, $01
    call Call_000_080b
    ld hl, $54f0
    inc hl
    ld de, $9923
    ld a, $00
    call Call_000_080b
    ld hl, $5700
    ld de, $9801
    ld a, [$c202]
    and a
    jr z, jr_006_40b2

    ld de, $9803

jr_006_40b2:
    ld a, $01
    call Call_000_080b
    ld hl, $5700
    ld de, $9841
    ld a, [$c202]
    and a
    jr z, jr_006_40c6

    ld de, $9843

jr_006_40c6:
    ld a, $01
    call Call_000_080b
    ld hl, $5700
    ld de, $9881
    ld a, [$c202]
    and a
    jr z, jr_006_40da

    ld de, $9883

jr_006_40da:
    ld a, $01
    call Call_000_080b
    ld hl, $5700
    ld de, $98c1
    ld a, [$c202]
    and a
    jr z, jr_006_40ee

    ld de, $98c3

jr_006_40ee:
    ld a, $01
    call Call_000_080b
    ld hl, $5700
    ld de, $9901
    ld a, [$c202]
    and a
    jr z, jr_006_4102

    ld de, $9903

jr_006_4102:
    ld a, $01
    call Call_000_080b
    ld hl, $66e6
    jp Jump_006_4130


Jump_006_410d:
    ld hl, $4bda
    ld bc, $06e0
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $9800
    call Call_000_098d
    ld hl, $5646
    inc hl
    ld de, $9923
    ld a, $00
    call Call_000_080b
    ld hl, $6b26

Jump_006_4130:
    ld a, [$c57d]
    add a
    add a
    swap a
    ld b, a
    and $f0
    ld e, a
    ld a, b
    and $0f
    ld d, a
    push hl
    add hl, de
    ld bc, $0040
    ld de, $86e0
    ld a, $00
    call Call_000_07ce
    pop hl
    ld a, [$c57e]
    add a
    add a
    swap a
    ld b, a
    and $f0
    ld e, a
    ld a, b
    and $0f
    ld d, a
    push hl
    add hl, de
    ld bc, $0040
    ld de, $8720
    ld a, $00
    call Call_000_07ce
    pop hl
    ld a, [$c57f]
    add a
    add a
    swap a
    ld b, a
    and $f0
    ld e, a
    ld a, b
    and $0f
    ld d, a
    push hl
    add hl, de
    ld bc, $0040
    ld de, $8760
    ld a, $00
    call Call_000_07ce
    pop hl
    ld a, [$c580]
    add a
    add a
    swap a
    ld b, a
    and $f0
    ld e, a
    ld a, b
    and $0f
    ld d, a
    push hl
    add hl, de
    ld bc, $0040
    ld de, $87a0
    ld a, $00
    call Call_000_07ce
    pop hl
    ld a, [$c581]
    add a
    add a
    swap a
    ld b, a
    and $f0
    ld e, a
    ld a, b
    and $0f
    ld d, a
    add hl, de
    ld bc, $0040
    ld de, $87e0
    ld a, $00
    call Call_000_07ce
    ld hl, $56f1
    ld a, [$c582]
    and a
    jr z, jr_006_41d2

    ld hl, $56f6
    cp $01
    jr z, jr_006_41d2

    ld hl, $56fb

jr_006_41d2:
    push hl
    ld de, $9801
    ld a, [$c202]
    and a
    jr z, jr_006_41df

    ld de, $9803

jr_006_41df:
    ld a, $00
    call Call_000_080b
    pop hl
    push hl
    ld de, $9841
    ld a, [$c202]
    and a
    jr z, jr_006_41f2

    ld de, $9843

jr_006_41f2:
    ld a, $00
    call Call_000_080b
    pop hl
    push hl
    ld de, $9881
    ld a, [$c202]
    and a
    jr z, jr_006_4205

    ld de, $9883

jr_006_4205:
    ld a, $00
    call Call_000_080b
    pop hl
    push hl
    ld de, $98c1
    ld a, [$c202]
    and a
    jr z, jr_006_4218

    ld de, $98c3

jr_006_4218:
    ld a, $00
    call Call_000_080b
    pop hl
    ld de, $9901
    ld a, [$c202]
    and a
    jr z, jr_006_422a

    ld de, $9903

jr_006_422a:
    ld a, $00
    call Call_000_080b
    ld hl, $ffa5
    ld [hl], $02
    inc hl
    ld [hl], $01
    inc hl
    ld b, $01
    ld a, [$c557]
    sub $04
    ld de, $661c
    call Call_000_07f4
    ld a, [de]
    add $5b
    inc de
    ld [hl+], a
    ld a, [de]
    add $5b
    ld [hl], a
    ld hl, $ffa5
    ld de, $9804
    ld a, [$c202]
    and a
    jr z, jr_006_425d

    ld de, $9806

jr_006_425d:
    ld a, $00
    call Call_000_080b
    ld a, [$c202]
    and a
    jr nz, jr_006_4295

    ld b, $04
    ld c, $00
    ld de, $c55d
    ld hl, $c545
    ld [hl], $05
    inc hl
    ld [hl], $01
    inc hl

jr_006_4278:
    ld a, [de]
    dec de
    and a
    jr nz, jr_006_4280

    ld a, c
    jr jr_006_4284

jr_006_4280:
    ld c, $5c
    add $5c

jr_006_4284:
    ld [hl+], a
    dec b
    jr nz, jr_006_4278

    ld [hl], $5c
    ld hl, $c545
    ld de, $9807
    ld a, $00
    call Call_000_080b

jr_006_4295:
    ld hl, $c545
    ld [hl], $04
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c570
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld [hl], $66
    inc hl
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld a, [de]
    add $5c
    dec de

Call_006_42b2:
    ld [hl+], a
    ld hl, $c545
    ld de, $980d
    ld a, [$c202]
    and a
    jr z, jr_006_42c2

    ld de, $980a

jr_006_42c2:
    ld a, $00
    call Call_000_080b
    ld hl, $c100
    ld b, $02
    ld c, $00
    ld d, $88
    ld a, [$c202]
    and a
    jr z, jr_006_42d8

    ld d, $78

jr_006_42d8:
    ld e, $6e
    call Call_006_471e
    ld a, [$c57d]
    ld b, a
    cp $03
    jr c, jr_006_42f5

    ld b, $02
    cp $07
    jr c, jr_006_42f5

    sub $04
    ld b, a
    cp $08
    jr c, jr_006_42f5

    sub $05
    ld b, a

jr_006_42f5:
    ld hl, $c103
    ld [hl], b
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], b
    ld hl, $ffa5
    ld [hl], $02
    inc hl
    ld [hl], $01
    inc hl
    ld b, $01
    ld a, [$c557]
    sub $03
    ld de, $661c
    call Call_000_07f4
    ld a, [de]
    add $5b
    inc de
    ld [hl+], a
    ld a, [de]
    add $5b
    ld [hl], a
    ld hl, $ffa5
    ld de, $9844
    ld a, [$c202]
    and a
    jr z, jr_006_432c

    ld de, $9846

jr_006_432c:
    ld a, $00
    call Call_000_080b
    ld a, [$c202]
    and a
    jr nz, jr_006_4364

    ld b, $04
    ld c, $00
    ld hl, $c545
    ld [hl], $05
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c561

jr_006_4347:
    ld a, [de]
    dec de
    and a
    jr nz, jr_006_434f

    ld a, c
    jr jr_006_4353

jr_006_434f:
    ld c, $5c
    add $5c

jr_006_4353:
    ld [hl+], a
    dec b
    jr nz, jr_006_4347

    ld [hl], $5c
    ld hl, $c545
    ld de, $9847
    ld a, $00
    call Call_000_080b

jr_006_4364:
    ld hl, $c545
    ld [hl], $04
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c573
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld [hl], $66
    inc hl
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld hl, $c545
    ld de, $984d
    ld a, [$c202]
    and a
    jr z, jr_006_4391

    ld de, $984a

jr_006_4391:
    ld a, $00
    call Call_000_080b
    ld d, $00
    ld e, $08
    ld hl, $c100
    add hl, de
    ld b, $02
    ld c, $10
    ld d, $88
    ld a, [$c202]
    and a
    jr z, jr_006_43ac

    ld d, $78

jr_006_43ac:
    ld e, $72
    call Call_006_471e
    ld a, [$c57e]
    ld b, a
    cp $03
    jr c, jr_006_43c9

    ld b, $02
    cp $07
    jr c, jr_006_43c9

    sub $04
    ld b, a
    cp $08
    jr c, jr_006_43c9

    sub $05
    ld b, a

jr_006_43c9:
    ld hl, $c10b
    ld [hl], b
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], b
    ld hl, $ffa5
    ld [hl], $02
    inc hl
    ld [hl], $01
    inc hl
    ld b, $01
    ld a, [$c557]
    sub $02
    ld de, $661c
    call Call_000_07f4
    ld a, [de]
    add $5b
    inc de
    ld [hl+], a
    ld a, [de]
    add $5b
    ld [hl], a
    ld hl, $ffa5
    ld de, $9884
    ld a, [$c202]
    and a
    jr z, jr_006_4400

    ld de, $9886

jr_006_4400:
    ld a, $00
    call Call_000_080b
    ld a, [$c202]
    and a
    jr nz, jr_006_4438

    ld b, $04
    ld c, $00
    ld hl, $c545
    ld [hl], $05
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c565

jr_006_441b:
    ld a, [de]
    dec de
    and a
    jr nz, jr_006_4423

    ld a, c
    jr jr_006_4427

jr_006_4423:
    ld c, $5c
    add $5c

jr_006_4427:
    ld [hl+], a
    dec b
    jr nz, jr_006_441b

    ld [hl], $5c
    ld hl, $c545
    ld de, $9887
    ld a, $00
    call Call_000_080b

jr_006_4438:
    ld hl, $c545
    ld [hl], $04
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c576
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld [hl], $66
    inc hl
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld hl, $c545
    ld de, $988d
    ld a, [$c202]
    and a
    jr z, jr_006_4465

    ld de, $988a

jr_006_4465:
    ld a, $00
    call Call_000_080b
    ld d, $00
    ld e, $10
    ld hl, $c100
    add hl, de
    ld b, $02
    ld c, $20
    ld d, $88
    ld a, [$c202]
    and a
    jr z, jr_006_4480

    ld d, $78

jr_006_4480:
    ld e, $76
    call Call_006_471e
    ld a, [$c57f]
    ld b, a
    cp $03
    jr c, jr_006_449d

    ld b, $02
    cp $07
    jr c, jr_006_449d

    sub $04
    ld b, a
    cp $08
    jr c, jr_006_449d

    sub $05
    ld b, a

jr_006_449d:
    ld hl, $c113
    ld [hl], b
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], b
    ld hl, $ffa5
    ld [hl], $02
    inc hl
    ld [hl], $01
    inc hl
    ld b, $01
    ld a, [$c557]
    dec a
    ld de, $661c
    call Call_000_07f4
    ld a, [de]
    add $5b
    inc de
    ld [hl+], a
    ld a, [de]
    add $5b
    ld [hl], a
    ld hl, $ffa5
    ld de, $98c4
    ld a, [$c202]
    and a
    jr z, jr_006_44d3

    ld de, $98c6

jr_006_44d3:
    ld a, $00
    call Call_000_080b
    ld a, [$c202]
    and a
    jr nz, jr_006_450b

    ld b, $04
    ld c, $00
    ld hl, $c545
    ld [hl], $05
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c569

jr_006_44ee:
    ld a, [de]
    dec de
    and a
    jr nz, jr_006_44f6

    ld a, c
    jr jr_006_44fa

jr_006_44f6:
    ld c, $5c
    add $5c

jr_006_44fa:
    ld [hl+], a
    dec b
    jr nz, jr_006_44ee

    ld [hl], $5c
    ld hl, $c545
    ld de, $98c7
    ld a, $00
    call Call_000_080b

jr_006_450b:
    ld hl, $c545
    ld [hl], $04
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c579
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld [hl], $66
    inc hl
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld hl, $c545
    ld de, $98cd
    ld a, [$c202]
    and a
    jr z, jr_006_4538

    ld de, $98ca

jr_006_4538:
    ld a, $00
    call Call_000_080b
    ld d, $00
    ld e, $18
    ld hl, $c100
    add hl, de
    ld b, $02
    ld c, $30
    ld d, $88
    ld a, [$c202]
    and a
    jr z, jr_006_4553

    ld d, $78

jr_006_4553:
    ld e, $7a
    call Call_006_471e
    ld a, [$c580]
    ld b, a
    cp $03
    jr c, jr_006_4570

    ld b, $02
    cp $07
    jr c, jr_006_4570

    sub $04
    ld b, a
    cp $08
    jr c, jr_006_4570

    sub $05
    ld b, a

jr_006_4570:
    ld hl, $c11b
    ld [hl], b
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], b
    ld hl, $ffa5
    ld [hl], $02
    inc hl
    ld [hl], $01
    inc hl
    ld b, $01
    ld a, [$c557]
    ld de, $661c
    call Call_000_07f4
    ld a, [de]
    add $5b
    inc de
    ld [hl+], a
    ld a, [de]
    add $5b
    ld [hl], a
    ld hl, $ffa5
    ld de, $9904
    ld a, [$c202]
    and a
    jr z, jr_006_45a5

    ld de, $9906

jr_006_45a5:
    ld a, $00
    call Call_000_080b
    ld a, [$c202]
    and a
    jr nz, jr_006_45d8

    ld b, $04
    ld c, $00
    ld hl, $c545
    ld [hl], $05
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c56d

jr_006_45c0:
    ld a, [de]
    dec de
    and a
    jr nz, jr_006_45c8

    ld a, c
    jr jr_006_45cc

jr_006_45c8:
    ld c, $5c
    add $5c

jr_006_45cc:
    ld [hl+], a
    dec b
    jr nz, jr_006_45c0

    ld [hl], $5c
    ld hl, $c545
    ld de, $9907

jr_006_45d8:
    ld a, $00
    call Call_000_080b
    ld hl, $c545
    ld [hl], $04
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c57c
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld [hl], $66
    inc hl
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld a, [de]
    add $5c
    dec de
    ld [hl+], a
    ld hl, $c545
    ld de, $990d
    ld a, [$c202]
    and a
    jr z, jr_006_460a

    ld de, $990a

jr_006_460a:
    ld a, $00
    call Call_000_080b
    ld d, $00
    ld e, $20
    ld hl, $c100
    add hl, de
    ld b, $02
    ld c, $40
    ld d, $88
    ld a, [$c202]
    and a
    jr z, jr_006_4625

    ld d, $78

jr_006_4625:
    ld e, $7e
    call Call_006_471e
    ld a, [$c581]
    ld b, a
    cp $03
    jr c, jr_006_4642

    ld b, $02
    cp $07
    jr c, jr_006_4642

    sub $04
    ld b, a
    cp $08
    jr c, jr_006_4642

    sub $05
    ld b, a

jr_006_4642:
    ld hl, $c123
    ld [hl], b
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], b
    ld a, $d7
    call Call_000_04a0
    xor a
    ld [$dd01], a
    ld a, $09
    ld [$dd00], a
    call Call_000_0389

Jump_006_465c:
    ld a, $4e
    ldh [$a4], a
    ld a, $14
    ldh [$a3], a

Jump_006_4664:
jr_006_4664:
    call Call_000_0616
    call Call_000_0389
    call Call_000_06f6
    ldh a, [$8d]
    and $09
    jp nz, Jump_006_46fb

    ldh a, [$a4]
    and a
    jr z, jr_006_46a3

    dec a
    ldh [$a4], a
    cp $27
    jr nc, jr_006_46a3

    and $07
    jr nz, jr_006_46a3

    ldh a, [$a4]
    srl a
    srl a
    ld b, a
    ld hl, $54d2
    call Call_000_07e6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl b
    ld a, $04
    sub b
    ld de, $998b
    call Call_000_07ed
    xor a
    call Call_000_08a4

jr_006_46a3:
    ldh a, [$a3]
    dec a
    ldh [$a3], a
    and $03
    jr nz, jr_006_4664

    ldh a, [$a3]
    cp $10
    jr z, jr_006_4664

    and a
    jr nz, jr_006_46b9

    ld a, $14
    ldh [$a3], a

jr_006_46b9:
    ld b, a
    ld a, $14
    sub b
    jr z, jr_006_46c4

    srl a
    srl a
    dec a

jr_006_46c4:
    ld b, a
    ld hl, $54ca
    ldh a, [$8b]
    cp $01
    jp nz, Jump_006_46e9

    ld a, b
    ld hl, $54c2
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9923
    ld a, $01
    push bc
    call Call_000_08a4
    call Call_000_0389
    pop bc
    ld hl, $54ba

Jump_006_46e9:
    ld a, b
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9923
    ld a, $00
    call Call_000_08a4
    jp Jump_006_4664


Jump_006_46fb:
    ld a, $0f
    ld [$dd01], a
    ld a, [$c557]
    ld b, $00

jr_006_4705:
    cp $0a
    jr c, jr_006_470e

    sub $0a
    inc b
    jr jr_006_4705

jr_006_470e:
    and a
    jp z, Jump_006_476f

    ret


    ld a, $03
    ld hl, $4000
    jp Jump_000_0077


    jp Jump_006_465c


Call_006_471e:
jr_006_471e:
    ld [hl], c
    inc hl
    ld a, d
    ld [hl+], a
    add $08
    ld d, a
    ld [hl], e
    inc hl
    inc e
    inc e
    xor a
    ld [hl+], a
    dec b
    jr nz, jr_006_471e

    ret


jr_006_472f:
    ld [hl], c
    inc hl
    ld a, d
    ld [hl+], a
    add $08
    ld d, a
    ld [hl], e
    inc hl
    inc e
    inc e
    xor a
    ld [hl+], a
    dec b
    ret z

    ld a, b
    and $03
    jr nz, jr_006_472f

    ld a, c
    add $10
    ld c, a
    ldh a, [$a1]
    ld d, a
    jr jr_006_472f

jr_006_474c:
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, d
    add [hl]
    ld [hl+], a
    inc hl
    inc hl
    dec b
    jr nz, jr_006_474c

    ret


jr_006_4758:
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, [hl]
    sub d
    ld [hl+], a
    inc hl
    inc hl
    dec b
    jr nz, jr_006_4758

    ret


jr_006_4764:
    inc hl
    inc hl
    ld [hl], e
    inc hl
    inc e
    inc e
    inc hl
    dec b
    jr nz, jr_006_4764

    ret


Jump_006_476f:
    ld a, b
    ldh [$a6], a
    call Call_000_0783
    di
    call Call_000_0679
    ld hl, $0bfc
    ldh a, [$8b]
    cp $02
    call nc, Call_000_09b0
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
    ldh a, [$8b]
    cp $01
    jp nz, Jump_006_47fc

    ld hl, $75e4
    ld bc, $0700
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $7d78
    call Call_000_0d52
    ld hl, $7d78
    call Call_000_0d37
    ld hl, $9800
    call Call_000_098d
    ld hl, $9c00
    call Call_000_098d
    ld hl, $7d2e
    ld de, $9c0b
    ld a, $01
    call Call_000_080b
    ld hl, $7ce4
    ld de, $9c0b
    ld a, $00
    call Call_000_080b
    ld hl, $5700
    ld de, $9881
    ld a, $01
    call Call_000_080b
    ld hl, $5700
    ld de, $98c1
    ld a, $01
    call Call_000_080b
    ld hl, $66e6
    jp Jump_006_4824


Jump_006_47fc:
    ld hl, $5717
    ld de, $8000
    ld bc, $0700
    ld a, $00
    call Call_000_07ce
    ld hl, $9800
    call Call_000_098d
    ld hl, $9c00
    call Call_000_098d
    ld hl, $5e2d
    ld de, $9c0b
    ld a, $00
    call Call_000_080b
    ld hl, $6b26

Jump_006_4824:
    ld hl, $5df7
    ld d, $00
    ld e, $05
    add hl, de
    push hl
    ld de, $9881
    ld a, [$c202]
    and a
    jr z, jr_006_4839

    ld de, $9883

jr_006_4839:
    ld a, $00
    call Call_000_080b
    pop hl
    ld d, $00
    ld e, $06
    add hl, de
    ld de, $98c1
    ld a, [$c202]
    and a
    jr z, jr_006_4850

    ld de, $98c3

jr_006_4850:
    ld a, $00
    call Call_000_080b
    ld a, [$c202]
    and a
    jr nz, jr_006_48d5

    ld b, $05
    ld c, $00
    ld hl, $c545
    ld [hl], $06
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c587

jr_006_486b:
    ld a, [de]
    dec de
    and a
    jr nz, jr_006_4873

    ld a, c
    jr jr_006_4876

jr_006_4873:
    ld c, $01
    inc a

jr_006_4876:
    ld [hl+], a
    dec b
    jr nz, jr_006_486b

    ld [hl], $01
    ld hl, $c545
    ld de, $9886
    xor a
    call Call_000_080b
    ldh a, [$a6]
    cp $02
    jp c, Jump_006_48bd

    cp $0a
    jp nc, Jump_006_48bd

    ld d, a
    ld hl, $c547
    ld b, $05
    ld c, $00

jr_006_489a:
    ld a, [hl]
    and a
    jr z, jr_006_48ae

    sub $01
    add c
    ld e, $00

jr_006_48a3:
    cp d
    jr c, jr_006_48aa

    sub d
    inc e
    jr jr_006_48a3

jr_006_48aa:
    ld c, a
    ld a, e
    add $01

jr_006_48ae:
    ld [hl+], a
    ld a, c
    sla c
    sla a
    sla a
    sla a
    add c
    ld c, a
    dec b
    jr nz, jr_006_489a

Jump_006_48bd:
    ld hl, $c545
    ld [hl], $05
    ld de, $98c7
    ldh a, [$a6]
    cp $0a
    jp c, Jump_006_48d1

    ld [hl], $04
    ld de, $98c8

Jump_006_48d1:
    xor a
    call Call_000_080b

jr_006_48d5:
    ld hl, $c545
    ld [hl], $05
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c58b
    ld a, [de]
    dec de
    and a
    jr z, jr_006_48e7

    inc a

jr_006_48e7:
    ld [hl+], a
    ld a, [de]
    dec de
    inc a
    ld [hl+], a
    ld [hl], $0b
    inc hl
    ld a, [de]
    dec de
    inc a
    ld [hl+], a
    ld a, [de]
    dec de
    inc a
    ld [hl+], a
    ld hl, $c545
    ld de, $988d
    ld a, [$c202]
    and a
    jr z, jr_006_4906

    ld de, $988a

jr_006_4906:
    xor a
    call Call_000_080b
    ld hl, $c545
    ld [hl], $04
    inc hl
    ld [hl], $01
    inc hl
    ld de, $c58b
    ld a, [de]
    dec de
    inc a
    ld [hl+], a
    ld [hl], $0b
    inc hl
    ld a, [de]
    dec de
    ld b, a
    inc b
    xor a

jr_006_4922:
    dec b
    jr z, jr_006_4929

    add $06
    jr jr_006_4922

jr_006_4929:
    ld b, a
    ld a, [de]
    add b
    ld b, $01

jr_006_492e:
    cp $0a
    jr c, jr_006_4937

    sub $0a
    inc b
    jr jr_006_492e

jr_006_4937:
    ld [hl], b
    inc hl
    inc a
    ld [hl], a
    ldh a, [$a6]
    cp $02
    jp c, Jump_006_4991

    ld d, a
    ld hl, $c547
    ld c, $00
    ld a, [hl]
    sub $01
    ld e, $00

jr_006_494d:
    cp d
    jr c, jr_006_4954

    sub d
    inc e
    jr jr_006_494d

jr_006_4954:
    ld c, a
    ld a, e
    add $01
    ld [hl+], a
    ld a, c
    sla c
    sla a
    sla a
    add c
    ld c, a
    inc hl
    ld a, [hl]
    sub $01
    add c
    ld e, $00

jr_006_4969:
    cp d
    jr c, jr_006_4970

    sub d
    inc e
    jr jr_006_4969

jr_006_4970:
    ld c, a
    ld a, e
    add $01
    ld [hl+], a
    ld a, c
    sla c
    sla a
    sla a
    sla a
    add c
    ld c, a
    ld a, [hl]
    sub $01
    add c
    ld e, $00

jr_006_4986:
    cp d
    jr c, jr_006_498d

    sub d
    inc e
    jr jr_006_4986

jr_006_498d:
    ld a, e
    add $01
    ld [hl+], a

Jump_006_4991:
    ld hl, $c545
    ld de, $98ce
    ld a, [$c202]
    and a
    jr z, jr_006_49a0

    ld de, $98cb

jr_006_49a0:
    xor a
    call Call_000_080b
    ld a, $8f
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld a, $f3
    call Call_000_04a0
    xor a
    ld [$dd01], a
    ld a, $0d
    ld [$dd00], a
    call Call_000_0389
    ld a, $50
    ldh [$a3], a
    xor a
    ldh [$a2], a

Jump_006_49c4:
jr_006_49c4:
    call Call_000_0616
    call Call_000_0389
    call Call_000_06f6
    ldh a, [$8d]
    and $09
    jp nz, Jump_006_4a58

    ldh a, [rWY]
    cp $49
    jr c, jr_006_49df

    dec a
    ldh [rWY], a
    jr jr_006_49c4

jr_006_49df:
    ldh a, [$a2]
    and a
    jr nz, jr_006_4a17

    ldh a, [$a3]
    dec a
    ldh [$a3], a
    and $07
    jr nz, jr_006_49c4

    ldh a, [$a3]
    rra
    ld b, a
    ld hl, $5ec1
    call Call_000_07e6
    srl b
    srl b
    ld a, $09
    sub b
    ld de, $9c42
    call Call_000_07ed
    xor a
    call Call_000_08a4
    ldh a, [$a3]
    and a
    jr nz, jr_006_49c4

    ld a, $01
    ldh [$a2], a
    ld a, $40
    ldh [$a3], a
    jr jr_006_49c4

jr_006_4a17:
    ldh a, [$a3]
    dec a
    ldh [$a3], a
    and $03
    jr nz, jr_006_49c4

    ldh a, [$a3]
    cp $1d
    jr nc, jr_006_49c4

    ld b, a
    srl b
    srl b
    ld a, $07
    sub b
    ld c, a
    ld hl, $5e9c
    ldh a, [$8b]
    cp $01
    jp nz, Jump_006_4a3c

    ld hl, $5e77

Jump_006_4a3c:
    ld a, c
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9c6e
    ld a, $00
    call Call_000_08a4
    ldh a, [$a3]
    and a
    jp nz, Jump_006_49c4

    ld a, $40
    ldh [$a3], a
    jp Jump_006_49c4


Jump_006_4a58:
    ld a, $0f
    ld [$dd01], a
    ret


    ld a, $03
    ld hl, $4000
    jp Jump_000_0077


    jp Jump_006_49c4


    ret


    INCBIN "gfx/image_006_4a6a.2bpp"

    INCBIN "gfx/image_006_4b6a.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_4bdb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_4bf0:
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $1400
    ld [$1c26], sp
    ld c, d
    ld b, $f6
    ld [bc], a
    and b
    ld b, d
    ld b, d

jr_006_4c05:
    add b
    inc b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0708
    db $10
    rrca
    ld hl, $471f
    ccf
    ld bc, $3f00
    nop
    add d
    ld a, l
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $f4
    cp $7e
    add b
    nop
    nop
    nop
    nop
    jr nz, jr_006_4bf0

    ret nc

    jr nz, jr_006_4bdb

    ld d, b
    inc d
    ret z

    call z, $8c88
    xor b
    dec bc
    ld a, h
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ld a, c
    nop
    inc e
    nop
    rlca
    ld c, $07
    dec c
    db $ec
    ld [de], a
    or h
    ld [de], a
    pop af
    db $10
    and b
    dec d
    sub a
    inc bc
    ld b, [hl]
    inc h
    or l
    ld a, c
    db $fd
    cp $24
    adc b
    ret z

    nop
    db $10
    ld b, b

jr_006_4c60:
    ldh [rLCDC], a
    ldh [$c0], a
    add b
    ret nz

    ret nz

    add b
    add b
    ret nz

    nop
    nop
    nop
    nop

jr_006_4c6e:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_4c76

jr_006_4c76:
    inc h
    jr jr_006_4cb9

    inc c
    ld c, $07
    nop
    nop
    dec b
    ld [bc], a
    ld [$2507], sp
    jr jr_006_4c05

    ld a, a
    jr nz, @-$3e

    ld e, c
    ld b, $ff
    rst $38
    ld a, e
    rst $38
    ld a, $7d
    sbc a
    ccf
    ld h, $cf
    db $10
    rst $20
    add c
    ld [hl], e
    dec hl
    inc de
    ldh [$c0], a
    ldh [$c0], a
    add d
    pop bc
    ld [$1087], sp
    rrca
    db $d3
    inc c
    rlca
    add sp, -$11
    add b
    xor d
    ld b, h
    ld c, $c0
    inc c
    jp nz, $40b6

    db $fc
    nop
    ld [hl], b
    add b
    ret nz

    nop
    add b

jr_006_4cb9:
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    nop
    and h
    jr jr_006_4d1f

    adc h
    jr z, jr_006_4c60

    ld a, [bc]
    add h
    rla
    adc b
    inc hl
    sbc h
    add hl, hl
    sub b
    ld d, l
    add d
    inc c
    rlca
    ld [hl], d
    inc de
    cp l
    ld e, c
    sbc [hl]
    ld a, h
    ld l, a
    ld e, $4c
    ld a, $51
    jr c, jr_006_4c6e

    inc bc
    rst $10
    ret nz

    ldh a, [$80]
    ld hl, sp+$00
    nop
    add b
    jr nz, jr_006_4d13

    ld a, h
    ccf
    ld a, $c3
    ld l, l
    or d
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
    ld b, a

jr_006_4d05:
    add b
    db $d3
    inc c
    and e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    dec [hl]
    rst $38

jr_006_4d13:
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0002

jr_006_4d1f:
    nop
    add l
    inc bc
    ld c, $f1
    db $fc
    nop
    ld [bc], a
    inc b
    nop
    inc b
    ld l, d
    add a
    ld b, $0f
    xor l
    ld b, [hl]
    ld d, a
    ldh [$88], a
    nop
    ld l, b
    rlca
    inc b
    add e
    ld [$a311], a
    inc e
    cp h
    nop
    add b
    ld [bc], a
    ld l, $1f
    rst $38
    rrca
    rst $38
    rrca
    cp a
    ld c, a
    ld [hl], a
    adc a
    sbc e
    ld h, h
    ld [c], a
    inc e
    ret c

    ld hl, $0337
    adc l
    jp $e17f


    or [hl]
    ret


    ld sp, hl
    and $02
    inc a
    ld b, [hl]
    jr c, jr_006_4d05

    ret c

    xor h
    ret nc

    add sp, -$70
    ret nc

    and b
    ldh [$80], a
    ld h, b
    add b
    inc bc
    nop
    inc de
    inc c
    ld [hl+], a
    rra
    rlca
    dec sp
    dec h
    dec de
    dec de
    dec b
    ld c, $01
    rlca
    nop
    adc c
    db $76
    add hl, hl
    ret nc

    ld d, e
    xor b
    ld a, h
    add b
    and b
    ret nz

    ret nz

    ldh [$c0], a
    ldh [$60], a
    ret nz

jr_006_4d8a:
    rst $18
    daa
    inc sp
    rst $00
    db $e3
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
    adc b
    rst $20
    add h
    inc bc
    inc bc
    nop

jr_006_4da0:
    nop
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
    ld [bc], a
    ld bc, $0102
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
    ldh [rP1], a
    db $10
    ldh [rNR23], a
    ldh [$f8], a
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$c0], a
    ldh [$c0], a
    add b
    ret nz

    nop
    add b
    nop
    nop
    ret nz

    nop
    ld [$ece0], sp
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
    ld c, [hl]
    jr nc, jr_006_4d8a

    ld l, [hl]
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0102
    add hl, bc
    ld [bc], a
    ld bc, $150a
    ld a, [bc]
    and h
    jr jr_006_4e5f

    adc h
    jr z, jr_006_4da0

    adc d
    inc b
    sub a
    ld [$1ca3], sp
    add hl, hl
    db $10
    ld d, l
    ld [bc], a
    ret z

    rst $00
    ldh a, [$87]
    db $f4
    inc bc
    nop
    add b
    jr nz, jr_006_4e43

    ld a, h
    ccf
    ld a, $c3
    ld l, l
    or d
    ld c, c
    add [hl]
    ld l, d
    add h
    adc $00
    ld c, d
    inc b
    cp h
    nop
    ld b, b
    add b
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
    ld l, d
    dec [hl]
    rst $38

jr_006_4e43:
    nop
    ld bc, $0000
    ld bc, $0000
    ld l, $10
    ld c, d
    inc [hl]
    jr jr_006_4eb0

    add l
    inc bc
    ld c, $f1
    db $fc
    nop
    inc bc
    nop
    dec bc
    ldh a, [$ea]
    rlca
    ld b, $0f
    xor l

jr_006_4e5f:
    ld b, [hl]
    ld d, a
    ldh [$08], a
    nop
    ld h, d
    dec c
    db $10
    rrca
    dec b
    ld a, [de]
    and e
    inc e
    cp h
    nop
    add b
    ld [bc], a
    ld a, $1f
    rst $28
    rra
    sbc a
    ld c, a
    or a
    ld c, a
    rst $08
    rla
    sbc e
    ld h, h
    ld [c], a
    inc e
    ret c

    jr nz, jr_006_4eb1

    nop
    call nz, Call_006_6ac8
    db $fc
    sbc h
    cp $e0
    cp $12
    ldh [rNR10], a
    jr nz, jr_006_4e9f

    nop
    nop
    nop

jr_006_4e92:
    nop
    nop

jr_006_4e94:
    nop
    nop
    ld bc, $0000
    ld bc, $0846
    ld a, [de]
    ld h, b
    ld [bc], a

jr_006_4e9f:
    ld a, l
    rra
    ld h, b
    add [hl]
    ld a, b
    ld c, h
    or d
    ld a, $ff
    ld l, a
    sbc a
    adc e
    rla
    ld d, $00
    add c
    nop

jr_006_4eb0:
    add hl, bc

jr_006_4eb1:
    ld b, $0b
    inc b
    dec b
    ld [bc], a
    inc b
    inc bc
    inc bc
    nop
    ret nz

    ldh [rLCDC], a
    nop
    ld b, b
    add b
    pop hl
    nop
    sub d
    add hl, sp
    inc a
    ei
    db $f4
    ld a, e
    db $eb
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_006_4e92

    jr nc, jr_006_4e94

    ld h, b
    add b
    ret nz

    nop
    add b
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
    dec de
    rst $20
    rst $30
    ld [$0738], sp

jr_006_4ef0:
    inc c
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    ld bc, $c122
    db $10
    pop hl
    pop af
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $18
    ld h, b
    db $ec
    ld d, b
    jr jr_006_4ef0

    ld [hl], b
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
    nop
    nop
    nop
    nop

jr_006_4f26:
    nop
    nop
    dec d
    ld c, $00
    nop

jr_006_4f2c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0400
    inc bc
    db $10
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7e00
    nop
    ld [bc], a
    db $fd
    dec b
    ld a, [$fc03]
    ld c, a
    jr nc, jr_006_4f5a

    ld [hl], b
    ld b, b
    add b
    nop
    nop
    nop
    nop
    ld b, c
    add b
    and b
    ld b, b
    ld d, b
    and b

jr_006_4f5a:
    nop
    add b
    nop
    ret nz

    nop
    ret nz

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
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    jr nz, @+$21

    ld b, e
    ccf
    adc [hl]
    ld a, a
    rla
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    di
    nop
    ld [bc], a
    db $fd
    jp hl


    db $fd
    db $fd
    ld bc, $25d8
    ld l, c
    inc h
    ld [c], a
    jr nz, jr_006_4fd8

    ld a, [hl+]
    cpl
    rlca
    jr z, jr_006_4f2c

    sbc b
    db $10
    jr @+$52

    ld c, b
    db $10
    sub b
    nop
    jr nz, jr_006_4f26

    ret nz

    add b
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
    ld bc, $3800
    nop
    rrca
    inc e
    rrca
    dec de
    nop
    nop
    ld de, $520e
    ld hl, $7f80
    ld b, $01
    adc l
    ld c, c
    ld l, e
    di
    ei
    db $fd
    ld a, a
    rst $38
    scf
    ld a, a
    sbc l
    dec sp
    ld c, [hl]
    sbc a

jr_006_4fd8:
    inc l
    adc $00
    add b

jr_006_4fdc:
    add b
    nop
    nop
    add b
    ret nz

    add b
    ret nz

    add b
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop

jr_006_4fed:
    nop
    ld bc, $0000
    ld bc, $0102
    dec c
    ld [bc], a
    ld a, [de]
    inc b
    ld h, h
    jr jr_006_5054

    nop
    or d
    inc c
    add hl, bc
    or b
    and h
    jr jr_006_500d

    inc [hl]
    inc a
    nop
    sub [hl]
    ld [$102f], sp
    call Call_006_6222

jr_006_500d:
    rlca
    or a
    rlca
    reti


    rrca
    ld h, l
    and a
    dec sp
    ld a, [c]
    call c, Call_000_1e39
    ld a, h
    jr nz, jr_006_4fdc

    ldh [rP1], a
    and b
    ld b, b
    add b
    ret nz

    add b
    jr nz, jr_006_5085

    nop
    ld b, b
    nop
    jr z, jr_006_503a

    nop
    nop
    ld bc, $0000
    ld bc, $0102
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    nop
    nop

jr_006_503a:
    adc b
    ld [hl], b
    db $10
    ldh [rTIMA], a
    ldh [rNR51], a
    ret nz

    ld a, [hl+]
    ret nz

    ld l, c
    add b
    ld e, b
    add c
    ld d, b
    nop
    sbc a
    jr nz, jr_006_4fdc

    jr nc, @-$53

    inc d
    ld b, [hl]
    jr jr_006_4fed

    ld b, a

jr_006_5054:
    add $ef
    add [hl]
    adc a
    xor l
    ld b, [hl]
    ld a, a
    ccf
    ld h, [hl]
    ccf
    ld [$3104], sp
    ld [$0385], sp
    add e
    inc e
    call c, $c000
    ld [bc], a
    nop
    add b
    jr nz, jr_006_508d

    ld a, h
    ccf
    ld a, $c3
    ld l, l
    or d
    sbc e
    ld h, h
    ld [c], a
    inc e
    ret c

    jr nz, jr_006_507b

jr_006_507b:
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    nop

jr_006_5085:
    nop
    add b
    nop
    nop
    nop
    ld l, d
    dec [hl]
    rst $38

jr_006_508d:
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
    add l
    inc bc
    ld c, $f1
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
    ld d, a
    ldh [$88], a
    nop
    ld [bc], a
    ld bc, $3609
    ld [hl+], a
    dec e
    ld [$1105], sp
    nop
    ld bc, $1e1e
    ccf
    dec c
    rra
    or $0f
    xor l
    ld b, e
    adc e
    ld b, b
    pop de
    nop
    ld bc, $471e
    sbc b
    scf
    nop
    adc e
    ret nz

    db $10
    ld hl, sp-$20
    ldh a, [rP1]
    nop
    ld b, b
    add b
    ret nz

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    jr @+$03

    ld e, $35
    dec bc
    cpl
    rla
    rrca
    ccf
    ld b, $39
    cpl
    db $10
    inc bc
    nop
    db $d3
    inc c
    adc l
    inc bc
    sub a
    set 4, l
    jp $c039


    adc $30
    rrca
    ldh a, [$9e]
    ld h, b
    add b
    nop
    add b
    ret nz

    ret nz

    ldh [$72], a
    adc h
    pop bc
    ld a, $f3
    inc c
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
    add b
    nop
    nop
    nop
    nop
    nop
    cp $fe
    add b
    add b
    ld hl, sp-$08
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
    jr c, jr_006_5194

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_006_519e

    nop
    nop
    nop
    nop
    jp nz, $e2c2

    ld [c], a
    or d
    or d
    sbc d
    sbc d
    adc [hl]
    adc [hl]
    add [hl]
    add [hl]
    nop
    nop
    nop
    nop
    cp $fe
    add b
    add b
    ld hl, sp-$08
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

jr_006_5194:
    db $10
    stop
    nop
    nop
    nop
    jr c, jr_006_51d4

    ld b, h
    ld b, h

jr_006_519e:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, @+$3a

    nop
    nop
    db $10
    db $10
    jr nc, @+$32

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_006_51f0

    nop
    nop
    jr c, jr_006_51f4

    ld b, h
    ld b, h
    inc b
    inc b
    jr jr_006_51da

    jr nz, jr_006_51e4

    ld b, b
    ld b, b
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    ld [$1008], sp
    db $10
    jr c, jr_006_520a

    inc b
    inc b

jr_006_51d4:
    ld b, h
    ld b, h
    jr c, @+$3a

    nop
    nop

jr_006_51da:
    ld [$1808], sp
    jr @+$2a

    jr z, jr_006_5229

    ld c, b
    ld a, h
    ld a, h

jr_006_51e4:
    ld [$0808], sp
    ld [$0000], sp
    ld a, h
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_006_51f0:
    ld a, b
    ld a, b
    inc b
    inc b

jr_006_51f4:
    ld b, h
    ld b, h
    jr c, jr_006_5230

    nop
    nop
    jr jr_006_5214

    jr nz, jr_006_521e

    ld b, b
    ld b, b
    ld a, b
    ld a, b
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_006_5240

    nop
    nop

jr_006_520a:
    ld a, h
    ld a, h
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_006_5234

jr_006_5214:
    jr nz, @+$22

    jr nz, @+$22

    nop
    nop
    jr c, jr_006_5254

    ld b, h
    ld b, h

jr_006_521e:
    ld b, h
    ld b, h
    jr c, jr_006_525a

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_006_5260

    nop

jr_006_5229:
    nop
    jr c, jr_006_5264

    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_006_5230:
    inc a
    inc a
    inc b
    inc b

jr_006_5234:
    ld [$3008], sp
    jr nc, jr_006_5239

jr_006_5239:
    nop
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_006_5260

jr_006_5240:
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    scf
    ld c, c
    ld c, c
    ld b, c
    ld b, c
    ld sp, $0931
    add hl, bc

jr_006_5254:
    ld c, c
    ld c, c
    ld sp, $0031
    nop

jr_006_525a:
    ret c

    ret c

    dec h
    dec h
    dec h
    dec h

jr_006_5260:
    dec h
    dec h
    dec a
    dec a

jr_006_5264:
    dec h
    dec h
    inc h
    inc h
    nop
    nop
    adc $ce
    jr z, jr_006_5296

    ld [$6e08], sp
    ld l, [hl]
    jr z, jr_006_529c

    jr z, jr_006_529e

    adc $ce
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

jr_006_5296:
    adc [hl]
    adc [hl]
    nop
    nop
    db $dd
    db $dd

jr_006_529c:
    ld d, c
    ld d, c

jr_006_529e:
    sub c
    sub c
    dec e
    dec e
    ld de, $1111
    ld de, $dddd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $021f
    inc sp
    inc c
    ld hl, $211e
    ld e, $33
    inc c
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
    ld [hl], b
    nop
    ld hl, sp+$20
    ld hl, sp+$50
    ld hl, sp-$70
    ld hl, sp+$10
    ld hl, sp+$20
    sbc b
    ld h, b
    ld [$08f0], sp
    ldh a, [$98]
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
    nop
    rra
    rra
    ccf
    jr nc, jr_006_5342

    ld hl, $213f
    ccf
    ld hl, $303f
    rra
    ld [$031c], sp
    inc a
    inc bc
    ld a, a
    nop
    ccf
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$18
    db $fc
    call z, $043c
    inc a
    inc b
    db $fc
    inc c
    ld hl, sp+$78
    nop
    db $fc
    nop
    cp $f0
    nop
    ldh [rP1], a
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
    nop
    nop

jr_006_5342:
    inc bc
    inc b
    dec b
    ld c, $0d
    ld d, $1b
    daa
    rlca
    jr jr_006_5350

    inc c
    inc bc
    inc b

jr_006_5350:
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
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

    ldh [$b0], a
    ret nz

    cp b
    ret nc

    ld e, h
    cp b
    ret z

    ldh a, [$d0]
    ldh [$a0], a
    ret nz

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
    rra
    ld c, $3f
    ld [$1f39], sp
    ld h, b
    ccf
    ld b, a
    ccf
    ld b, h
    ccf
    ld b, a
    ccf
    ld b, h
    ccf
    ld b, h
    rra
    ld h, a
    rrca
    jr nc, jr_006_5393

jr_006_5393:
    rra
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$70
    db $fc
    db $10
    sbc h
    ld hl, sp+$06
    db $fc
    ld a, [c]
    db $fc
    ld [bc], a
    db $fc
    jp nz, Jump_000_02fc

    db $fc
    ld [bc], a
    ld hl, sp-$0a
    ldh a, [$0c]
    ret nz

    ld hl, sp+$60
    ld h, b
    jr nc, jr_006_53e8

    inc e
    inc e
    nop
    nop
    nop
    rra
    ld c, $3f
    ld [$1f39], sp
    ld h, b
    ccf
    ld b, [hl]
    ccf
    ld b, e
    ccf
    ld b, b
    ccf
    ld b, c
    ccf
    ld b, e
    rra
    ld h, [hl]
    rrca
    jr nc, jr_006_53d3

jr_006_53d3:
    rra
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$70
    db $fc
    db $10
    sbc h
    ld hl, sp+$06
    db $fc
    ld [hl-], a
    db $fc
    ld h, d

jr_006_53e8:
    db $fc
    jp nz, $82fc

    db $fc
    ld h, d
    ld hl, sp+$36
    ldh a, [$0c]
    ret nz

    ld hl, sp+$60
    ld h, b
    jr nc, jr_006_5428

    inc e
    inc e
    nop
    nop
    nop
    rra
    ld c, $3f
    ld [$1f39], sp
    ld h, b
    ccf
    ld b, a
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    ld h, b
    rrca
    jr nc, jr_006_5413

jr_006_5413:
    rra
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$70
    db $fc
    db $10
    sbc h
    ld hl, sp+$06
    db $fc
    ld a, [c]
    db $fc
    add d

jr_006_5428:
    db $fc
    add d
    db $fc
    add d
    db $fc
    add d
    ld hl, sp-$7a
    ldh a, [$0c]
    ret nz

    ld hl, sp+$60
    ld h, b
    jr nc, jr_006_5468

    inc e
    inc e
    nop
    nop
    nop
    rra
    ld c, $3f
    ld [$1f39], sp
    ld h, b
    ccf
    ld b, a
    ccf
    ld b, h
    ccf
    ld b, h
    ccf
    ld b, a
    ccf
    ld b, h
    rra
    ld h, h
    rrca
    jr nc, jr_006_5453

jr_006_5453:
    rra
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$70
    db $fc
    db $10
    sbc h
    ld hl, sp+$06
    db $fc
    ld [c], a
    db $fc
    ld [hl-], a

jr_006_5468:
    db $fc
    ld [hl-], a
    db $fc
    ld [c], a
    db $fc
    ld b, d
    ld hl, sp+$76
    ldh a, [$0c]
    ret nz

    ld hl, sp+$60
    ld h, b
    jr nc, jr_006_54a8

    inc e
    inc e
    nop
    nop
    nop
    rra
    ld c, $3f
    ld [$1f39], sp
    ld h, b
    ccf
    ld b, c
    ccf
    ld b, e
    ccf
    ld b, [hl]
    ccf
    ld b, h
    ccf
    ld b, a
    rra
    ld h, h
    rrca
    jr nc, jr_006_5493

jr_006_5493:
    rra
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$70
    db $fc
    db $10
    sbc h
    ld hl, sp+$06
    db $fc
    jp nz, Jump_006_62fc

jr_006_54a8:
    db $fc
    ld [hl-], a
    db $fc
    ld [de], a
    db $fc
    ld a, [c]
    ld hl, sp+$16
    ldh a, [$0c]
    ret nz

    ld hl, sp+$60
    ld h, b
    jr nc, @+$32

    inc e
    inc e

    db $f0, $54, $29, $55, $62, $55, $29, $55, $9b, $55, $d4, $55, $0d, $56, $d4, $55

    ld b, [hl]
    ld d, [hl]
    ld a, a
    ld d, [hl]
    cp b
    ld d, [hl]
    ld a, a
    ld d, [hl]

    db $ec, $54, $e8, $54, $e4, $54, $e0, $54, $dc, $54, $01, $01, $01, $57, $01, $01
    db $01, $58, $01, $01, $01, $59, $01, $01, $01, $5a, $01, $01, $01, $5b, $36, $06
    db $09, $00, $00, $00, $01, $02, $00, $00, $00, $03, $04, $05, $00, $00, $00, $06
    db $07, $08, $09, $00, $00, $0a, $0b, $0c, $0d, $00, $0e, $0f, $10, $11, $12, $13
    db $14, $15, $16, $17, $18, $00, $19, $1a, $1b, $1c, $1d, $00, $1e, $1f, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $36, $06, $09, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $02, $00, $00, $00, $03, $04, $05, $00, $00, $00, $06, $07
    db $08, $00, $00, $00, $20, $0b, $21, $22, $00, $23, $24, $25, $26, $27, $28, $29
    db $2a, $2b, $2c, $00, $00, $2d, $2e, $2f, $30, $31, $00, $32, $33, $34, $35, $00
    db $36, $06, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $36, $37, $00
    db $00, $38, $39, $3a, $3b, $00, $3c, $3d, $3e, $3f, $00, $00, $40, $41, $42, $43
    db $00, $00, $44, $45, $46, $47, $00, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50
    db $51, $52, $00, $00, $00, $53, $54, $55, $56, $36, $06, $09, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $00, $00
    db $02, $02, $01, $01, $00, $04, $02, $03, $00, $00, $01, $01, $02, $03, $00, $00
    db $00, $00, $00, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $36, $06, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $02
    db $02, $01, $01, $00, $04, $02, $03, $00, $01, $01, $01, $02, $03, $00, $00, $01
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $36, $06, $09, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $00, $00, $02, $02, $02, $01, $00, $00, $04, $02, $03
    db $00, $00, $01, $04, $01, $03, $00, $00, $01, $01, $02, $03, $00, $00, $00, $00
    db $00, $00, $00, $00

    ld [hl], $06
    add hl, bc
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    ld b, $07
    ld [$0009], sp
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_006_566e

jr_006_566e:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $06
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    ld b, $07
    ld [$0000], sp
    nop
    ld a, [bc]
    dec bc
    jr nz, jr_006_56c1

    nop
    ld [hl+], a
    inc hl
    db $10
    inc h
    dec h
    ld h, $27
    jr z, jr_006_56d3

    ld a, [hl+]
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    jr nc, jr_006_56e6

    ld [hl-], a
    inc sp
    nop
    ld [hl], $06
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_56c1:
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_006_56ce

jr_006_56ce:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    nop

jr_006_56d3:
    nop
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
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

jr_006_56e6:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h

    db $03, $01, $67, $68, $69

    inc bc
    ld bc, $6a67
    ld l, c
    inc bc
    ld bc, $6c6b
    ld l, c

    db $14, $01, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $06, $06, $06, $06, $06

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
    nop
    jr c, jr_006_5761

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, @+$3a

    nop
    nop
    db $10
    db $10
    jr nc, @+$32

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_006_577d

    nop
    nop
    jr c, jr_006_5781

    ld b, h
    ld b, h
    inc b
    inc b
    jr jr_006_5767

    jr nz, jr_006_5771

    ld b, b
    ld b, b
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    ld [$1008], sp
    db $10
    jr c, jr_006_5797

    inc b
    inc b

jr_006_5761:
    ld b, h
    ld b, h
    jr c, @+$3a

    nop
    nop

jr_006_5767:
    ld [$1808], sp
    jr @+$2a

    jr z, jr_006_57b6

    ld c, b
    ld a, h
    ld a, h

jr_006_5771:
    ld [$0808], sp
    ld [$0000], sp
    ld a, h
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_006_577d:
    ld a, b
    ld a, b
    inc b
    inc b

jr_006_5781:
    ld b, h
    ld b, h
    jr c, jr_006_57bd

    nop
    nop
    jr jr_006_57a1

    jr nz, jr_006_57ab

    ld b, b
    ld b, b
    ld a, b
    ld a, b
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_006_57cd

    nop
    nop

jr_006_5797:
    ld a, h
    ld a, h
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_006_57c1

jr_006_57a1:
    jr nz, @+$22

    jr nz, @+$22

    nop
    nop
    jr c, jr_006_57e1

    ld b, h
    ld b, h

jr_006_57ab:
    ld b, h
    ld b, h
    jr c, jr_006_57e7

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jr c, jr_006_57ed

    nop

jr_006_57b6:
    nop
    jr c, jr_006_57f1

    ld b, h
    ld b, h
    ld b, h
    ld b, h

jr_006_57bd:
    inc a
    inc a
    inc b
    inc b

jr_006_57c1:
    ld [$3008], sp
    jr nc, jr_006_57c6

jr_006_57c6:
    nop
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_006_57ed

jr_006_57cd:
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $e2c2

    ld [c], a
    or d
    or d
    sbc d
    sbc d
    adc [hl]
    adc [hl]

jr_006_57e1:
    add [hl]
    add [hl]
    nop
    nop
    nop
    nop

jr_006_57e7:
    jr c, jr_006_5821

    db $10
    db $10
    db $10
    db $10

jr_006_57ed:
    db $10
    db $10
    db $10
    db $10

jr_006_57f1:
    jr c, jr_006_582b

    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_5821:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_582b:
    nop
    nop
    ld bc, $0e00
    ld bc, $0f36
    ld e, e
    inc a
    or a
    ld a, e
    nop
    nop
    ld c, $00
    ld [hl], c
    ld c, $a3
    ld a, h
    jp Jump_000_07fc


    ld hl, sp-$39
    jr c, @+$69

    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    jr @+$5c

    inc a
    add a

jr_006_5852:
    nop
    inc bc
    nop
    dec c
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0102
    inc b
    inc bc
    ld [$0807], sp
    rlca
    inc c
    inc bc
    ld l, [hl]
    rst $30
    sbc e
    db $ec
    daa
    ret c

    ld l, [hl]
    sub c
    ld e, h
    and e
    ld [hl], c
    adc [hl]
    rlca
    ld hl, sp+$3e
    pop bc
    and a
    ld e, b
    daa
    ret c

    ld h, [hl]
    sbc b
    adc $30
    xor $30
    xor h
    ld [hl], b
    ld c, h
    ldh a, [$d8]
    ldh [rTAC], a
    ld [$000e], sp
    ld b, $08
    ld d, $08
    inc b
    jr jr_006_58be

    db $10
    ld [$5830], sp
    jr nz, jr_006_58a7

    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $01
    dec b
    ld [bc], a
    rlca
    nop
    inc bc

jr_006_58a6:
    nop

jr_006_58a7:
    ei
    rlca
    xor $1f
    pop de
    ld a, $0f
    ldh a, [$7f]
    add b
    ld a, [$e404]
    jr jr_006_5852

    ld [hl], b
    sub b
    ldh [rNR44], a
    ret nz

    rst $08
    nop
    sbc l

jr_006_58be:
    inc bc
    jr nc, jr_006_58d0

    ld l, d
    inc e
    or l
    ld e, b
    sub e
    ld e, b
    ld hl, sp+$00
    inc bc
    db $fc
    add b

jr_006_58cc:
    ld a, a
    add $b9
    ld l, a

jr_006_58d0:
    sub $b9
    ld c, a
    inc d
    ld a, e
    ld l, $43
    nop
    nop
    ld bc, $6700
    add b
    inc c
    ldh a, [$32]
    call z, Call_006_7e81
    add b
    ld a, a
    ld d, b

jr_006_58e6:
    cp a
    or b
    ld b, b
    ret nz

    nop

jr_006_58eb:
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
    ld a, [de]
    dec b
    scf
    ld [$0836], sp
    ld b, d
    inc l
    ld e, d
    inc h
    ld b, [hl]
    jr nc, jr_006_58a6

    ld d, b
    sub c
    ld l, b
    ld a, c
    ldh [$f1], a
    nop
    add c
    nop
    ld d, b
    jr nz, jr_006_5958

    jr nc, @+$66

    jr jr_006_58cc

    inc b
    cp d
    inc b
    xor h
    rra
    or [hl]
    rrca
    dec sp
    rlca
    ld e, l
    inc hl
    ld a, [hl]
    ld hl, $609f
    ld a, a
    ret nz

    or a
    ret nz

    nop
    ret nz

    jr nz, jr_006_58eb

    nop
    ldh [rNR10], a
    ldh [$90], a
    ldh [$80], a
    ldh a, [rOBP0]
    ldh a, [$c8]
    ld [hl], b
    ld e, l
    and b
    ld h, l
    sub b
    inc de
    ld b, b
    dec h
    ld [bc], a
    ld a, [bc]
    inc b
    ld [hl-], a
    inc c
    cpl

jr_006_5944:
    jr jr_006_599b

    jr c, jr_006_58e6

    nop
    sbc d
    inc b
    inc a
    nop
    ld a, b
    nop
    ld a, [$f401]
    inc bc
    db $fc
    inc bc

jr_006_5955:
    ret c

    rlca

jr_006_5957:
    adc e

jr_006_5958:
    inc b
    inc de
    inc c
    adc a
    ld e, b
    or a

jr_006_595e:
    sbc b
    add hl, de
    and b
    inc hl
    ld b, b
    rrca

jr_006_5964:
    nop
    rst $08
    ldh [$a8], a
    ld [hl], b
    ldh [$38], a
    call nz, $c438
    jr c, jr_006_5964

    jr jr_006_595e

    db $10
    db $ec
    db $10
    ld hl, sp+$00
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
    ld bc, $0301
    ld c, h
    jr nc, jr_006_59de

    jr z, jr_006_5944

    ld [hl], b
    xor b
    ld [hl], b
    ret c

    ld h, b
    or b
    ld b, b
    jr nc, jr_006_5955

    jr nz, jr_006_5957

    ld [hl-], a
    dec c
    ld l, h
    inc de

jr_006_599b:
    ld a, [hl]
    ld bc, $003f
    ld a, $01
    rra
    nop
    inc e
    nop
    nop
    nop
    ld a, d
    cp l
    ld e, e
    cp a
    inc a
    rst $18
    ld c, a
    sbc a
    and a
    rrca
    ld d, e
    daa
    adc h
    ld h, b
    ld b, c
    jr z, @+$01

    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei

jr_006_59c2:
    db $fc
    ld b, [hl]
    ccf
    ld a, [de]
    inc e
    db $f4
    ldh [$fe], a
    rst $38
    db $ed
    di
    xor $ff
    inc [hl]
    cp $38
    inc e
    ld d, e
    ld [$01e6], sp
    ld h, b
    nop
    add b
    nop
    add b
    nop
    nop

jr_006_59de:
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_006_59e5

jr_006_59e5:
    add b
    nop
    ld [bc], a
    inc bc
    ld bc, $0202
    ld bc, $0103
    ld b, $01
    dec b
    ld [bc], a
    dec bc
    ld b, $0f
    ld b, $e0
    nop
    ldh [rP1], a
    ret nz

    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop

jr_006_5a03:
    add b
    nop
    add b
    nop
    ld hl, $1a08
    ld bc, $0315
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    rlca
    dec bc
    add hl, bc
    rrca
    ld d, $09
    ld b, c
    nop
    inc h
    add e
    adc d
    call nz, $e048
    ldh [$f0], a
    call z, $93e3
    ret nz

    add hl, de
    cp h
    ccf
    ret nz

    adc e
    inc b
    ld d, a
    ld [$1827], sp
    adc [hl]
    ld [hl], b
    dec a
    ret nz

    di
    nop
    add $00
    db $10
    ldh [$e4], a
    jr jr_006_59c2

    nop
    ld [bc], a
    nop
    ld h, h
    nop
    jr nc, jr_006_5a03

    sbc b
    ld h, b
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld b, $0b
    inc b
    rrca
    inc b
    ld [de], a
    inc c
    ld d, $08
    inc h
    jr @+$2a

    db $10
    jr nc, jr_006_5a6f

    dec c
    ld [de], a
    dec sp
    rlca
    rla
    ccf
    rra
    ccf

jr_006_5a6f:
    rra
    ccf
    ld l, $1f
    rrca
    rra
    rla
    rrca
    inc l
    ld e, [hl]
    xor a
    rst $18
    sub a
    rst $28
    and a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    ld a, [bc]
    inc b
    ret nc

    call z, $dce0
    and [hl]
    ret c

    call z, Call_006_42b2
    cp h
    ld b, h
    cp b
    xor h
    ret nc

    cpl
    db $10
    ld c, a
    jr nc, jr_006_5aa3

    ld a, b
    jp nz, $c17d

    ld a, [hl]
    xor h
    ld a, b

jr_006_5aa3:
    ld e, c
    jr nc, @+$28

    ld de, $00c0
    ret nz

    nop
    ldh [rP1], a
    and b
    ld b, b
    jr nz, jr_006_5ab1

jr_006_5ab1:
    adc b
    ld [hl], b
    ld [hl], h
    ld hl, sp-$08
    db $fc
    ld l, h
    jr nc, jr_006_5ae6

    ld [hl], b
    ld e, b
    ld h, b
    sub b
    ld h, b
    and b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $3328
    ld d, $39
    cpl
    rra
    rra
    rrca
    rlca
    rra
    rra
    ccf

jr_006_5ad5:
    ccf
    ld a, a
    ld [hl], a
    adc a
    db $fc
    nop
    ld a, b
    add c
    adc l
    di
    rst $30
    rst $28
    sbc $ff
    rst $38
    cp $ff

jr_006_5ae6:
    cp $4a
    add [hl]
    call nc, $aa6b
    push bc
    ld a, c
    add [hl]
    call c, $dc03
    inc bc
    cp h
    inc bc
    cp b
    rlca
    ld [de], a
    dec b
    add hl, bc
    ld b, $02
    dec c
    add hl, bc
    add h
    add h
    nop
    ld b, e
    add b
    ld b, d
    add c
    pop bc
    nop
    ld a, [$66fc]
    ld hl, sp-$62
    ld h, b
    ld l, [hl]
    sub b
    inc e
    ldh [$9c], a
    ld h, b
    jr c, jr_006_5ad5

    ld [hl], b
    add b
    ld e, b
    sub b
    ld b, l
    sub d
    ld d, e
    add a
    inc hl
    rst $00
    and a
    ld b, e
    ld [hl], l
    inc bc
    cpl
    dec e
    ld c, e
    scf
    ld e, b
    inc bc
    ld [de], a
    inc bc
    dec hl
    ld a, [c]
    push af
    ld a, [c]
    and $f4
    db $f4
    ldh [$e8], a
    ldh [$c4], a
    ld [c], a
    ld h, c
    inc sp
    xor e
    ld [hl], c
    reti


    ld a, e
    db $d3
    ld [hl], a
    ccf
    ld a, a
    ei
    ccf
    ld a, a
    cp e
    ld a, a
    cp a
    call z, $fcd1
    db $fc
    ld a, [$f3f7]
    pop hl
    pop hl
    pop hl
    ei
    ld sp, hl
    push af
    db $e3
    db $eb
    rst $30
    ld e, b
    sub b
    ld b, l
    sub d
    ld d, e
    add a
    inc hl
    rst $00
    and a
    ld b, e
    ld [hl], l
    inc bc
    cpl
    dec e
    ld c, a
    ccf
    ld l, e
    scf
    and c
    ld [hl], e
    db $db
    ld a, c
    db $d3
    ld [hl], a
    ccf
    ld a, a
    ei
    ccf
    ld a, a
    cp e
    ld a, a
    cp a
    call z, $fcd1
    db $fc
    cp $ff
    db $eb
    rst $30
    di
    pop hl
    ei
    ld sp, hl
    push af
    db $e3
    db $eb
    rst $30
    ld l, a
    ccf
    cp a
    ld l, a
    ret


    ld l, e
    rst $10
    ld h, e
    ccf
    ld a, a
    ei
    ccf
    ld a, a
    cp e
    ld a, a
    cp a
    call z, $fcd1
    db $fc
    cp $ff
    rst $28
    rst $38
    db $dd
    rst $28
    set 5, l
    pop de
    db $e3
    db $eb
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $4a31
    ld c, d
    ld b, d
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld c, d
    ld sp, $0031
    nop
    sbc l
    sbc l
    ld d, c
    ld d, c
    ld de, $1d11
    dec e
    ld de, $5111
    ld d, c
    sbc l
    sbc l
    nop
    nop
    ld l, $2e
    jr z, jr_006_5c13

    xor b
    xor b
    xor $ee
    ld l, b
    ld l, b
    jr z, jr_006_5c1b

    ld l, $2e
    nop
    nop
    ldh a, [$f0]
    add b
    add b
    add b
    add b
    ldh [$e0], a
    add b
    add b
    add b
    add b
    ldh a, [$f0]
    nop
    nop
    ld [hl], d
    ld [hl], d
    adc d
    adc d
    add d
    add d
    ld [hl], d
    ld [hl], d
    ld a, [bc]
    ld a, [bc]
    adc d
    adc d

jr_006_5c13:
    ld [hl], c
    ld [hl], c
    nop
    nop
    jr z, jr_006_5c41

    dec l
    dec l

jr_006_5c1b:
    ld a, [hl+]
    ld a, [hl+]
    jr z, jr_006_5c47

    jr z, jr_006_5c49

    jr z, jr_006_5c4b

    ret z

    ret z

    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld d, d
    ld d, d
    adc d
    adc d
    adc d
    adc d
    ld a, [$89fa]
    adc c
    adc b
    adc b
    nop
    nop
    cpl
    cpl
    jr z, jr_006_5c63

    jr z, jr_006_5c65

    cpl
    cpl
    jr z, jr_006_5c69

jr_006_5c41:
    ld c, b
    ld c, b
    adc a
    adc a
    nop
    nop

jr_006_5c47:
    ld a, b
    ld a, b

jr_006_5c49:
    ld b, h
    ld b, h

jr_006_5c4b:
    ld b, l
    ld b, l
    ld a, c
    ld a, c
    ld d, c
    ld d, c
    ld c, c
    ld c, c
    ld b, l
    ld b, l
    nop
    nop
    ld b, e
    ld b, e
    and h
    and h
    inc d
    inc d
    dec d
    dec d
    db $f4
    db $f4
    inc d
    inc d

jr_006_5c63:
    inc de
    inc de

jr_006_5c65:
    nop
    nop
    sbc [hl]
    sbc [hl]

jr_006_5c69:
    ld d, b
    ld d, b
    db $10
    db $10
    sbc $de
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sbc [hl]
    sbc [hl]
    nop
    nop
    adc c
    adc c
    jp c, $aada

    xor d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc c
    adc c
    nop
    nop
    ret z

    ret z

    jr z, jr_006_5cb3

    dec h
    dec h
    dec h
    dec h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp nz, Jump_000_00c2

    nop
    cp l
    cp l
    and c
    and c
    ld hl, $3d21
    dec a
    ld hl, $2121
    ld hl, $3d3d
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    sub [hl]
    sub [hl]
    ld d, l
    ld d, l
    inc [hl]
    inc [hl]
    inc d
    inc d

jr_006_5cb3:
    inc d
    inc d
    nop
    nop
    ld e, [hl]
    ld e, [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld e, [hl]
    ld e, [hl]
    ret nc

    ret nc

    ld d, b
    ld d, b
    ld e, [hl]
    ld e, [hl]
    nop
    nop
    adc d
    adc d
    jp c, $aada

    xor d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    nop
    nop
    xor $ee
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    jp hl


    jp hl


    adc c
    adc c
    adc c
    adc c
    ret


    ret


    adc c
    adc c
    adc b
    adc b
    xor $ee
    nop
    nop
    rla
    rla
    inc d
    inc d
    inc d
    inc d
    ld d, [hl]
    ld d, [hl]
    ld d, h
    ld d, h
    and h
    and h
    and a
    and a
    nop
    nop
    ld h, a
    ld h, a
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld h, d
    ld h, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    nop
    nop
    ld sp, $4a31
    ld c, d
    ld b, d
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld c, d
    ld sp, $0031
    nop
    sbc l
    sbc l
    ld d, c
    ld d, c
    ld de, $1d11
    dec e
    ld de, $5111
    ld d, c
    sbc l
    sbc l
    nop
    nop
    ld l, $2e
    jr z, jr_006_5d63

    xor b
    xor b
    xor $ee
    ld l, b
    ld l, b
    jr z, jr_006_5d6b

    ld l, $2e
    nop
    nop
    sbc l
    sbc l
    ld b, c
    ld b, c
    dec e
    dec e
    ld de, $1d11
    dec e
    ld d, c
    ld d, c
    sbc l
    sbc l
    nop
    nop
    inc sp
    inc sp
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld sp, $0a31
    ld a, [bc]
    ld c, d
    ld c, d

jr_006_5d63:
    inc sp
    inc sp
    nop
    nop
    db $dd
    db $dd
    ld d, c
    ld d, c

jr_006_5d6b:
    sub c
    sub c
    dec e
    dec e
    ld de, $1111
    ld de, $dddd
    nop
    nop
    ld sp, hl
    ld sp, hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $0021
    nop
    rst $08
    rst $08
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp nz, Jump_000_00c2

    nop
    sub c
    sub c
    add hl, hl
    add hl, hl
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld a, l
    ld a, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    add d
    add d
    add d
    add d
    add $c6
    ld b, h
    ld b, h
    ld l, h
    ld l, h
    jr c, jr_006_5dfb

    nop
    nop
    nop
    nop
    cp $fe
    add b
    add b
    ld hl, sp-$08
    add b
    add b
    add b
    add b
    cp $fe
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    db $fc
    db $fc
    adc b
    adc b
    adc [hl]
    adc [hl]
    nop
    nop
    nop
    nop
    add d
    add d
    add $c6
    ld l, h
    ld l, h
    jr c, jr_006_5e27

    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    inc bc
    ld bc, $6160

jr_006_5dfb:
    ld h, d
    inc b
    ld bc, $6766
    ld l, b
    ld l, c
    dec b
    ld bc, $5251
    ld d, e
    ld d, h
    ld d, l
    inc bc
    ld bc, $4441
    ld b, e
    inc b
    ld bc, $4c4b
    ld c, l
    ld c, [hl]
    dec b
    ld bc, $5756
    ld e, b
    ld e, c
    ld e, d
    inc bc
    ld bc, $4645
    ld b, e
    inc b
    ld bc, $504f
    ld c, l
    ld c, [hl]
    dec b

jr_006_5e27:
    ld bc, $5c5b
    ld e, l
    ld e, [hl]
    ld e, a
    ld [$0009], sp
    nop
    ld de, $0012
    nop
    inc de
    nop
    nop
    inc d
    dec d
    ld d, $00
    nop
    rla
    nop
    nop
    jr jr_006_5e5b

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    ld e, $1f
    ld b, b
    ld b, c
    jr nz, jr_006_5e6f

    nop
    nop
    ld [hl+], a
    inc hl
    ld b, d
    ld b, e
    inc h
    dec h
    nop
    ld h, $27
    jr z, jr_006_5e84

jr_006_5e5b:
    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l
    ld l, $00
    cpl
    jr nc, jr_006_5e96

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_006_5ea8

jr_006_5e6f:
    ld a, [hl-]
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    adc [hl]
    ld e, [hl]
    sub l
    ld e, [hl]
    adc [hl]
    ld e, [hl]
    add a
    ld e, [hl]
    adc [hl]
    ld e, [hl]
    sub l
    ld e, [hl]
    adc [hl]

jr_006_5e84:
    ld e, [hl]
    add a
    ld e, [hl]
    inc b
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld b, e
    ld b, h
    inc b
    ld [bc], a
    ld [bc], a
    ld b, l
    ld b, c
    ld b, [hl]
    ld b, a
    inc b

jr_006_5e96:
    ld [bc], a
    ld [bc], a
    ld c, b
    ld b, c
    ld c, c
    ld c, d
    or e
    ld e, [hl]
    cp d
    ld e, [hl]
    or e
    ld e, [hl]
    xor h
    ld e, [hl]
    or e
    ld e, [hl]
    cp d
    ld e, [hl]

jr_006_5ea8:
    or e
    ld e, [hl]
    xor h
    ld e, [hl]
    inc b
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc b
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, c
    ld b, l
    ld b, [hl]
    inc b
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, c
    ld b, a
    ld c, b
    ld bc, $0101
    rrca
    ld bc, $0101
    ld l, e
    ld bc, $0101
    ld c, $01
    ld bc, $0d01
    ld bc, $0101
    inc c
    ld bc, $0101
    nop
    ld bc, $0101
    ld l, l
    ld bc, $0101
    ld l, h
    ld bc, $0101
    ld l, e
    ld bc, $0101
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
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
    nop
    nop
    ld a, a
    ld a, a
    inc a
    inc a
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc a
    inc a
    ld c, $0e
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    jr c, @+$3a

    jr c, jr_006_5f8b

    jr jr_006_5f6d

    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    cp $ff
    jr c, jr_006_5f99

    jr c, jr_006_5f9b

    inc a
    inc a
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop

jr_006_5f6d:
    ccf
    ccf
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    nop
    nop
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop

jr_006_5f8b:
    nop
    nop
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_006_5f99:
    nop
    nop

jr_006_5f9b:
    nop
    nop
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    jr nc, jr_006_5fd3

    jr c, jr_006_5fdd

    jr c, jr_006_5fdf

    inc a
    inc a
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, $1e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $c0c0
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

jr_006_5fd3:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    inc e
    inc e
    inc e
    inc e

jr_006_5fdd:
    inc e
    inc e

jr_006_5fdf:
    inc e
    inc e
    rra
    rra
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    rlca
    rlca
    ld b, $06
    ld c, $0e
    inc a
    inc a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld e, $1e
    ld e, $1e
    ld a, $3e
    ccf
    ccf
    scf
    scf
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $e3
    db $e3
    ld [$1808], sp
    jr jr_006_6036

    jr jr_006_6030

    db $10
    jr nc, jr_006_6053

    jr nc, @+$32

    and b
    and b
    ldh [$e0], a
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_006_6030:
    add b
    add b
    add b
    add b
    add b
    add b

jr_006_6036:
    add b
    add b
    add b
    ld [hl], $36
    ld [hl], $36
    inc sp
    inc sp
    ld sp, $3131
    ld sp, $3030
    jr nc, jr_006_6077

    jr nc, jr_006_6079

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    adc h
    adc h
    adc h
    adc h

jr_006_6053:
    call z, $6ccc
    ld l, h
    ld l, h
    ld l, h
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0f
    nop
    nop
    nop
    nop
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

    ld hl, sp-$08
    nop
    nop

jr_006_6077:
    nop
    nop

jr_006_6079:
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld a, $3e
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e3
    db $e3
    jp $c1c3


    pop bc
    pop bc
    pop bc
    add c
    add c
    add b
    add b
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    rrca
    rrca
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
    ret nz

    ret nz

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    jr nc, jr_006_610b

    jr nc, jr_006_610d

    jr nc, jr_006_610f

    jr nc, jr_006_6111

    ld a, b
    ld a, b
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    inc a
    inc a
    inc e
    inc e
    inc e
    inc e
    inc c
    inc c
    inc c
    inc c
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
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    jr jr_006_611d

    db $10
    db $10
    jr nz, jr_006_6129

    nop
    nop

jr_006_610b:
    nop
    nop

jr_006_610d:
    ret nz

    ret nz

jr_006_610f:
    ldh a, [$f0]

jr_006_6111:
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, b
    ld a, b
    jr c, jr_006_6151

    nop
    nop
    nop
    nop

jr_006_611d:
    ldh a, [$f0]
    inc a
    inc a
    ld c, $0e
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_006_6129:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3801
    jr c, @+$3a

    jr c, jr_006_616e

    jr nc, @+$72

    ld [hl], b
    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    ld c, $0e
    inc a
    inc a

jr_006_6151:
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    inc c
    inc c
    rrca
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
    ld [bc], a
    ld [bc], a
    inc b

jr_006_616e:
    inc b
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
    ccf
    ccf
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    ld [hl], b
    jr c, jr_006_61cb

    inc e
    inc e
    inc e
    inc e
    ld c, $0e
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    jr c, jr_006_61d9

    jr jr_006_61bb

    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop

jr_006_61bb:
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop

jr_006_61cb:
    nop
    nop
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    jr nc, jr_006_6209

jr_006_61d9:
    nop
    nop
    nop
    nop
    rst $30
    rst $30
    jp nz, $c2c2

    jp nz, $c2c2

    add $c6
    add $c6
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e

jr_006_6209:
    inc e
    inc e
    jr jr_006_6225

    jr jr_006_6227

    jr nc, jr_006_6241

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b

Call_006_6222:
    inc b
    inc b
    inc b

jr_006_6225:
    inc c
    inc c

jr_006_6227:
    rrca
    rrca
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    jr c, jr_006_6273

    jr c, jr_006_6275

    jr c, jr_006_6277

    add hl, sp
    add hl, sp

jr_006_6241:
    add hl, de
    add hl, de
    rra
    rra
    ld e, $1e
    ld e, $1e
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    ld l, h
    ld l, h
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld c, $0e
    inc e
    inc e
    inc e
    inc e
    jr c, jr_006_62a9

    ld [hl], b
    ld [hl], b

jr_006_6273:
    ret nz

    ret nz

jr_006_6275:
    nop
    nop

jr_006_6277:
    nop
    nop
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    inc a
    inc a
    inc a
    inc a
    ld e, $1e
    sbc [hl]
    sbc [hl]
    nop
    nop
    nop
    nop
    ld [$1808], sp
    jr jr_006_62a6

    jr jr_006_62a0

    db $10
    db $10
    db $10
    inc a
    inc a
    nop
    nop
    nop
    nop
    jr c, jr_006_62d3

    jr c, jr_006_62d5

    jr c, jr_006_62d7

    inc a

jr_006_62a0:
    inc a
    inc e
    inc e
    cp $fe
    nop

jr_006_62a6:
    nop
    nop
    nop

jr_006_62a9:
    ld e, $1e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    jr c, @+$3a

    jr nc, jr_006_62ef

    jr nc, jr_006_62f1

    jr nc, @+$32

    jr nc, @+$32

    nop
    nop
    nop
    nop
    inc de
    inc de
    ld [hl-], a
    ld [hl-], a
    ld [de], a
    ld [de], a
    inc de
    inc de
    ld [de], a
    ld [de], a

jr_006_62d3:
    ld [de], a
    ld [de], a

jr_006_62d5:
    ld a, [hl-]
    ld a, [hl-]

jr_006_62d7:
    nop
    nop
    ld [hl], e
    ld [hl], e
    adc d
    adc d
    ld a, [bc]
    ld a, [bc]
    inc sp
    inc sp
    ld b, d
    ld b, d
    add d
    add d
    ld a, [$00fa]
    nop
    ret z

    ret z

    jr z, jr_006_6315

    jr z, jr_006_6317

jr_006_62ef:
    ret z

    ret z

jr_006_62f1:
    ld [$0808], sp
    ld [$0f0f], sp
    nop
    nop
    ld [$1408], sp

Jump_006_62fc:
    inc d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $3e
    ld [hl+], a
    ld [hl+], a
    and d
    and d
    nop
    nop
    adc e
    adc e
    adc d
    adc d
    ld d, d
    ld d, d
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_006_6315:
    inc hl
    inc hl

jr_006_6317:
    nop
    nop
    sbc $de
    ld de, $1111
    ld de, $dede
    inc d
    inc d
    ld [de], a
    ld [de], a
    pop de
    pop de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_006_633c:
    ld e, $3f

jr_006_633e:
    inc sp
    ld a, c

jr_006_6340:
    ld h, c
    ld [hl], b

jr_006_6342:
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
    jr jr_006_6374

    jr jr_006_635a

jr_006_635a:
    nop
    pop af
    pop bc
    ld hl, sp+$60
    jr c, jr_006_6391

    inc a
    jr nc, @+$1e

jr_006_6364:
    jr jr_006_6382

    jr jr_006_6384

    jr jr_006_636a

jr_006_636a:
    nop
    rst $20
    rst $00
    di
    jp nz, $e2f3

    ei
    ld [c], a
    ei

jr_006_6374:
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

jr_006_6382:
    jr jr_006_63c0

jr_006_6384:
    jr nc, jr_006_63be

    jr nc, jr_006_63c0

    jr nc, jr_006_638a

jr_006_638a:
    nop
    ld [hl], a
    and a
    di
    db $e3
    ld [hl], e
    ld h, e

jr_006_6391:
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
    jr c, jr_006_633c

    jr jr_006_633e

    jr jr_006_6340

    jr jr_006_6342

    jr jr_006_6364

    jr nc, jr_006_63aa

jr_006_63aa:
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

jr_006_63be:
    inc hl
    inc sp

jr_006_63c0:
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
    jr jr_006_6405

    inc a
    inc c
    inc a
    inc e
    inc a
    inc e
    ld a, $1e

jr_006_6405:
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
    jr c, jr_006_643d

    jr c, jr_006_643f

    jr c, jr_006_6441

    nop
    nop
    jp $e3c1


jr_006_642e:
    ld h, b
    pop af
    jr nc, jr_006_64a3

    jr nc, jr_006_64ad

    jr @+$3b

    jr @+$3b

    jr jr_006_643a

jr_006_643a:
    nop
    rst $08
    rst $00

jr_006_643d:
    adc $c2

jr_006_643f:
    and $e2

jr_006_6441:
    and $e2
    or $b2
    or $b2
    cp $9a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$c0]
    ld [hl], c

jr_006_6450:
    ld h, c
    ld a, c
    ld h, c
    ccf
    inc sp
    rra
    ld e, $00
    nop
    inc e
    jr jr_006_6478

    jr jr_006_647c

    jr jr_006_642e

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

jr_006_646c:
    jr @+$1e

    jr @+$3e

    jr nc, @+$3a

    jr nc, jr_006_646c

    ld h, b
    pop af
    pop bc
    nop

jr_006_6478:
    nop
    rst $18
    sbc d
    rst $08

jr_006_647c:
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

    jr c, jr_006_64bd

    inc a
    jr nc, @+$1e

    jr jr_006_64b0

    jr jr_006_64a3

    inc c

jr_006_6495:
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

jr_006_64a3:
    di
    jp $87e7


    nop
    nop
    ld hl, sp-$20
    ld hl, sp+$70

jr_006_64ad:
    cp h
    jr nc, jr_006_646c

jr_006_64b0:
    jr c, @-$62

    jr jr_006_6450

    jr jr_006_6495

    sbc [hl]
    nop
    nop
    scf
    ld h, $3f
    ccf

jr_006_64bd:
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

jr_006_6537:
    nop
    nop
    jr c, @+$1a

    jr c, jr_006_6555

    jr c, @+$1a

    inc a
    inc c
    inc e
    inc c

jr_006_6543:
    rra
    ld b, $8f
    add e
    nop
    nop
    add hl, sp
    jr jr_006_6585

    jr jr_006_65c7

    jr jr_006_65c1

    jr nc, jr_006_6543

    jr nc, jr_006_6537

    ld h, b

jr_006_6555:
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
    ld [hl], l
    ld h, l
    inc e
    ld h, [hl]
    inc e
    ld h, [hl]
    add [hl]
    ld h, l
    inc e
    ld h, [hl]
    inc e
    ld h, [hl]
    ld c, $0e
    ld bc, $403e
    ld b, c
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d

jr_006_6585:
    ld b, e
    adc h
    ld h, l
    cp [hl]
    ld h, l
    ldh a, [$65]
    db $10
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    stop
    ld de, $1312
    dec c
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    rla
    jr jr_006_65ce

    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_006_65cf

    inc bc
    nop

jr_006_65c1:
    nop
    nop
    nop
    ld hl, $0422

jr_006_65c7:
    inc hl
    nop
    ld b, $07
    ld [$0a09], sp

jr_006_65ce:
    dec bc

jr_006_65cf:
    inc c
    nop
    nop
    nop
    nop
    inc h
    dec h
    rrca
    ld h, $00
    ld de, $1312
    dec c
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    daa
    jr z, jr_006_6600

    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$10

    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    add hl, hl
    dec hl
    inc l
    dec l
    ld l, $2f

jr_006_6600:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_006_6638

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_006_664e

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    db $01
    db $01

    db $01, $02, $01, $03, $01, $04, $01, $05, $01, $06

    ld bc, $0107
    ld [$0901], sp
    ld bc, $020a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b

jr_006_6638:
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    inc bc
    ld bc, $0203
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    dec b

jr_006_664e:
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [$0903], sp
    inc bc
    ld a, [bc]
    inc b
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc b
    inc b
    dec b
    inc b
    ld b, $04
    rlca
    inc b
    ld [$0904], sp
    inc b
    ld a, [bc]
    dec b
    ld bc, $0205
    dec b
    inc bc
    dec b
    inc b
    dec b
    dec b
    dec b
    ld b, $05
    rlca
    dec b
    ld [$0905], sp
    dec b
    ld a, [bc]
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $06
    ld b, $07
    ld b, $08
    ld b, $09
    ld b, $0a
    rlca
    ld bc, $0207
    rlca
    inc bc
    rlca
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    rlca
    rlca
    ld [$0907], sp
    rlca
    ld a, [bc]
    ld [$0801], sp
    ld [bc], a
    ld [$0803], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    ld [$0808], sp
    add hl, bc
    ld [$090a], sp
    ld bc, $0209
    add hl, bc
    inc bc
    add hl, bc
    inc b
    add hl, bc
    dec b
    add hl, bc
    ld b, $09
    rlca
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld b, $0a
    rlca
    ld a, [bc]
    ld [$090a], sp
    ld a, [bc]
    ld a, [bc]
    rrca
    db $10

    INCBIN "gfx/image_006_66e6.2bpp"

    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_676f

jr_006_676f:
    ld h, b
    inc bc
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, $40
    ld b, $40
    inc bc
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_006_6781

jr_006_6781:
    rra
    jr jr_006_6784

jr_006_6784:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $c0
    ld [bc], a
    ld h, d
    ld [bc], a
    ld h, d
    ld [bc], a
    ldh [rSC], a
    ld h, b
    ld [bc], a
    ret nc

    ld [bc], a
    nop
    ld b, $03
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_67af

jr_006_67af:
    ld h, b
    rlca
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld [bc], a
    ld b, b
    inc bc
    ld b, b
    ld bc, $0040
    ld h, b
    nop
    jr nc, jr_006_67c1

jr_006_67c1:
    rra
    jr jr_006_67c4

jr_006_67c4:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $70
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    jr nz, jr_006_67da

    ldh [rSC], a

jr_006_67da:
    ret nz

    ld [bc], a
    nop
    ld b, $03
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_67ef

jr_006_67ef:
    ld h, b
    rlca
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, e
    ld b, b
    ld [bc], a
    ld b, b
    ld b, $40
    rlca
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_006_6801

jr_006_6801:
    rra
    jr jr_006_6804

jr_006_6804:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $f0
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [c], a
    ld [bc], a
    nop
    ld [bc], a
    db $10
    ld [bc], a
    ldh a, [rSC]
    nop
    ld b, $03
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_682f

jr_006_682f:
    ld h, b
    rlca
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, c
    ld b, b
    nop
    ld b, b
    ld b, $40
    inc bc
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_006_6841

jr_006_6841:
    rra
    jr jr_006_6844

jr_006_6844:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $e0
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    add d
    ld [bc], a
    ld h, b
    ld [bc], a
    jr nc, jr_006_685c

    ldh a, [rSC]

jr_006_685c:
    nop
    ld b, $03
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_686f

jr_006_686f:
    ld h, b
    rlca
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, h
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    ld bc, $0040
    ld h, b
    nop
    jr nc, jr_006_6881

jr_006_6881:
    rra
    jr jr_006_6884

jr_006_6884:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $f0
    ld [bc], a
    or d
    ld [bc], a
    sub d
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    ret nz

    ld [bc], a
    nop
    ld b, $03
    inc c
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

jr_006_68ac:
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

jr_006_68c4:
    nop
    nop
    nop
    nop
    nop
    add b
    jr nz, jr_006_68ac

    sub b
    ldh [rNR11], a
    rst $20
    nop
    rst $38
    jr nz, jr_006_68c4

    jr nc, @-$06

    ld b, b
    call z, $8000

jr_006_68da:
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
    jr nz, jr_006_6917

    jr nz, @+$10

    ld de, $0e01
    nop
    nop
    ld b, b
    nop
    jr nz, jr_006_690a

jr_006_690a:
    ld d, b
    ld h, b
    jr z, jr_006_697e

    call z, $9e30
    ld h, h
    ld h, [hl]
    ld a, d
    ret nc

    inc a

jr_006_6916:
    add b

jr_006_6917:
    ld c, b
    jr nz, jr_006_68da

    db $10
    ld h, b
    ld c, b
    ld [hl], b
    inc [hl]
    ld hl, sp-$40
    jr nc, jr_006_6923

jr_006_6923:
    ldh [rP1], a
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
    jr nz, jr_006_6916

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

jr_006_697e:
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
    jr c, jr_006_6a0c

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
    nop
    nop
    nop
    ld bc, $0f03
    dec de
    rra
    add hl, bc
    add hl, sp
    db $10
    jr nc, jr_006_6a29

    jr nc, @+$24

    dec sp
    dec c
    ld e, $1f
    rra
    rra
    dec d

jr_006_6a02:
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

jr_006_6a0c:
    ld b, b
    and b
    ld h, b
    sub b
    jr jr_006_6a02

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
    jr nz, @+$3a

    nop
    nop
    nop
    nop
    nop

jr_006_6a29:
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
    nop
    ld a, a

jr_006_6a40:
    nop
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
    jr nz, jr_006_6a40

    ld d, b
    add sp, $70
    ret nz

    ld d, b
    add sp, $20
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ccf
    nop
    rra
    jr nz, jr_006_6a80

    jr @+$1e

    rra
    rrca
    db $10
    ccf
    nop

jr_006_6a80:
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
    jr nc, jr_006_6b03

    sbc b
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    jr c, jr_006_6aa5

jr_006_6aa5:
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

Call_006_6ac8:
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

jr_006_6b03:
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    ld c, $0f
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
    nop
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
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$c0], a
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
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_6baf

jr_006_6baf:
    ld h, b
    inc bc
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, $40
    ld b, $40
    inc bc
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_006_6bc1

jr_006_6bc1:
    rra
    jr jr_006_6bc4

jr_006_6bc4:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $c0
    ld [bc], a
    ld h, d
    ld [bc], a
    ld h, d
    ld [bc], a
    ldh [rSC], a
    ld h, b
    ld [bc], a
    ret nc

    ld [bc], a
    nop
    ld b, $03
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_6bef

jr_006_6bef:
    ld h, b
    rlca
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld [bc], a
    ld b, b
    inc bc
    ld b, b
    ld bc, $0040
    ld h, b
    nop
    jr nc, jr_006_6c01

jr_006_6c01:
    rra
    jr jr_006_6c04

jr_006_6c04:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $70
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    jr nz, jr_006_6c1a

    ldh [rSC], a

jr_006_6c1a:
    ret nz

    ld [bc], a
    nop
    ld b, $03
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_6c2f

jr_006_6c2f:
    ld h, b
    rlca
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, e
    ld b, b
    ld [bc], a
    ld b, b
    ld b, $40
    rlca
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_006_6c41

jr_006_6c41:
    rra
    jr jr_006_6c44

jr_006_6c44:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $f0
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [c], a
    ld [bc], a
    nop
    ld [bc], a
    db $10
    ld [bc], a
    ldh a, [rSC]
    nop
    ld b, $03
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_6c6f

jr_006_6c6f:
    ld h, b
    rlca
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, c
    ld b, b
    nop
    ld b, b
    ld b, $40
    inc bc
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_006_6c81

jr_006_6c81:
    rra
    jr jr_006_6c84

jr_006_6c84:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $e0
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    add d
    ld [bc], a
    ld h, b
    ld [bc], a
    jr nc, jr_006_6c9c

    ldh a, [rSC]

jr_006_6c9c:
    nop
    ld b, $03
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, b
    rra
    ld b, b
    jr nc, jr_006_6caf

jr_006_6caf:
    ld h, b
    rlca
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, h
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    ld bc, $0040
    ld h, b
    nop
    jr nc, jr_006_6cc1

jr_006_6cc1:
    rra
    jr jr_006_6cc4

jr_006_6cc4:
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld hl, sp+$02
    inc c
    nop
    ld b, $f0
    ld [bc], a
    or d
    ld [bc], a
    sub d
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    ret nz

    ld [bc], a
    nop
    ld b, $03
    inc c
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

jr_006_6cec:
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

jr_006_6d04:
    nop
    nop
    nop
    nop
    nop
    add b
    jr nz, jr_006_6cec

    sub b
    ldh [rNR11], a
    rst $20
    nop
    rst $38
    jr nz, jr_006_6d04

    jr nc, @-$06

    ld b, b
    call z, $8000

jr_006_6d1a:
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
    jr nz, jr_006_6d57

    jr nz, @+$10

    ld de, $0e01
    nop
    nop
    ld b, b
    nop
    jr nz, jr_006_6d4a

jr_006_6d4a:
    ld d, b
    ld h, b
    jr z, jr_006_6dbe

    call z, $9e30
    ld h, h
    ld h, [hl]
    ld a, d
    ret nc

    inc a

jr_006_6d56:
    add b

jr_006_6d57:
    ld c, b
    jr nz, jr_006_6d1a

    db $10
    ld h, b
    ld c, b
    ld [hl], b
    inc [hl]
    ld hl, sp-$40
    jr nc, jr_006_6d63

jr_006_6d63:
    ldh [rP1], a
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
    jr nz, jr_006_6d56

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

jr_006_6dbe:
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
    jr c, jr_006_6e4c

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
    nop
    nop
    nop
    ld bc, $0f03
    dec de
    rra
    add hl, bc
    add hl, sp
    db $10
    jr nc, jr_006_6e69

    jr nc, @+$24

    dec sp
    dec c
    ld e, $1f
    rra
    rra
    dec d

jr_006_6e42:
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

jr_006_6e4c:
    ld b, b
    and b
    ld h, b
    sub b
    jr jr_006_6e42

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
    jr nz, @+$3a

    nop
    nop
    nop
    nop
    nop

jr_006_6e69:
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
    nop
    ld a, a

jr_006_6e80:
    nop
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
    jr nz, jr_006_6e80

    ld d, b
    add sp, $70
    ret nz

    ld d, b
    add sp, $20
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ccf
    nop
    rra
    jr nz, jr_006_6ec0

    jr @+$1e

    rra
    rrca
    db $10
    ccf
    nop

jr_006_6ec0:
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
    jr nc, jr_006_6f43

    sbc b
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    jr c, jr_006_6ee5

jr_006_6ee5:
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

jr_006_6f43:
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $06
    rlca
    rlca

    db $00, $00, $1f, $00, $08, $71, $ff, $7f, $00, $00, $a0, $51, $20, $7f, $f4, $7f
    db $00, $00, $ff, $5b, $0a, $03, $e4, $01, $00, $00, $ff, $73, $1c, $51, $af, $28
    db $00, $00, $ff, $73, $5f, $2a, $50, $11, $00, $00, $ff, $2b, $f9, $01, $90, $00
    db $00, $00, $ff, $7f, $d6, $5a, $ad, $35, $00, $00, $ff, $7f, $d6, $5a, $ad, $35

    nop
    nop
    rra
    nop
    ld [$ff71], sp
    ld a, a
    nop
    nop
    and b
    ld d, c
    jr nz, @+$81

    db $f4
    ld a, a
    nop
    nop
    rst $38
    ld e, e
    ld a, [bc]
    inc bc
    db $e4
    ld bc, $0000
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
    rst $18
    ld a, [hl+]
    ld e, a
    add hl, hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_006_7034.2bpp"

    INCBIN "gfx/image_006_7534.2bpp"

    db $ff, $7f, $da, $11, $12, $01, $00, $00, $1c, $53, $da, $11, $12, $01, $00, $00
    db $1c, $53, $da, $11, $44, $79, $00, $00, $9e, $43, $96, $09, $44, $79, $00, $00
    db $9e, $43, $da, $11, $1f, $00, $00, $00, $9e, $43, $da, $11, $12, $01, $00, $00
    db $00, $00, $00, $00, $ff, $7f, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr c, jr_006_75f7

jr_006_75f7:
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    jr c, jr_006_7603

jr_006_7603:
    nop
    nop
    stop
    jr nc, jr_006_7609

jr_006_7609:
    stop
    stop
    stop
    stop
    jr c, jr_006_7613

jr_006_7613:
    nop
    nop
    jr c, jr_006_7617

jr_006_7617:
    ld b, h
    nop
    inc b
    nop
    jr jr_006_761d

jr_006_761d:
    jr nz, jr_006_761f

jr_006_761f:
    ld b, b
    nop
    ld a, h
    nop
    nop
    nop
    inc a
    nop
    ld [$1000], sp
    nop
    jr c, jr_006_762d

jr_006_762d:
    inc b
    nop
    ld b, h
    nop
    jr c, jr_006_7633

jr_006_7633:
    nop
    nop
    ld [$1800], sp
    nop
    jr z, jr_006_763b

jr_006_763b:
    ld c, b
    nop
    ld a, h
    nop
    ld [$0800], sp
    nop
    nop
    nop
    ld a, h
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld a, b
    nop
    inc b
    nop
    ld b, h
    nop
    jr c, jr_006_7653

jr_006_7653:
    nop
    nop
    jr jr_006_7657

jr_006_7657:
    jr nz, jr_006_7659

jr_006_7659:
    ld b, b
    nop
    ld a, b
    nop
    ld b, h
    nop
    ld b, h
    nop
    jr c, jr_006_7663

jr_006_7663:
    nop
    nop
    ld a, h
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_006_766f

jr_006_766f:
    jr nz, jr_006_7671

jr_006_7671:
    jr nz, jr_006_7673

jr_006_7673:
    nop
    nop
    jr c, jr_006_7677

jr_006_7677:
    ld b, h
    nop
    ld b, h
    nop
    jr c, jr_006_767d

jr_006_767d:
    ld b, h
    nop
    ld b, h
    nop
    jr c, jr_006_7683

jr_006_7683:
    nop
    nop
    jr c, jr_006_7687

jr_006_7687:
    ld b, h
    nop
    ld b, h
    nop
    inc a
    nop
    inc b
    nop
    ld [$3000], sp
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jr nz, jr_006_769b

jr_006_769b:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    dec a
    dec e
    dec e
    ld c, l
    ld c, l
    ld h, l
    ld h, l
    ld [hl], c
    ld [hl], c
    ld a, c
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    ld sp, hl
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld hl, $0000
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
    cp $c8
    ldh a, [$a2]
    pop bc
    ld c, d
    add h
    rst $38
    rst $38
    pop af
    rst $38
    adc [hl]
    pop af
    ld b, d
    add c
    nop
    inc bc
    inc b
    inc bc
    ld b, h
    add e
    jr nz, jr_006_775b

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $20
    and l
    jp $ff78


    db $fc
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    cp $ff
    db $fd
    cp $fc
    cp $fa
    db $fc
    db $f4
    ld hl, sp-$0c
    ld hl, sp-$0a
    ld hl, sp-$6f
    ld [$1122], sp
    ld b, h
    inc hl
    ld [$1066], sp
    ld c, h
    ld h, c
    nop
    inc b
    inc bc
    ld sp, $000e
    and a
    add b
    daa
    ld b, c
    daa
    xor c
    ld b, a
    add hl, bc
    rst $00
    ld d, e
    adc a
    sub e
    rrca
    daa
    rra
    ld hl, sp-$09
    pop af
    rst $38
    ld sp, hl
    rst $30
    jp hl


jr_006_775b:
    rst $30
    ei
    rst $20
    db $d3
    rst $28
    rst $30
    rst $08
    and a
    rst $18
    di
    db $fc
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    cp $fa
    db $fc
    ld sp, hl
    db $fc
    ld hl, sp-$01
    db $fc
    rst $38
    add $38
    ld de, $42e0
    add c
    ld [$4207], sp
    dec a
    add hl, bc
    di
    daa
    jp $079b


    rst $28
    rra
    db $dd
    ld a, $30
    rst $38
    ld h, d
    db $fc
    rst $08
    ldh a, [$95]
    db $e3
    ld c, d
    and a
    ld l, h
    and a
    rlca
    rst $38
    db $fc
    inc bc
    ld a, a
    add b
    add hl, sp
    ld b, [hl]
    sub b
    add hl, hl
    ld b, [hl]
    or b
    db $eb
    add h
    pop de
    cp h
    rst $38
    rst $38
    cp $ff
    sbc b
    ld a, a
    di
    rrca
    call Call_006_7e33
    add c
    ld a, a
    add b
    xor a
    ld b, b
    ld c, a
    cp a
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
    ld a, a
    rst $38
    cp a
    ld a, a
    db $e4
    ld a, [$f7c8]
    ret


    rst $30
    cp l
    db $d3
    and l
    db $db
    cp c
    rst $08
    ld e, l

jr_006_77d1:
    xor a
    ld l, [hl]
    sub a
    ld h, $1f
    ld c, $ff
    ld a, [hl]
    rst $38
    xor a
    rst $18
    or a
    rst $08
    sbc e
    rst $20
    ld b, a
    ei
    ld b, l
    ei
    db $d3
    ld h, b
    ret


    ld [hl], b
    call nz, $a2f8
    call c, $de81
    ld h, b
    sbc a
    add b
    ccf
    ld c, b
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    ld l, a
    rra
    ld a, a
    rrca
    or a
    rrca
    scf
    adc a
    and d
    ld e, a
    sbc d
    ld l, a
    db $ec
    cp a
    call nc, $ebf9
    pop af
    pop bc
    di
    call nc, $a2e3
    rst $00
    ld h, c
    rst $38
    ld h, l
    ei
    jp $87ff


    rst $38
    dec b
    cp $0b
    db $fc
    inc bc
    db $fc
    daa
    ld hl, sp-$0c
    ld a, e
    db $ec
    di
    jr nc, jr_006_77d1

    ld c, b
    ld h, a
    and $5f
    call c, $f0bf
    rst $38
    jr nc, jr_006_7853

    ld d, a
    adc a
    rra
    rst $00
    dec sp
    rst $00
    dec sp
    rst $00
    dec bc
    rst $20
    inc de
    rst $28
    inc de
    rst $28
    rlca
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
    db $fd
    cp $fe

jr_006_7853:
    db $fc
    add e
    rst $08
    add e
    rst $10
    ld b, a
    adc a
    rla
    adc a
    rlca
    sbc a
    xor a
    rra
    rrca
    ccf
    rra
    ccf
    call $93f2
    db $ec
    add c
    cp $c0
    rst $38
    pop bc
    cp $e0
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $00
    nop
    db $e4
    nop
    db $e3
    nop
    ldh a, [rNR41]
    ret c

    ld [hl], b
    adc [hl]
    ld hl, sp+$13
    rst $38
    sub [hl]
    rst $38
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
    inc b
    inc bc
    cp c
    ret nz

    push hl
    db $e3
    rra
    dec bc
    ld bc, $1e00
    nop
    ld de, $cb00
    ld bc, $c3e7
    cp h
    rst $20
    jr @+$01

    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    db $fd
    db $fc
    cp $fd
    db $fd
    cp $fc
    cp $fa
    db $fc
    db $fd
    ld hl, sp-$10
    ld sp, hl
    ldh a, [$f9]
    sbc a
    ld a, a
    rra
    rst $38
    cp a
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sub $ff
    db $e4
    rst $38
    add sp, -$02
    ldh a, [$fd]
    ldh a, [$f9]
    ld hl, sp-$0c
    db $fc
    ld a, [c]
    cp $e3
    cp [hl]
    rst $38
    ld e, b
    rst $38
    ld sp, $177f
    cp a
    rrca
    rra
    db $10
    ccf
    inc a
    ld a, a
    ld a, [hl]
    rst $20
    nop
    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ld bc, $06ff
    rst $38
    inc c
    rst $38
    add hl, de
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    add hl, sp
    rst $38
    ld a, l
    rst $38
    sbc e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ldh a, [$f9]
    ld a, [c]
    ld sp, hl
    ld hl, sp-$0d
    pop hl
    di
    push af
    db $e3
    set 4, a
    rst $10
    rst $28
    rst $00
    rst $38
    ld hl, sp-$20
    reti


    ret nz

    rst $10
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    adc $c0
    rst $28
    ldh [$e7], a
    ldh [$9d], a
    add c
    sbc a
    nop
    adc a
    nop
    xor a
    nop
    rst $30
    nop
    rst $38
    nop
    ccf
    nop
    sbc a
    nop
    pop hl
    rst $38
    and e
    ccf
    rst $30
    ccf
    pop af
    ccf
    or b
    ccf
    ld h, c
    ld a, a
    ld h, e
    ld a, a
    or b
    ccf
    ret c

    rst $20
    or b
    rst $08
    ld hl, sp-$79
    dec a
    add d
    ld e, $81
    ld d, e
    add a
    and [hl]
    rst $08
    reti


    xor $3f
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    rst $18
    rst $38
    ld [hl], a
    adc a
    adc e
    rlca
    dec b
    inc bc
    sub e
    rst $08
    db $d3
    adc a
    and a
    sbc a
    ld l, a
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
    rst $28
    rst $08
    db $d3
    jp $c0cf


    rst $28
    ldh [$e7], a
    ldh [$df], a
    ret nz

    cp a
    add b
    rst $20
    ldh [rIE], a
    rst $38
    db $fc
    db $fc
    add c
    nop
    rst $20
    nop
    rst $18
    nop
    cp $00
    cp $00
    ld h, e
    ld l, e
    ld h, c
    dec c
    call nz, $821c
    ld a, $22
    ld a, [hl]
    ld h, c
    ld a, a
    ld b, c
    rst $38
    ld b, b
    rst $38
    db $ed
    ld a, [$f9f6]
    db $fd
    ld a, [c]
    or $fb
    ei
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fe
    rst $38
    dec b
    inc bc
    sbc c
    rlca
    ld h, c
    sbc a
    sub c
    ld l, a
    db $e3
    rra
    ld h, e
    sbc a
    rst $00
    ccf
    adc a
    ld a, a
    daa
    ld l, a
    ld a, [hl-]
    ld l, l
    inc l
    ld a, b
    ld e, h
    jr c, jr_006_7a05

    cp h
    adc d
    db $fc
    ret nz

    ld [c], a
    add h
    ret z

    and a
    db $fc
    db $ed
    db $fc
    call nc, $0a0d
    dec c
    add hl, de
    dec bc
    dec bc
    rra
    rla
    rra
    dec sp
    dec e
    nop

jr_006_7a05:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    call z, $8e54

jr_006_7a18:
    ld h, $84
    inc l
    adc b
    ret nz

    add b
    inc b
    ret nz

    add b
    ld b, h
    ret nz

    nop
    inc sp
    ld l, $03
    inc bc
    dec e
    ld [$1e0c], sp
    ld e, $1e
    inc b
    ld b, $0a
    inc e
    inc d
    ld [$6f27], sp
    ld a, [hl-]
    ld l, l
    inc l
    ld a, b
    ld e, h
    jr c, jr_006_7a55

    cp h
    adc d
    db $fc
    ret nc

    ld [c], a
    or b
    ret nz

    sub h
    ret z

    ld e, [hl]
    adc h
    inc h
    add [hl]
    inc l
    adc b
    ret nz

    add b
    inc b
    ret nz

    add b
    ld b, h
    ret nz

    nop
    inc sp

jr_006_7a55:
    ld l, $03
    inc bc
    ld bc, $1400
    ld [$1e0c], sp
    inc b
    ld b, $0a
    inc e
    inc d
    ld [$6f27], sp
    ld a, [hl-]
    ld l, l
    inc l
    ld a, b
    ld e, h
    jr c, jr_006_7a85

    cp h
    adc d
    db $fc
    ret nz

    ld [c], a
    add b
    ret nz

    sub b
    ret nz

    ld b, b
    sub b
    ld [hl], $94
    jr z, jr_006_7a18

    ret nz

    add b
    inc b
    ret nz

    add b
    ld b, h
    ret nz

    nop
    inc sp

jr_006_7a85:
    ld l, $03
    inc bc
    ld bc, $1000
    nop
    ld [hl+], a
    db $10
    inc [hl]
    ld [de], a
    ld l, $1c
    inc d
    ld [$9100], sp
    nop
    add hl, hl
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld a, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld [hl+], a
    nop
    ld d, d
    nop
    adc d
    nop
    adc d
    nop
    ld a, [$8900]
    nop
    adc b
    nop
    nop
    nop
    cpl
    nop
    jr z, jr_006_7ac9

jr_006_7ac9:
    jr z, jr_006_7acb

jr_006_7acb:
    cpl
    nop
    jr z, jr_006_7acf

jr_006_7acf:
    ld c, b
    nop
    adc a
    nop
    nop
    nop
    ld a, b
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld a, c
    nop
    ld d, c
    nop
    ld c, c
    nop
    ld b, l
    nop
    nop
    nop
    ld b, e
    nop
    and h
    nop
    inc d
    nop
    dec d
    nop
    db $f4
    nop
    inc d
    nop
    inc de
    nop
    nop
    nop
    sbc [hl]
    nop
    ld d, b
    nop
    stop
    sbc $00
    ld d, b
    nop
    ld d, b
    nop
    sbc [hl]
    nop
    nop
    nop
    adc c
    nop
    jp c, $da00

    nop
    xor d
    nop
    xor d
    nop
    adc d
    nop
    adc c
    nop
    nop
    nop
    ret z

    nop
    jr z, jr_006_7b19

jr_006_7b19:
    dec h
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    jp nz, RST_00

    nop
    cp l
    nop
    and c
    nop
    ld hl, $3d00
    nop
    ld hl, $2100
    nop
    dec a
    nop
    nop
    nop
    inc d
    nop
    inc d
    nop
    sub [hl]
    nop
    ld d, l
    nop
    inc [hl]
    nop
    inc d
    nop
    inc d
    nop
    nop
    nop
    ld e, [hl]
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld e, [hl]
    nop
    ret nc

    nop
    ld d, b
    nop
    ld e, [hl]
    nop
    nop
    nop
    ld [hl], e
    nop
    adc d
    nop
    add d
    nop
    cp e
    nop
    adc d
    nop
    adc d
    nop
    ld [hl], e
    nop
    nop
    nop
    call z, Call_000_1200
    nop
    stop
    call z, $0200
    nop
    ld [de], a
    nop
    call z, RST_00
    nop
    ld h, h
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    sub l
    nop
    push af
    nop
    sub h
    nop
    sub h
    nop
    nop
    nop
    ld e, a
    nop
    call nz, $c400
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    nop
    nop
    adc b
    nop
    adc c
    nop
    adc d
    nop
    ld a, [$8b00]
    nop
    adc d
    nop
    adc d
    nop
    nop
    nop
    adc b
    nop
    ld c, b
    nop
    jr z, jr_006_7bab

jr_006_7bab:
    jr z, jr_006_7bad

jr_006_7bad:
    add sp, $00
    jr z, jr_006_7bb1

jr_006_7bb1:
    cpl
    nop
    nop
    nop
    ld [hl], e
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld [hl], c
    nop
    ld c, c
    nop
    ld c, d
    nop
    ld [hl], e
    nop
    nop
    nop
    db $dd
    nop
    ld d, b
    nop
    sub b
    nop
    sbc h
    nop
    stop
    stop
    db $dd
    nop
    nop
    nop
    rst $18
    nop
    add h
    nop
    add h
    nop
    add h
    nop
    add h
    nop
    add h
    nop
    call nz, RST_00
    nop
    add d
    nop
    add d
    nop
    add $00
    ld b, h
    nop
    ld l, h
    nop
    jr c, jr_006_7bf1

jr_006_7bf1:
    nop
    nop
    nop
    nop
    db $fc
    nop
    add [hl]
    nop
    add [hl]
    nop
    db $fc
    nop
    adc b
    nop
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    cp $00
    add b
    nop
    ld hl, sp+$00
    add b
    nop
    add b
    nop
    cp $00
    nop
    nop
    nop
    nop
    add d
    nop
    add $00
    ld l, h
    nop
    jr c, jr_006_7c1d

jr_006_7c1d:
    stop
    stop
    nop
    nop
    nop
    nop
    jp nz, $e200

    nop
    or d
    nop
    sbc d
    nop
    adc [hl]
    nop
    add [hl]
    nop
    nop
    nop
    nop
    nop
    jr c, jr_006_7c37

jr_006_7c37:
    stop
    stop
    stop
    stop
    jr c, jr_006_7c41

jr_006_7c41:
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    stop
    stop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    add b
    nop
    adc [hl]
    nop
    jp nz, Jump_006_7e00

    nop
    nop
    nop
    nop
    nop
    jr c, jr_006_7c77

jr_006_7c77:
    ld l, h
    nop
    add $00
    add d
    nop
    cp $00
    add d
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
    cp $00
    nop
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    ld [hl], b
    nop
    inc e
    nop
    add $00
    ld a, h
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    add d
    nop
    cp $00
    add d
    nop
    add d
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add $00
    ld a, h
    nop
    nop
    nop
    nop
    nop
    cp $00
    stop
    stop
    stop
    stop
    stop
    nop
    nop
    nop
    nop
    rst $08
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    jp nz, RST_00

    ld [$0009], sp
    nop
    ld de, $0012
    nop
    inc de
    nop
    nop
    inc d
    dec d
    ld d, $00
    nop
    rla
    nop
    nop
    jr jr_006_7d12

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    ld e, $1f
    ld b, b
    ld b, c
    jr nz, jr_006_7d26

    nop
    nop
    ld [hl+], a
    inc hl
    ld b, e
    ld b, h
    inc h
    dec h
    nop
    ld h, $27
    jr z, jr_006_7d3b

jr_006_7d12:
    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l
    ld l, $00
    cpl
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_006_7d5f

jr_006_7d26:
    ld a, [hl-]
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [$0009], sp
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b

jr_006_7d3b:
    dec b
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
    dec b
    dec b
    ld bc, $0001
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0000
    dec b
    dec b
    ld bc, $0102
    ld [bc], a
    ld [bc], a

jr_006_7d5f:
    nop
    dec b
    dec b
    nop
    inc b
    inc b
    inc bc
    ld [bc], a
    nop
    dec b
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0500
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    rst $18
    ld h, e
    ld b, h
    ld a, c
    nop
    nop
    ld e, $2b
    jp c, Jump_000_1211

    ld bc, $0000
    nop
    nop
    nop
    nop
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

Jump_006_7e00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_006_7e33:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_006_7e81:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
