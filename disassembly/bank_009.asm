; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    ld a, [$c264]
    ld hl, $d503
    call Call_000_07e6
    bit 7, [hl]
    jp nz, $440b

    bit 5, [hl]
    jp nz, Jump_009_441c

    call Call_009_4566
    ld a, [$c264]
    ld de, $d500
    call Call_000_07ed
    ld a, [de]
    and $f0
    swap a
    ld hl, $43fd
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_007c
    ret


    xor a
    ld [$d53b], a
    ld [$d540], a
    ld a, [$c264]
    ld de, $d503
    call Call_000_07ed
    ld a, [de]
    and $03
    ld [$d53c], a
    ld a, [de]
    and $60
    jr z, jr_009_4051

Call_009_404c:
    ld a, $80
    ld [$d53b], a

jr_009_4051:
    push hl
    ld a, [$c264]
    ld de, $d512
    call Call_000_07ed
    ld a, [de]
    cp $ff
    jp z, Jump_009_42c0

    pop hl
    call Call_009_459d
    ld a, [hl+]
    and $0f
    jp nz, Jump_009_4271

    ld a, [hl-]
    and $0f
    jp nz, Jump_009_4271

    ld a, [$c264]
    ld de, $d503
    call Call_000_07ed
    ld a, [de]
    res 4, a
    ld [de], a
    ld a, [$c264]
    ld de, $d512
    call Call_000_07ed
    xor a
    ld [de], a
    ld a, [$c264]
    ld de, $d5af
    call Call_000_07ed
    xor a
    ld [de], a
    ld a, [$d53b]
    and a
    jr z, jr_009_40b9

    ld a, [$c264]
    ld de, $d50c
    call Call_000_07ed
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_009_40b9

    ld a, [$c264]
    ld de, $d503
    call Call_000_07ed
    ld a, [de]
    res 6, a
    ld [de], a
    xor a
    ld [$d53b], a

jr_009_40b9:
    ld a, [$c264]
    ld [$d5c6], a
    ld de, $d59e
    call Call_000_07ed
    ld a, [de]
    ld [$d5a8], a
    call Call_009_57a7
    jr c, jr_009_40f2

Jump_009_40ce:
    ld a, [$c264]
    ld hl, $d59e
    call Call_000_07e6
    ld a, [$d5a8]
    ld [hl], a
    ld a, [$c264]
    ld hl, $d503
    call Call_000_07e6
    set 7, [hl]
    ld a, [$c264]
    ld hl, $d506
    call Call_000_07e6
    ld [hl], $1e
    ret


jr_009_40f2:
    ld b, a
    ld a, [$c264]
    ld hl, $d5b2
    call Call_000_07e6
    ld a, [hl]
    and a
    jr z, jr_009_4138

    dec a
    ld c, a
    ld d, a
    ld a, [$c264]
    sla a
    sla a
    srl d
    srl d
    add d
    ld hl, $d5b6
    call Call_000_07e6
    ld a, c
    and $03
    ld e, $03

jr_009_411a:
    and a
    jr z, jr_009_4124

    sla e
    sla e
    dec a
    jr jr_009_411a

jr_009_4124:
    ld a, [hl]
    and e
    ld e, a
    ld a, c
    and $03

jr_009_412a:
    and a
    jr z, jr_009_4134

    srl e
    srl e
    dec a
    jr jr_009_412a

jr_009_4134:
    ld a, e
    cp b
    jr z, jr_009_416d

jr_009_4138:
    ld a, [$c264]
    ld hl, $d5b2
    call Call_000_07e6
    ld a, [hl]
    push af
    inc a
    and $0f
    ld [hl], a
    pop af
    ld c, a
    ld d, a
    ld a, [$c264]
    sla a
    sla a
    srl d
    srl d
    add d
    ld hl, $d5b6
    call Call_000_07e6
    ld a, c
    and $03
    ld e, b

jr_009_4160:
    and a
    jr z, jr_009_416a

    sla e
    sla e
    dec a
    jr jr_009_4160

jr_009_416a:
    ld a, [hl]
    or e
    ld [hl], a

jr_009_416d:
    ld a, [$c264]
    ld hl, $d59e
    call Call_000_07e6
    ld a, [$d5a8]
    ld [hl], a
    ld a, [$c264]
    and a
    jr z, jr_009_41f2

    ld c, a
    add a
    add a
    add a
    ld hl, $c144
    call Call_000_07e6
    ld a, [$c264]
    dec a

jr_009_418e:
    add a
    add a
    add a
    ld de, $c144
    call Call_000_07ed
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [de]
    inc de
    sub c
    jr nc, jr_009_41a2

    xor $ff
    inc a

jr_009_41a2:
    cp $04
    jr nc, jr_009_41ea

    ld [$d5ad], a
    ld a, [hl]
    ld c, a
    ld a, [de]
    sub c
    jr nc, jr_009_41b2

    xor $ff
    inc a

jr_009_41b2:
    cp $04
    jr nc, jr_009_41ea

    pop bc
    ld a, c
    dec a
    push bc
    push de
    ld de, $d503
    call Call_000_07ed
    ld a, [de]
    and $03
    ld c, a
    ld a, [$c264]
    ld de, $d503
    call Call_000_07ed
    ld a, [de]
    and $03
    pop de
    cp c
    jr nz, jr_009_41ea

    pop bc
    ld a, [$c264]
    ld de, $d50f
    call Call_000_07ed
    ld a, [$c264]
    ld hl, $d503
    call Call_000_07e6
    jr jr_009_4242

jr_009_41ea:
    pop bc
    dec c
    jr z, jr_009_41f2

    ld a, c
    dec a
    jr jr_009_418e

jr_009_41f2:
    ld a, [$c264]
    ld hl, $d503
    call Call_000_07e6
    ld a, [hl]
    and $03
    xor $01

Jump_009_4200:
    cp b
    jr z, jr_009_4226

    ld a, [hl]
    and $03
    cp b
    jr z, jr_009_425b

    ld a, [$c264]
    add a
    add a
    add a
    ld de, $c144
    call Call_000_07ed
    ld a, [de]
    inc de
    ld c, a
    ld a, [$c100]
    cp c
    jr z, jr_009_4226

    ld a, [de]
    ld c, a
    ld a, [$c101]
    cp c
    jr nz, jr_009_425b

jr_009_4226:
    ld a, [$c264]
    ld de, $d50f
    call Call_000_07ed
    ld a, [de]
    inc a
    ld [de], a
    push hl
    push af
    ld a, [$cf20]
    ld hl, $67a1
    call Call_000_07e6
    pop af
    cp [hl]
    pop hl
    jr c, jr_009_425b

jr_009_4242:
    xor a
    ld [de], a
    set 5, [hl]
    ld a, [$c264]
    ld hl, $d50c
    call Call_000_07e6
    ld a, [$cf20]
    ld de, $67a4
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


jr_009_425b:
    ld a, [hl]
    and $fc
    or b
    ld [hl], a
    ld a, b
    ld [$d53c], a
    sla b
    call Call_009_4591
    ld a, [hl]
    and $f9
    or b
    ld [hl], a
    call Call_009_459d

Jump_009_4271:
    push hl
    ld b, $05
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, $c17c

Jump_009_427a:
    ld a, [hl+]
    cp d
    jp nz, Jump_009_43a2

    ld a, [hl]
    sub e
    bit 7, a
    jr z, jr_009_4288

    xor $ff
    inc a

jr_009_4288:
    cp $10
    jp nc, Jump_009_43a2

    ld a, [hl]
    ld c, a
    push de
    ld a, $05
    sub b
    ld de, $c255
    call Call_000_07ed
    ld a, [de]
    pop de
    bit 7, a
    jp nz, Jump_009_43a2

    ld a, c
    sub e
    bit 7, a
    jr z, jr_009_42b4

    ld a, [$c264]
    ld de, $d5af
    call Call_000_07ed
    ld a, $02
    ld [de], a
    jr jr_009_42c0

jr_009_42b4:
    ld a, [$c264]
    ld de, $d5af
    call Call_000_07ed
    ld a, $03
    ld [de], a

Jump_009_42c0:
jr_009_42c0:
    pop hl
    xor a
    ld [$d53b], a
    ld [$d540], a
    call Call_009_459d
    inc hl
    ld a, [hl-]
    and $0f
    jr z, jr_009_42df

    ld a, [$c264]
    ld de, $d5af
    call Call_000_07ed
    ld a, [de]
    dec a
    ld d, a
    jr jr_009_4345

jr_009_42df:
    ld a, [hl+]
    srl a
    srl a
    srl a
    call Call_009_4b52
    ld a, [hl]
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    call Call_009_593b
    ld a, e
    and a
    jp z, Jump_009_40ce

    cp $01
    jr z, jr_009_4345

    push de
    ld a, [$c264]
    ld de, $d5af
    call Call_000_07ed
    ld a, [de]
    dec a
    ld b, a
    pop de
    ld a, d
    and b
    jr z, jr_009_431c

    ld a, d
    xor b
    ld d, a
    cp $02
    jr z, jr_009_4345

jr_009_431c:
    bit 4, d
    jr z, jr_009_4324

    ld d, $04
    jr jr_009_4345

jr_009_4324:
    ld a, d
    and $03
    jr z, jr_009_4343

    cp $03
    jr nz, jr_009_4340

    ld d, $01
    ld a, [$c101]
    cp $a1
    jr c, jr_009_4337

    xor a

jr_009_4337:
    call Call_009_459d
    inc hl
    cp [hl]
    jr nc, jr_009_4345

    ld a, $02

jr_009_4340:
    ld d, a
    jr jr_009_4345

jr_009_4343:
    ld d, $08

jr_009_4345:
    xor a

jr_009_4346:
    srl d
    jr c, jr_009_434d

    inc a
    jr jr_009_4346

jr_009_434d:
    ld b, a
    ld a, [$c264]
    ld hl, $d503
    call Call_000_07e6
    ld a, [hl]
    and $e0
    or b
    ld [hl], a
    ld a, [$c264]
    ld hl, $d512
    call Call_000_07e6
    xor a
    ld [hl], a
    ld a, [$c264]
    ld de, $d5af
    call Call_000_07ed
    xor a
    ld [de], a
    call Call_009_459d
    ld a, b
    cp $03
    jr nz, jr_009_4382

    inc [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    inc [hl]
    jr jr_009_43a1

jr_009_4382:
    cp $02
    jr nz, jr_009_438e

    dec [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    dec [hl]
    jr jr_009_43a1

jr_009_438e:
    inc hl
    cp $01
    jr nz, jr_009_439b

    dec [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    dec [hl]
    jr jr_009_43a1

jr_009_439b:
    inc [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    inc [hl]

jr_009_43a1:
    ret


Jump_009_43a2:
    ld a, $07
    call Call_000_07e6
    dec b
    jp nz, Jump_009_427a

    pop hl
    ld a, $03
    ld [$d53f], a
    ld a, [$c264]
    ld de, $d509
    call Call_000_07ed
    ld hl, $d539
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, [$c264]
    ld de, $d512
    call Call_000_07ed
    ld a, [de]
    ld [$d540], a
    call Call_009_459d
    ld a, [$c264]
    ld de, $d503
    call Call_000_07ed
    ld a, [de]
    ld c, a
    and $03
    ld de, $4b6c
    bit 6, c
    jr z, jr_009_43e9

    ld de, $4b74
    jr jr_009_43f0

jr_009_43e9:
    bit 4, c
    jr z, jr_009_43f0

    ld de, $4b7c

jr_009_43f0:
    push hl
    call Call_000_0775
    xor l
    ld b, l
    call z, Call_000_0647
    ld c, d
    or c
    ld c, d
    ret


    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $fa40
    ld h, h
    jp nz, Jump_000_0611

    push de
    call Call_000_07ed
    ld a, [de]
    dec a
    ld [de], a
    and a
    ret nz

    res 7, [hl]
    ret


Jump_009_441c:
    ld a, [$c264]
    ld de, $d50c
    call Call_000_07ed
    ld a, [de]
    dec a
    ld [de], a
    and a
    jr z, jr_009_4451

    and $07
    ret nz

    ld a, [de]
    and $18
    srl a
    srl a
    srl a
    ld hl, $4b74
    call Call_000_07e6
    ld c, [hl]
    call Call_009_459d
    inc hl
    inc hl
    ld [hl], c
    inc hl
    ld [hl], $03
    inc c
    inc c
    inc hl
    inc hl
    inc hl
    ld [hl], c
    inc hl
    ld [hl], $03
    ret


jr_009_4451:
    res 5, [hl]
    set 6, [hl]
    ld a, $04
    ld [de], a
    ret


    xor a
    ld [$c53a], a
    ld de, $4546
    ld hl, $d500
    ld a, [de]
    inc de
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $d506
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    xor a
    ld hl, $d503
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $d50c
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    xor a
    ld hl, $d509
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $d50f
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $d512
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$d52d], a
    ld [$d52e], a
    ld [$d52f], a
    ld [$d530], a
    ld [$d531], a
    ld [$d532], a
    ld [$d533], a
    ld [$d534], a
    ld [$d535], a
    ld [$d536], a
    ld a, [$d3d0]
    and a
    jr z, jr_009_44d0

    ld a, $01
    ld [$d519], a
    ld a, $15
    ld [$d51a], a
    ld hl, $d542
    ld b, $5a
    xor a

jr_009_44c4:
    ld [hl+], a
    dec b
    jr nz, jr_009_44c4

    ld [$d59c], a
    ld [$d59d], a
    jr jr_009_451b

jr_009_44d0:
    ld a, [$c200]
    ld de, $4b8c
    call Call_000_07ed
    ld a, [de]
    add a
    add a
    ld hl, $4bf0
    call Call_000_07e6
    ld a, [hl+]
    ld [$d51a], a
    ld a, [hl]
    ld [$d519], a
    ld a, [$c200]
    ld hl, $6bf2
    call Call_000_07e5
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $d542
    ld b, $5a

jr_009_44fb:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_009_44fb

    ld a, [$c200]
    ld hl, $6b8e
    call Call_000_07e6
    ld a, [hl]
    ld [$d59c], a
    ld a, [$c200]
    ld hl, $6b2a
    call Call_000_07e6
    ld a, [hl]
    ld [$d59d], a

jr_009_451b:
    xor a
    ld [$d59e], a
    ld [$d59f], a
    ld [$d5a0], a
    ld [$d5a1], a
    ld [$d5a2], a
    ld [$d5a3], a
    ld [$d5ae], a
    ld hl, $d5b2
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
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    jr nc, @+$17

    ld h, b
    dec d
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    nop
    ld bc, $2520

Call_009_4566:
    ld a, [$c264]
    ld hl, $d506
    call Call_000_07e6
    ld a, [hl]
    dec a
    ld [hl], a
    and a
    ret nz

    ld a, [$c264]
    ld de, $d500
    call Call_000_07ed
    ld a, [de]
    inc a
    and $0f
    ld [de], a
    push hl
    ld hl, $4546
    call Call_000_07e5
    ld a, [de]
    or [hl]
    ld [de], a
    inc hl
    ld a, [hl]
    pop hl
    ld [hl], a
    ret


Call_009_4591:
    ld hl, $c265
    ld a, [$c264]
    sla a
    call Call_000_07e6
    ret


Call_009_459d:
    ld hl, $c144
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ret


    pop hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    inc hl
    ld a, [hl-]
    cp $90
    ret nc

    and $0c
    srl a
    srl a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    ld de, $d539
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, b
    ld e, a
    inc hl
    push hl
    push de
    ld a, [hl]
    ld h, a
    ld b, a
    ld a, [de]
    ld l, a
    ld a, [$d540]
    and a
    jp z, Jump_009_46f5

    push hl
    push de
    ld a, [$d540]
    dec a
    add a
    add a
    add a
    ld de, $c17c
    call Call_000_07ed
    inc de
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    inc hl
    ld a, [de]
    sub [hl]
    jr nc, jr_009_45fe

    xor $ff
    inc a

jr_009_45fe:
    pop de
    pop hl
    cp $12
    jp nc, Jump_009_46f5

    push hl
    ld a, [$d540]
    dec a
    ld hl, $c255
    call Call_000_07e6
    ld a, [hl]
    pop hl
    bit 7, a
    jp nz, Jump_009_46f5

    push hl
    ld a, [$d540]
    dec a
    ld hl, $c24b
    call Call_000_07e6
    ld a, [hl]
    pop hl
    and $7f
    jp nz, Jump_009_46d4

    push hl
    ld a, [$d540]
    dec a
    add a
    add a
    add a
    ld hl, $c17c
    call Call_000_07e6
    ld a, [$c100]
    sub [hl]
    inc hl
    bit 7, a
    jr z, jr_009_4643

    xor $ff
    inc a

jr_009_4643:
    cp $10
    jr nc, jr_009_4654

    ld a, [$c101]
    cp $a1
    jr c, jr_009_464f

    xor a

jr_009_464f:
    sub [hl]
    cp $11
    jr c, jr_009_46d3

jr_009_4654:
    push bc
    dec hl
    ld b, $00
    ld de, $c144

jr_009_465b:
    ld a, [$c264]
    cp b
    jr z, jr_009_467a

    ld a, [de]
    inc de
    sub [hl]
    bit 7, a
    jr z, jr_009_466b

    xor $ff
    inc a

jr_009_466b:
    cp $10
    jr nc, jr_009_467a

    ld a, [de]
    inc hl
    sub [hl]
    dec hl
    cp $11
    jr nc, jr_009_467a

    pop bc
    jr jr_009_46d3

jr_009_467a:
    ld a, $07
    call Call_000_07ed
    inc b
    ld a, b
    cp $03
    jr c, jr_009_465b

    pop bc
    inc hl
    ld a, [hl]
    cp $90
    jr nc, jr_009_46d3

    push bc
    dec hl
    ld b, $00
    ld c, $00
    ld de, $c17c

jr_009_4695:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_009_46a6

    ld a, [$d540]
    dec a
    cp b
    jr z, jr_009_46a6

    inc c
    ld a, b
    ld [$d5ad], a

jr_009_46a6:
    ld a, $07
    call Call_000_07ed
    inc b
    ld a, b
    cp $05
    jr c, jr_009_4695

    inc hl
    ld a, c
    pop bc
    cp $01
    jr c, jr_009_46ef

    jr nz, jr_009_46d3

    ld a, [$d5ad]
    add a
    add a
    add a
    ld de, $c17c
    call Call_000_07ed
    inc de
    ld a, [de]
    sub [hl]
    dec hl
    cp $11
    jr nc, jr_009_46ef

    ld a, [de]
    cp $90
    jr c, jr_009_46ef

jr_009_46d3:
    pop hl

Jump_009_46d4:
    pop de
    pop hl
    ld a, [$c264]
    ld hl, $d512
    call Call_000_07e6
    ld a, [$c264]
    ld de, $d5af
    call Call_000_07ed
    ld a, $03
    ld [de], a
    ld a, $ff
    ld [hl], a
    ret


jr_009_46ef:
    pop hl
    ld de, $0060
    jr jr_009_4710

Jump_009_46f5:
    ld a, [$d519]
    ld d, a
    ld a, [$d51a]
    ld e, a
    ld a, [$d53b]
    and a
    jr nz, jr_009_4708

    call Call_009_650c
    jr jr_009_4710

jr_009_4708:
    ld a, e
    sub $40
    ld e, a
    ld a, d
    sbc $00
    ld d, a

jr_009_4710:
    add hl, de
    ld a, b
    and $0f
    cp $0f
    jr nz, jr_009_4722

    ld a, h
    and $0f
    cp $01
    jr nz, jr_009_4722

    dec h
    ld l, $ff

jr_009_4722:
    pop de
    ld a, l
    ld [de], a
    ld a, h
    pop hl
    ld b, a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    inc hl
    ld a, b
    add $08
    ld [hl+], a
    inc c
    inc c
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ld a, [$d53b]
    and a
    jr z, jr_009_476d

    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    inc hl
    ld a, [hl]
    and $07
    cp $07
    jr z, jr_009_4757

    cp $06
    jr nz, jr_009_476d

    inc [hl]

jr_009_4757:
    inc [hl]
    push af
    dec hl
    call Call_009_5ddd
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    inc hl
    dec [hl]
    pop af
    cp $06
    jr nz, jr_009_476d

    dec [hl]

jr_009_476d:
    ld a, [$d540]
    and a
    ret z

    dec a
    add a
    add a
    add a
    ld hl, $c17c
    call Call_000_07e6
    ld c, [hl]
    inc hl
    ld a, [hl]
    sub b
    cp $10
    ret nc

    ld a, b
    add $10
    ld b, a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    add $08
    ld [hl], a
    ld d, $00
    ld hl, $c17c

jr_009_4793:
    ld a, [hl+]
    cp c
    jr nz, jr_009_47c0

    ld a, [$d540]
    dec a
    cp d
    jr z, jr_009_47c0

    ld a, [hl]
    sub b
    cp $10
    jr nc, jr_009_47c0

    push hl
    ld a, d
    ld hl, $c24b
    call Call_000_07e6
    ld a, [hl]
    pop hl
    and $7f
    jr nz, jr_009_47c0

    ld a, b
    add $10
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    add $08
    ld [hl+], a
    inc hl
    inc hl
    jr jr_009_47c5

jr_009_47c0:
    ld a, $07
    call Call_000_07e6

jr_009_47c5:
    inc d
    ld a, d
    cp $05
    jr c, jr_009_4793

    ret


    pop hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    inc hl
    ld a, [hl-]
    and a
    ret z

    and $0c
    srl a
    srl a
    call Call_000_07ed
    ld a, [de]
    add $02
    ld c, a
    ld de, $d539
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, b
    ld e, a
    inc hl
    push hl
    push de
    ld a, [hl]
    ld h, a
    ld b, a
    ld a, [de]
    ld l, a
    ld a, [$d540]
    and a
    jp z, Jump_009_491c

    push hl
    push de
    ld a, [$d540]
    dec a
    add a
    add a
    add a
    ld de, $c17c
    call Call_000_07ed
    inc de
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    inc hl
    ld a, [de]
    sub [hl]
    jr nc, jr_009_481e

    xor $ff
    inc a

jr_009_481e:
    pop de
    pop hl
    cp $12
    jp nc, Jump_009_491c

    push hl
    ld a, [$d540]
    dec a
    ld hl, $c255
    call Call_000_07e6
    ld a, [hl]
    pop hl
    bit 7, a
    jp nz, Jump_009_491c

    push hl
    ld a, [$d540]
    dec a
    ld hl, $c24b
    call Call_000_07e6
    ld a, [hl]
    pop hl
    and $7f
    jp nz, Jump_009_48fb

    push hl
    ld a, [$d540]
    dec a
    add a
    add a
    add a
    ld hl, $c17c
    call Call_000_07e6
    ld a, [$c100]
    sub [hl]
    inc hl
    bit 7, a
    jr z, jr_009_4863

    xor $ff
    inc a

jr_009_4863:
    cp $10
    jr nc, jr_009_4877

    ld a, [$c101]
    ld b, a
    ld a, [hl]
    cp $a1
    jr c, jr_009_4871

    xor a

jr_009_4871:
    sub b
    cp $11
    jp c, Jump_009_48fa

jr_009_4877:
    push bc
    dec hl
    ld b, $00
    ld de, $c144

jr_009_487e:
    ld a, [$c264]
    cp b
    jr z, jr_009_489f

    ld a, [de]
    inc de
    sub [hl]
    bit 7, a
    jr z, jr_009_488e

    xor $ff
    inc a

jr_009_488e:
    cp $10
    jr nc, jr_009_489f

    ld a, [de]
    ld c, a
    inc hl
    ld a, [hl]
    dec hl
    sub c
    cp $11
    jr nc, jr_009_489f

    pop bc
    jr jr_009_48fa

jr_009_489f:
    ld a, $07
    call Call_000_07ed
    inc b
    ld a, b
    cp $03
    jr c, jr_009_487e

    pop bc
    inc hl
    ld a, [hl]
    and a
    jr z, jr_009_48fa

    push bc
    dec hl
    ld b, $00
    ld c, $00
    ld de, $c17c

jr_009_48b9:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_009_48ca

    ld a, [$d540]
    dec a
    cp b
    jr z, jr_009_48ca

    inc c
    ld a, b
    ld [$d5ad], a

jr_009_48ca:
    ld a, $07
    call Call_000_07ed
    inc b
    ld a, b
    cp $05
    jr c, jr_009_48b9

    inc hl
    ld a, c
    pop bc
    cp $01
    jr c, jr_009_4916

    jr nz, jr_009_48fa

    ld a, [$d5ad]
    add a
    add a
    add a
    ld de, $c17c
    call Call_000_07ed
    inc de
    push bc
    ld a, [de]
    ld c, a
    inc hl
    ld a, [hl-]
    sub c
    pop bc
    cp $11
    jr nc, jr_009_4916

    ld a, [de]
    and a
    jr nz, jr_009_4916

Jump_009_48fa:
jr_009_48fa:
    pop hl

Jump_009_48fb:
    pop de
    pop hl
    ld a, [$c264]
    ld hl, $d512
    call Call_000_07e6
    ld a, [$c264]
    ld de, $d5af
    call Call_000_07ed
    ld a, $02
    ld [de], a
    ld a, $ff
    ld [hl], a
    ret


jr_009_4916:
    pop hl
    ld de, $0060
    jr jr_009_4937

Jump_009_491c:
    ld a, [$d519]
    ld d, a
    ld a, [$d51a]
    ld e, a
    ld a, [$d53b]
    and a
    jr nz, jr_009_492f

    call Call_009_650c
    jr jr_009_4937

jr_009_492f:
    ld a, e
    sub $40
    ld e, a
    ld a, d
    sbc $00
    ld d, a

jr_009_4937:
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    cp $91
    jr c, jr_009_4947

    ld h, $00
    ld l, $ff
    jr jr_009_4958

jr_009_4947:
    ld a, b
    and $0f
    cp $01
    jr nz, jr_009_4958

    ld a, h
    and $0f
    cp $0f
    jr nz, jr_009_4958

    inc h
    ld l, $ff

jr_009_4958:
    pop de
    ld a, l
    ld [de], a
    ld a, h
    pop hl
    ld b, a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld a, [$d53f]
    or $20
    ld [hl+], a
    inc hl
    ld a, b
    add $08
    ld [hl+], a
    dec c
    dec c
    ld [hl], c
    inc hl
    ld a, [$d53f]
    or $20
    ld [hl+], a
    ld a, [$d53b]
    and a
    jr z, jr_009_49a7

    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    inc hl
    ld a, [hl]
    and $07
    cp $01
    jr z, jr_009_4991

    cp $02
    jr nz, jr_009_49a7

    dec [hl]

jr_009_4991:
    dec [hl]
    push af
    dec hl
    call Call_009_5ddd
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    inc hl
    inc [hl]
    pop af
    cp $02
    jr nz, jr_009_49a7

    inc [hl]

jr_009_49a7:
    ld a, [$d540]
    and a
    ret z

    dec a
    add a
    add a
    add a
    ld hl, $c17c
    call Call_000_07e6
    ld c, [hl]
    inc hl
    ld a, b
    sub [hl]
    cp $10
    ret nc

    ld a, b
    sub $10
    ld b, a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    add $08
    ld [hl], a
    ld d, $00
    ld hl, $c17c

jr_009_49cd:
    ld a, [hl+]
    cp c
    jr nz, jr_009_49fa

    ld a, [$d540]
    dec a
    cp d
    jr z, jr_009_49fa

    ld a, b
    sub [hl]
    cp $10
    jr nc, jr_009_49fa

    push hl
    ld a, d
    ld hl, $c24b
    call Call_000_07e6
    ld a, [hl]
    pop hl
    and $7f
    jr nz, jr_009_49fa

    ld a, b
    sub $10
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    add $08
    ld [hl+], a
    inc hl
    inc hl
    jr jr_009_49ff

jr_009_49fa:
    ld a, $07
    call Call_000_07e6

jr_009_49ff:
    inc d
    ld a, d
    cp $05
    jr c, jr_009_49cd

    ret


    pop hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    ld a, [hl]
    and $0c
    srl a
    srl a
    set 2, a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    ld de, $d539
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, b
    ld e, a
    push hl
    push de
    ld a, [hl]
    ld h, a
    ld b, a
    ld a, [de]
    ld l, a
    ld a, [$d519]
    ld d, a
    ld a, [$d51a]
    ld e, a
    ld a, [$d53b]
    and a
    jr nz, jr_009_4a40

    call Call_009_650c
    jr jr_009_4a48

jr_009_4a40:
    ld a, e
    sub $40
    ld e, a
    ld a, d
    sbc $00
    ld d, a

jr_009_4a48:
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    cp $81
    jr c, jr_009_4a58

    ld h, $00
    ld l, $ff
    jr jr_009_4a69

jr_009_4a58:
    ld a, b
    and $0f
    cp $01
    jr nz, jr_009_4a69

    ld a, h
    and $0f
    cp $0f
    jr nz, jr_009_4a69

    inc h
    ld l, $ff

jr_009_4a69:
    pop de
    ld a, l
    ld [de], a
    ld a, h
    pop hl
    ld b, a
    ld [hl+], a
    inc hl
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ld [hl], b
    inc hl
    inc hl
    inc c
    inc c
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ld a, [$d53b]
    and a
    jr z, jr_009_4ab0

    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    ld a, [hl]
    and $07
    cp $01
    jr z, jr_009_4a9c

    cp $02
    jr nz, jr_009_4ab0

    dec [hl]

jr_009_4a9c:
    dec [hl]
    push af
    call Call_009_5ddd
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    inc [hl]
    pop af
    cp $02
    jr nz, jr_009_4ab0

    inc [hl]

jr_009_4ab0:
    ret


    pop hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    ld a, [hl]
    and $0c
    srl a
    srl a
    set 2, a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    ld de, $d539
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, b
    ld e, a
    push hl
    push de
    ld a, [hl]
    ld h, a
    ld b, a
    ld a, [de]
    ld l, a
    ld a, [$d519]
    ld d, a
    ld a, [$d51a]
    ld e, a
    ld a, [$d53b]
    and a
    jr nz, jr_009_4aeb

    call Call_009_650c
    jr jr_009_4af3

jr_009_4aeb:
    ld a, e
    sub $40
    ld e, a
    ld a, d
    sbc $00
    ld d, a

jr_009_4af3:
    add hl, de
    ld a, b
    and $0f
    cp $0f
    jr nz, jr_009_4b05

    ld a, h
    and $0f
    cp $01
    jr nz, jr_009_4b05

    dec h
    ld l, $ff

jr_009_4b05:
    pop de
    ld a, l
    ld [de], a
    ld a, h
    pop hl
    ld b, a
    ld [hl+], a
    inc hl
    ld [hl], c
    inc hl
    ld a, [$d53f]
    or $40
    ld [hl+], a
    ld [hl], b
    inc hl
    inc hl
    inc c
    inc c
    ld [hl], c
    inc hl
    ld a, [$d53f]
    or $40
    ld [hl+], a
    ld a, [$d53b]
    and a
    jr z, jr_009_4b50

    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    ld a, [hl]
    and $07
    cp $07
    jr z, jr_009_4b3c

    cp $06
    jr nz, jr_009_4b50

    inc [hl]

jr_009_4b3c:
    inc [hl]
    push af
    call Call_009_5ddd
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    dec [hl]
    pop af
    cp $02
    jr nz, jr_009_4b50

    dec [hl]

jr_009_4b50:
    ret


    ret


Call_009_4b52:
    ld e, a
    sla a
    sla a
    ld c, a
    xor a
    sla e
    sla e
    sla e
    sla e
    adc $00
    ld d, a
    ld a, c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ret


    xor b
    xor h
    or b
    xor h
    or h
    cp b
    cp h
    cp b
    ret nz

    call nz, $c4c8
    call z, $d4d0
    ret nc

    ret c

    call c, $dce0
    or h
    cp b
    cp h
    cp b
    xor h
    or b
    or h
    or b
    xor h
    or b
    or h
    or b
    nop
    ld bc, $0402
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $10
    ld [bc], a
    inc bc
    dec b
    rlca
    add hl, bc
    dec bc
    dec c
    rrca
    ld de, $1312
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    di
    nop
    ld a, [de]
    ld bc, $00fc
    ld e, $01
    inc b
    ld bc, $0122
    add hl, bc
    ld bc, $0126

Jump_009_4c00:
    dec c
    ld bc, $012b
    ld de, $2f01
    ld bc, $0113
    ld sp, $1501
    ld bc, $0133
    rla
    ld bc, $0135
    ld a, [de]
    ld bc, $0137
    inc e
    ld bc, $013a
    ld e, $01
    inc a
    ld bc, $0120
    ld a, $01
    ld [hl+], a
    ld bc, $0140
    inc h
    ld bc, $0142
    ld h, $01
    ld b, h
    ld bc, $0129
    ld c, c
    ld bc, $012b
    ld c, l
    ld bc, $0133
    ld d, l
    ld bc, $0133
    ld d, l
    ld bc, $8421
    ld c, e
    ld c, [hl]
    ld hl, $c164
    ld de, $d52d
    call Call_009_4cf3
    ld a, $07
    ld [$d52f], a
    ld a, $08
    ld [$d530], a
    ld a, $3c
    ld [$d3d3], a
    xor a
    ld [$d5ab], a
    ld a, [$c164]
    ld [$d3d2], a
    ld a, $01
    ld [$d3d1], a
    xor a
    ld [$d5ca], a
    ret


    ld hl, $c542
    set 0, [hl]
    ld hl, $4b6c
    ld c, [hl]
    ld hl, $c144
    ld b, $03

jr_009_4c7e:
    ld de, $c265
    ld a, $03
    sub b
    add a
    call Call_000_07ed
    ld a, [de]
    xor $11
    and $99
    jr z, jr_009_4c96

    ld a, $08
    call Call_000_07e6
    jr jr_009_4ca5

jr_009_4c96:
    ld a, c
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], $03
    inc hl
    inc hl
    inc hl
    add $02
    ld [hl+], a
    ld [hl], $03
    inc hl

jr_009_4ca5:
    dec b
    jr nz, jr_009_4c7e

    ld a, $02
    ld hl, $44df
    call Call_000_0061
    call Call_000_0389
    xor a
    ldh [$bc], a
    ld hl, $67aa
    ld c, $01

jr_009_4cbb:
    ld de, $c494
    ld b, $40

jr_009_4cc0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_009_4cc0

    ld a, c
    ldh [$bc], a
    call Call_000_0389
    inc c
    ld a, c
    cp $03
    jr c, jr_009_4cbb

    ld hl, $682a

jr_009_4cd5:
    xor a
    ldh [$bc], a
    ld de, $c494
    ld b, $40

jr_009_4cdd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_009_4cdd

    ld a, c
    ldh [$bc], a
    call Call_000_0389
    inc c
    ld a, c
    cp $0f
    jr c, jr_009_4cd5

    call $4c40
    ret


Call_009_4cf3:
    push de
    ld a, [$d3d0]
    and a
    jr z, jr_009_4cff

    ld de, $7052
    jr jr_009_4d10

jr_009_4cff:
    ld a, [$c200]

jr_009_4d02:
    cp $0a
    jr c, jr_009_4d0a

    sub $0a
    jr jr_009_4d02

jr_009_4d0a:
    ld de, $703e
    call Call_000_07f4

jr_009_4d10:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    dec de
    ld [hl+], a
    add $08
    ld b, a
    ld [hl], c
    inc hl
    ld [hl], $01
    inc hl
    ld a, [de]
    ld [hl+], a
    ld [hl], b
    inc hl
    inc c
    inc c
    ld [hl], c
    inc hl
    ld [hl], $01
    pop de
    ld a, $a3
    ld [de], a
    ret


Call_009_4d2d:
    ld a, [$d537]
    swap a
    rra
    ld hl, $c16c
    call Call_000_07e6
    ld de, $c164
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $0a
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $0c
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld a, [$d52d]
    and $83
    ld b, a
    ld a, [$d537]
    ld hl, $d531
    call Call_000_07e6
    ld [hl], b
    ret


    ld a, [$d535]
    and a
    jr z, jr_009_4dbb

    dec a
    ld [$d535], a
    jr nz, jr_009_4dbb

    ld hl, $d536
    dec [hl]
    jr nz, jr_009_4d89

    ld a, [$d52d]
    res 6, a
    ld [$d52d], a
    bit 7, a
    jr nz, jr_009_4dbb

    call $4c40
    jr jr_009_4dbb

jr_009_4d89:
    ld a, [$d52d]
    bit 7, a
    jr z, jr_009_4d9b

    ld a, $02
    sub [hl]
    ld [$d537], a
    call Call_009_4d2d
    jr jr_009_4db6

jr_009_4d9b:
    ld a, $02
    sub [hl]
    ld hl, $4b8c
    ld c, [hl]
    ld b, a
    swap a
    rra
    ld hl, $c16c
    call Call_000_07e6
    ld a, b
    ld de, $d531
    call Call_000_07ed
    call Call_009_4cf3

jr_009_4db6:
    ld a, $40
    ld [$d535], a

jr_009_4dbb:
    call Call_009_54d7
    ld a, [$d52d]
    bit 7, a
    ret z

    bit 6, a
    ret nz

    bit 3, a
    jp nz, Jump_009_4fb1

    bit 2, a
    jp nz, Jump_009_64c1

    bit 4, a
    jr nz, jr_009_4e1b

    bit 5, a
    jr z, jr_009_4e0d

    ld a, [$d3d3]
    dec a
    ld [$d3d3], a
    and a
    jr z, jr_009_4e00

    and $01
    ret nz

    ld a, [$d3d3]
    bit 1, a
    jr z, jr_009_4df7

    ld a, [$d3d2]
    ld [$c164], a
    ld [$c168], a
    ret


jr_009_4df7:
    ld a, $a0
    ld [$c164], a
    ld [$c168], a
    ret


jr_009_4e00:
    ld a, $96
    ld [$d5a9], a
    ld a, [$d52d]
    res 5, a
    ld [$d52d], a

jr_009_4e0d:
    call Call_009_6406
    ret c

    ld a, [$d5a9]
    and a
    jr z, jr_009_4e1b

    dec a
    ld [$d5a9], a

jr_009_4e1b:
    ld a, [$d3d0]
    and a
    jr z, jr_009_4e23

    ld a, $80

jr_009_4e23:
    ld [$d53b], a
    xor a
    ld [$d540], a
    ld hl, $c164
    ld a, [hl+]
    and $0f
    jp nz, Jump_009_4ef3

    ld a, [hl-]
    and $0f
    jp nz, Jump_009_4ef3

    ld a, [$d5a9]
    and a
    jr z, jr_009_4e50

    cp $46
    jr nc, jr_009_4e61

    ld a, [$c100]
    sub [hl]
    jr nc, jr_009_4e4c

    xor $ff
    inc a

jr_009_4e4c:
    cp $10
    jr nc, jr_009_4e61

jr_009_4e50:
    ld a, [$c164]
    ld [$d5aa], a
    ld a, $30
    ld [$d5a9], a
    ld hl, $d52d
    set 3, [hl]
    ret


jr_009_4e61:
    ld a, [$d52d]
    and $03
    ld [$d53c], a
    ld a, [$d5a1]
    ld [$d5a8], a
    ld a, $03
    ld [$d5c6], a
    call Call_009_57a7
    jr c, jr_009_4e85

    ld a, [$d5a8]
    ld [$d5a1], a
    ld hl, $d52d
    set 6, [hl]
    ret


jr_009_4e85:
    ld b, a
    ld a, [$d5b5]
    and a
    jr z, jr_009_4ebb

    dec a
    ld c, a
    srl a
    srl a
    ld hl, $d5c2
    call Call_000_07e6
    ld a, c
    and $03
    ld e, $03

jr_009_4e9d:
    and a
    jr z, jr_009_4ea7

    sla e
    sla e
    dec a
    jr jr_009_4e9d

jr_009_4ea7:
    ld a, [hl]
    and e
    ld e, a
    ld a, c
    and $03

jr_009_4ead:
    and a
    jr z, jr_009_4eb7

    srl e
    srl e
    dec a
    jr jr_009_4ead

jr_009_4eb7:
    ld a, e
    cp b
    jr z, jr_009_4ee0

jr_009_4ebb:
    ld a, [$d5b5]
    push af
    inc a
    and $0f
    ld [hl], a
    pop af
    ld c, a
    srl a
    srl a
    ld hl, $d5c2
    call Call_000_07e6
    ld a, c
    and $03
    ld e, b

jr_009_4ed3:
    and a
    jr z, jr_009_4edd

    sla e
    sla e
    dec a
    jr jr_009_4ed3

jr_009_4edd:
    ld a, [hl]
    or e
    ld [hl], a

jr_009_4ee0:
    ld a, [$d5a8]
    ld [$d5a1], a
    ld a, [$d52d]
    and $fc
    or b
    ld [$d52d], a
    ld a, b
    ld [$d53c], a

Jump_009_4ef3:
    ld a, $01
    ld [$d53f], a
    ld de, $d52e
    ld hl, $d539
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $c164
    ld de, $4b84
    ld a, [$d3d0]
    and a
    jp z, Jump_009_4f92

    ld de, $70f9
    ld a, [$d52d]
    and $03
    call Call_009_4fa4
    ld a, [$c164]
    and $07
    ret nz

    ld a, [$c165]
    and $07
    ret nz

    ld a, [$c164]
    srl a
    srl a
    srl a
    call Call_009_4b52
    ld a, [$c165]
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, $13
    call Call_000_07e6
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, $c448
    ld a, $04
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $9800
    ld a, [$c164]
    add $10
    srl a
    srl a
    srl a
    ld b, a
    and $07
    swap a
    sla a
    ld e, a
    ld a, b
    srl a
    srl a
    srl a
    ld d, a
    add hl, de
    ld d, h
    ld e, l
    ld a, [$c165]
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c448
    xor a
    call Call_000_08a4
    ret


Jump_009_4f92:
    ld a, [$d52d]
    and $03
    push hl
    call Call_000_0775
    ld c, l
    ld h, d
    or h
    ld h, d
    add hl, hl
    ld h, e
    sbc e
    ld h, e
    ret


Call_009_4fa4:
    push hl
    call Call_000_0775
    xor l
    ld b, l
    call z, Call_000_0647
    ld c, d
    or c
    ld c, d
    ret


Jump_009_4fb1:
    call Call_009_6406
    jr nc, jr_009_4fc9

    ld a, [$d5a9]
    cp $10
    jp c, Jump_009_52f3

    ld a, $96
    ld [$d5a9], a
    ld hl, $d52d
    res 3, [hl]
    ret


jr_009_4fc9:
    ld a, [$d5a9]
    cp $10
    jp z, Jump_009_5124

    jp c, Jump_009_52e6

    ld a, [$d5a9]
    dec a
    ld [$d5a9], a
    ld a, [$d3d0]
    and a
    jr nz, jr_009_4ffb

    ld a, [$d5a9]
    bit 1, a
    jr z, jr_009_4ff1

    ld a, $a0
    ld [$c164], a
    ld [$c168], a
    ret


jr_009_4ff1:
    ld a, [$d5aa]
    ld [$c164], a
    ld [$c168], a
    ret


jr_009_4ffb:
    ld a, [$d5a9]
    cp $2f
    jp nz, Jump_009_50bf

    ld a, [$c100]
    ld b, a
    ld a, [$c164]
    sub b
    jr nc, jr_009_5010

    xor $ff
    inc a

jr_009_5010:
    ld c, a
    ld a, [$c101]
    ld b, a
    ld a, [$c165]
    sub b
    jr nc, jr_009_501e

    xor $ff
    inc a

jr_009_501e:
    cp c
    jr nc, jr_009_5070

    ld a, [$c164]
    cp $19
    jr c, jr_009_5053

    cp $88
    jr nc, jr_009_5036

    ld a, [$c100]
    ld b, a
    ld a, [$c164]
    sub b
    jr c, jr_009_5053

jr_009_5036:
    ld a, [$c167]
    res 5, a
    res 6, a
    ld [$c167], a
    ld [$c16b], a
    ld a, $da
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ld a, $04
    ld [$d5aa], a
    ret


jr_009_5053:
    ld a, [$c167]
    res 5, a
    set 6, a
    ld [$c167], a
    ld [$c16b], a
    ld a, $da
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ld a, $08
    ld [$d5aa], a
    ret


jr_009_5070:
    ld a, [$c165]
    cp $09
    jr c, jr_009_50a2

    cp $98
    jr nc, jr_009_5085

    ld a, [$c101]
    ld b, a
    ld a, [$c165]
    sub b
    jr c, jr_009_50a2

jr_009_5085:
    ld a, [$c167]
    set 5, a
    res 6, a
    ld [$c167], a
    ld [$c16b], a
    ld a, $b6
    ld [$c166], a
    dec a
    dec a
    ld [$c16a], a
    ld a, $02
    ld [$d5aa], a
    ret


jr_009_50a2:
    ld a, [$c167]
    res 5, a
    res 6, a
    ld [$c167], a
    ld [$c16b], a
    ld a, $b4
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ld a, $01
    ld [$d5aa], a
    ret


Jump_009_50bf:
    cp $27
    jr nz, jr_009_50f2

    ld a, [$d5aa]
    and $0c
    jr z, jr_009_50d5

    ld a, $de
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ret


jr_009_50d5:
    ld a, [$d5aa]
    cp $01
    jr z, jr_009_50e7

    ld a, $ba
    ld [$c166], a
    dec a
    dec a
    ld [$c16a], a
    ret


jr_009_50e7:
    ld a, $b8
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ret


jr_009_50f2:
    cp $20
    ret nz

    ld a, [$d5aa]
    and $0c
    jr z, jr_009_5107

    ld a, $e2
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ret


jr_009_5107:
    ld a, [$d5aa]
    cp $01
    jr z, jr_009_5119

    ld a, $cc
    ld [$c166], a
    dec a
    dec a
    ld [$c16a], a
    ret


jr_009_5119:
    ld a, $ca
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ret


Jump_009_5124:
    ld a, [$c164]
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    ld [$c178], a
    ld a, $bc
    ld [$c16e], a
    ld a, $be
    ld [$c172], a
    ld a, $be
    ld [$c176], a
    ld a, $c0
    ld [$c17a], a
    xor a
    ld [$d5c9], a
    ld a, [$d3d0]
    and a
    jp z, Jump_009_523e

    ld a, [$c200]

jr_009_5155:
    cp $14
    jr c, jr_009_515d

    sub $14
    jr jr_009_5155

jr_009_515d:
    ld b, $00
    sub $04

jr_009_5161:
    cp $05
    jr c, jr_009_516a

    sub $05
    inc b
    jr jr_009_5161

jr_009_516a:
    ld a, b
    cp $03
    jr c, jr_009_517d

    ld a, [$d5ca]
    ld b, a
    inc a
    cp $03
    jr c, jr_009_5179

    xor a

jr_009_5179:
    ld [$d5ca], a
    ld a, b

jr_009_517d:
    ld [$d5c9], a
    cp $02
    jp z, Jump_009_531b

    cp $01
    jp z, Jump_009_53b7

    ld a, [$d5aa]
    and $0c
    jp z, Jump_009_5235

    ld a, $e2
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ld a, [$d5aa]
    cp $04
    jr nz, jr_009_51ec

    ld a, [$c164]
    sub $1c
    ld [$c16c], a
    ld [$c170], a
    add $10
    ld [$c174], a
    ld [$c178], a
    ld a, [$c165]
    ld [$c16d], a
    ld [$c175], a
    add $08
    ld [$c171], a
    ld [$c179], a
    ld a, $e6
    ld [$c16e], a
    ld a, $e8
    ld [$c172], a
    ld a, $ea
    ld [$c176], a
    ld a, $ec
    ld [$c17a], a
    ld a, $02
    ld [$c16f], a
    ld [$c173], a
    ld [$c177], a
    ld [$c17b], a
    jp Jump_009_52e6


jr_009_51ec:
    ld a, [$c164]
    add $0c
    ld [$c174], a
    ld [$c178], a
    add $10
    ld [$c16c], a
    ld [$c170], a
    ld a, [$c165]
    ld [$c16d], a
    ld [$c175], a
    add $08
    ld [$c171], a
    ld [$c179], a
    ld a, $e6
    ld [$c16e], a
    ld a, $e8
    ld [$c172], a
    ld a, $ea
    ld [$c176], a
    ld a, $ec
    ld [$c17a], a
    ld a, $42
    ld [$c16f], a
    ld [$c173], a
    ld [$c177], a
    ld [$c17b], a
    jp Jump_009_52e6


Jump_009_5235:
    ld a, [$d5aa]
    cp $01
    jr nz, jr_009_5253

    jr jr_009_52a3

Jump_009_523e:
    ld a, [$c165]
    cp $09
    jr c, jr_009_52a3

    cp $98
    jr nc, jr_009_5253

    ld a, [$c101]
    ld b, a
    ld a, [$c165]
    sub b
    jr c, jr_009_52a3

jr_009_5253:
    ld a, [$c165]
    sub $08
    ld [$c16d], a
    sub $08
    ld [$c171], a
    sub $08
    ld [$c175], a
    sub $08
    ld [$c179], a
    ld a, $22
    ld [$c16f], a
    ld [$c173], a
    ld [$c177], a
    ld [$c17b], a
    ld b, $ce
    ld a, [$d3d0]
    and a
    jr z, jr_009_528d

    ld a, [$c167]
    res 6, a
    ld [$c167], a
    ld [$c16b], a
    ld b, $cc

jr_009_528d:
    ld a, b
    ld [$c166], a
    dec a
    dec a
    ld [$c16a], a
    ld a, [$c167]
    or $20
    ld [$c167], a
    ld [$c16b], a
    jr jr_009_52e6

jr_009_52a3:
    ld a, [$c165]
    add $10
    ld [$c16d], a
    add $08
    ld [$c171], a
    add $08
    ld [$c175], a
    add $08
    ld [$c179], a
    ld a, $02
    ld [$c16f], a
    ld [$c173], a
    ld [$c177], a
    ld [$c17b], a
    ld b, $cc
    ld a, [$d3d0]
    and a
    jr z, jr_009_52dd

    ld a, [$c167]
    res 6, a
    ld [$c167], a
    ld [$c16b], a
    ld b, $ca

jr_009_52dd:
    ld a, b
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a

Jump_009_52e6:
jr_009_52e6:
    ld a, [$d5a9]
    dec a
    ld [$d5a9], a
    jr z, jr_009_52f3

    call Call_009_5441
    ret


Jump_009_52f3:
jr_009_52f3:
    ld a, $96
    ld [$d5a9], a
    ld hl, $d52d
    res 3, [hl]
    ld a, [$d5aa]
    ld c, a
    ld a, [$d3d0]
    and a
    jp nz, Jump_009_5313

    ld c, $01
    ld a, [$c16f]
    bit 5, a
    jr z, jr_009_5313

    ld c, $02

Jump_009_5313:
jr_009_5313:
    ld a, c
    swap a
    inc a
    ld [$d5ae], a
    ret


Jump_009_531b:
    ld a, $f0
    ld [$c178], a
    ld [$c179], a
    ld a, $f6
    ld [$c16e], a
    ld [$c172], a
    ld [$c176], a
    ld a, $02
    ld [$c16f], a
    ld [$c173], a
    ld [$c177], a
    ld a, [$d5aa]
    and $0c
    jp z, Jump_009_5382

    ld a, [$c165]
    add $04
    ld [$c16d], a
    ld [$c171], a
    ld [$c175], a
    ld a, $e2
    ld [$c166], a
    dec a
    dec a
    ld [$c16a], a
    ld a, [$d5aa]
    cp $04
    jr nz, jr_009_5371

    ld a, [$c164]
    sub $0c
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    jp Jump_009_52e6


jr_009_5371:
    ld a, [$c164]
    add $0c
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    jp Jump_009_52e6


Jump_009_5382:
    ld a, [$c164]
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    ld a, [$d5aa]
    cp $01
    jr z, jr_009_53a6

    ld a, [$c165]
    sub $08
    ld [$c16d], a
    ld [$c171], a
    ld [$c175], a
    jp Jump_009_52e6


jr_009_53a6:
    ld a, [$c165]
    add $10
    ld [$c16d], a
    ld [$c171], a
    ld [$c175], a
    jp Jump_009_52e6


Jump_009_53b7:
    ld a, $f0
    ld [$c174], a
    ld [$c175], a
    ld [$c178], a
    ld [$c179], a
    ld a, $fa
    ld [$c16e], a
    ld [$c172], a
    ld a, $02
    ld [$c16f], a
    ld [$c173], a
    ld a, [$d5aa]
    and $0c
    jp z, Jump_009_5415

    ld a, [$c165]
    add $04
    ld [$c16d], a
    ld [$c171], a
    ld a, $e2
    ld [$c166], a
    dec a
    dec a
    ld [$c16a], a
    ld a, [$d5aa]
    cp $04
    jr nz, jr_009_5407

    ld a, [$c164]
    sub $0c
    ld [$c16c], a
    ld [$c170], a
    jp Jump_009_52e6


jr_009_5407:
    ld a, [$c164]
    add $0c
    ld [$c16c], a
    ld [$c170], a
    jp Jump_009_52e6


Jump_009_5415:
    ld a, [$c164]
    ld [$c16c], a
    ld [$c170], a
    ld a, [$d5aa]
    cp $01
    jr z, jr_009_5433

    ld a, [$c165]
    sub $08
    ld [$c16d], a
    ld [$c171], a
    jp Jump_009_52e6


jr_009_5433:
    ld a, [$c165]
    add $10
    ld [$c16d], a
    ld [$c171], a
    jp Jump_009_52e6


Call_009_5441:
    ld b, a
    and $07
    ret nz

    ld a, [$d5c9]
    and a
    jr z, jr_009_5451

    cp $01
    jr z, jr_009_54c8

    jr jr_009_54b6

jr_009_5451:
    ld a, [$c16e]
    cp $e6
    jr c, jr_009_5487

    ld a, b
    and $08
    jr z, jr_009_5472

    ld a, $e6
    ld [$c16e], a
    ld a, $e8
    ld [$c172], a
    ld a, $ea
    ld [$c176], a
    ld a, $ec
    ld [$c17a], a
    ret


jr_009_5472:
    ld a, $ee
    ld [$c16e], a
    ld a, $f0
    ld [$c172], a
    ld a, $f2
    ld [$c176], a
    ld a, $f4
    ld [$c17a], a
    ret


jr_009_5487:
    ld a, b
    and $08
    jr z, jr_009_54a1

    ld a, $bc
    ld [$c16e], a
    ld a, $be
    ld [$c172], a
    ld a, $be
    ld [$c176], a
    ld a, $c0
    ld [$c17a], a
    ret


jr_009_54a1:
    ld a, $c4
    ld [$c16e], a
    ld a, $c6
    ld [$c172], a
    ld a, $c6
    ld [$c176], a
    ld a, $c8
    ld [$c17a], a
    ret


jr_009_54b6:
    ld a, $f6
    bit 3, b
    jr z, jr_009_54be

    ld a, $f8

jr_009_54be:
    ld [$c16e], a
    ld [$c172], a
    ld [$c176], a
    ret


jr_009_54c8:
    ld a, $fa
    bit 3, b
    jr z, jr_009_54d0

    ld a, $fc

jr_009_54d0:
    ld [$c16e], a
    ld [$c172], a
    ret


Call_009_54d7:
    ld a, [$d5ae]
    and a
    ret z

    and $0f
    dec a
    and $0f
    ld c, a
    call Call_009_5441
    ld a, [$d5ae]
    and $f0
    or c
    ld [$d5ae], a
    ld a, [$d5c9]
    and a
    jr z, jr_009_54fc

    cp $01
    jp z, Jump_009_56a3

    jp $55db


jr_009_54fc:
    ld a, [$d5ae]
    and $f0
    swap a
    cp $01
    jp z, Jump_009_558a

    cp $02
    jr z, jr_009_5561

    cp $04
    jr z, jr_009_5538

    ld a, [$c16c]
    inc a
    inc a
    ld [$c16c], a
    ld a, [$c170]
    inc a
    inc a
    ld [$c170], a
    ld a, [$c174]
    inc a
    inc a
    ld [$c174], a
    ld a, [$c178]
    inc a
    inc a
    ld [$c178], a
    ld a, [$c174]
    cp $90
    ret c

    jr jr_009_55b0

jr_009_5538:
    ld a, [$c16c]
    dec a
    dec a
    ld [$c16c], a
    ld a, [$c170]
    dec a
    dec a
    ld [$c170], a
    ld a, [$c174]
    dec a
    dec a
    ld [$c174], a
    ld a, [$c178]
    dec a
    dec a
    ld [$c178], a
    ld a, [$c174]
    add $10
    and a
    ret nz

    jr jr_009_55b0

jr_009_5561:
    ld a, [$c16d]
    dec a
    dec a
    ld [$c16d], a
    ld a, [$c171]
    dec a
    dec a
    ld [$c171], a
    ld a, [$c175]
    dec a
    dec a
    ld [$c175], a
    ld a, [$c179]
    dec a
    dec a
    ld [$c179], a
    ld a, [$c16d]
    add $08
    and a
    ret nz

    jr jr_009_55b0

Jump_009_558a:
    ld a, [$c16d]
    inc a
    inc a
    ld [$c16d], a
    ld a, [$c171]
    inc a
    inc a
    ld [$c171], a
    ld a, [$c175]
    inc a
    inc a
    ld [$c175], a
    ld a, [$c179]
    inc a
    inc a
    ld [$c179], a
    ld a, [$c16d]
    cp $a0
    ret c

jr_009_55b0:
    ld a, $a0
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    ld [$c178], a
    xor a
    ld [$d5ae], a
    ret


    rst $38
    ld bc, $0200
    ld bc, $0101
    ld bc, $0002
    ld bc, $01ff
    rst $38
    nop
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $00
    rst $38
    ld bc, $000e
    ld a, [$d5ae]
    and $f0
    swap a
    cp $01
    jp z, Jump_009_55f6

    cp $02
    jr z, jr_009_55fb

    cp $04
    jr z, jr_009_5600

    ld hl, $55c9
    jr jr_009_5603

Jump_009_55f6:
    ld hl, $55c3
    jr jr_009_5603

jr_009_55fb:
    ld hl, $55cf
    jr jr_009_5603

jr_009_5600:
    ld hl, $55d5

jr_009_5603:
    ld b, [hl]
    inc hl
    ld a, [$c16c]
    cp $90
    jr c, jr_009_5613

    cp $f1
    jr nc, jr_009_5613

    inc c
    jr jr_009_5630

jr_009_5613:
    ld a, [$c16d]
    cp $a0
    jr c, jr_009_5621

    cp $f9
    jr nc, jr_009_5621

    inc c
    jr jr_009_5630

jr_009_5621:
    ld a, [$c16c]
    add b
    ld [$c16c], a
    ld b, [hl]
    ld a, [$c16d]
    add b
    ld [$c16d], a

jr_009_5630:
    inc hl
    ld b, [hl]
    inc hl
    ld a, [$c170]
    cp $90
    jr c, jr_009_5641

    cp $f1
    jr nc, jr_009_5641

    inc c
    jr jr_009_565e

jr_009_5641:
    ld a, [$c171]
    cp $a0
    jr c, jr_009_564f

    cp $f9
    jr nc, jr_009_564f

    inc c
    jr jr_009_565e

jr_009_564f:
    ld a, [$c170]
    add b
    ld [$c170], a
    ld b, [hl]
    ld a, [$c171]
    add b
    ld [$c171], a

jr_009_565e:
    inc hl
    ld b, [hl]
    inc hl
    ld a, [$c174]
    cp $90
    jr c, jr_009_566f

    cp $f1
    jr nc, jr_009_566f

    inc c
    jr jr_009_568c

jr_009_566f:
    ld a, [$c175]
    cp $a0
    jr c, jr_009_567d

    cp $f9
    jr nc, jr_009_567d

    inc c
    jr jr_009_568c

jr_009_567d:
    ld a, [$c174]
    add b
    ld [$c174], a
    ld b, [hl]
    ld a, [$c175]
    add b
    ld [$c175], a

jr_009_568c:
    ld a, c
    cp $03
    ret c

    ld a, $a0
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    ld [$c178], a
    xor a
    ld [$d5ae], a
    ret


Jump_009_56a3:
    ld a, [$d5ae]
    and $f0
    swap a
    cp $01
    jp z, Jump_009_56bd

    cp $02
    jr z, jr_009_56c3

    cp $04
    jr z, jr_009_56c9

    ld b, $04
    ld c, $00
    jr jr_009_56cd

Jump_009_56bd:
    ld b, $00
    ld c, $04
    jr jr_009_56cd

jr_009_56c3:
    ld b, $00
    ld c, $fc
    jr jr_009_56cd

jr_009_56c9:
    ld b, $fc
    ld c, $00

jr_009_56cd:
    ld a, b
    and a
    jr nz, jr_009_56e3

    ld a, [$c100]
    ld d, a
    ld a, [$c16c]
    sub d
    jr z, jr_009_56e3

    jr c, jr_009_56e0

    dec b
    jr jr_009_56e3

jr_009_56e0:
    inc b
    jr jr_009_56e3

jr_009_56e3:
    ld a, c
    and a
    jr nz, jr_009_56f7

    ld a, [$c101]
    ld d, a
    ld a, [$c16d]
    sub d
    jr z, jr_009_56f7

    jr c, jr_009_56f6

    dec c
    jr jr_009_56f7

jr_009_56f6:
    inc c

jr_009_56f7:
    ld a, [$c16c]
    cp $90
    jr c, jr_009_5702

    cp $f1
    jr c, jr_009_571b

jr_009_5702:
    ld a, [$c16d]
    cp $a0
    jr c, jr_009_570d

    cp $f9
    jr c, jr_009_571b

jr_009_570d:
    ld a, [$c16c]
    add b
    ld [$c16c], a
    ld a, [$c16d]
    add c
    ld [$c16d], a

jr_009_571b:
    ld a, [$d5ae]
    and $f0
    swap a
    cp $01
    jp z, Jump_009_5735

    cp $02
    jr z, jr_009_573b

    cp $04
    jr z, jr_009_5741

    ld b, $02
    ld c, $00
    jr jr_009_5745

Jump_009_5735:
    ld b, $00
    ld c, $02
    jr jr_009_5745

jr_009_573b:
    ld b, $00
    ld c, $fe
    jr jr_009_5745

jr_009_5741:
    ld b, $fe
    ld c, $00

jr_009_5745:
    ld a, b
    and a
    jr nz, jr_009_575b

    ld a, [$c100]
    ld d, a
    ld a, [$c170]
    sub d
    jr z, jr_009_575b

    jr c, jr_009_5758

    dec b
    jr jr_009_575b

jr_009_5758:
    inc b
    jr jr_009_575b

jr_009_575b:
    ld a, c
    and a
    jr nz, jr_009_576f

    ld a, [$c101]
    ld d, a
    ld a, [$c171]
    sub d
    jr z, jr_009_576f

    jr c, jr_009_576e

    dec c
    jr jr_009_576f

jr_009_576e:
    inc c

jr_009_576f:
    ld a, [$c170]
    cp $90
    jr c, jr_009_577a

    cp $f1
    jr c, jr_009_5794

jr_009_577a:
    ld a, [$c171]
    cp $a0
    jr c, jr_009_5785

    cp $f9
    jr c, jr_009_5794

jr_009_5785:
    ld a, [$c170]
    add b
    ld [$c170], a
    ld a, [$c171]
    add c
    ld [$c171], a
    ret


jr_009_5794:
    ld a, $a0
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    ld [$c178], a
    xor a
    ld [$d5ae], a
    ret


Call_009_57a7:
    push hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    call Call_009_6052
    ld a, [bc]
    inc bc
    sub [hl]
    ld e, a
    inc hl
    ld a, [bc]
    sub [hl]
    ld d, a
    ld b, $01
    ld c, $08
    and a
    jr z, jr_009_57ce

    ld b, $01
    bit 7, a
    jr z, jr_009_57ce

    xor $ff
    inc a
    ld d, a
    ld b, $02

jr_009_57ce:
    ld a, e
    and a
    jr z, jr_009_57de

    ld c, $08
    bit 7, a
    jr z, jr_009_57de

    xor $ff
    inc a
    ld e, a
    ld c, $04

jr_009_57de:
    ld a, e
    cp d
    ld a, d
    cp $11
    jr nc, jr_009_57ea

    ld a, e
    cp $11
    jr nc, jr_009_57ea

jr_009_57ea:
    ld a, d
    cp e
    jr nc, jr_009_5802

    ld a, c
    ld [$d515], a
    xor $0c
    ld [$d517], a
    ld a, b
    ld [$d516], a
    xor $03
    ld [$d518], a
    jr jr_009_5814

jr_009_5802:
    ld a, c
    ld [$d516], a
    xor $0c
    ld [$d518], a
    ld a, b
    ld [$d515], a
    xor $03
    ld [$d517], a

jr_009_5814:
    pop hl
    ld a, [hl+]
    srl a
    srl a
    srl a
    call Call_009_4b52
    ld a, [hl]
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    ld a, [$d53c]
    xor $01
    ld b, $01

jr_009_5834:
    and a
    jr z, jr_009_583c

    dec a
    sla b
    jr jr_009_5834

jr_009_583c:
    call Call_009_593b
    ld a, [$c202]
    and a
    jr nz, jr_009_5861

    ld a, [$d53b]
    and a
    jr nz, jr_009_5861

    push de
    push bc
    ld a, [$d5a8]
    ld b, a
    ld c, d
    call Call_009_5cee
    pop bc
    ld hl, $d5a8
    ld [hl], d
    pop de
    and a
    jr z, jr_009_5861

    dec a
    jr jr_009_5879

jr_009_5861:
    ld a, [$d53b]
    and a
    jp z, Jump_009_58aa

    ld hl, $d515

jr_009_586b:
    ld a, [hl+]
    and d
    jr z, jr_009_586b

    dec hl
    ld b, [hl]
    xor a

jr_009_5872:
    srl b
    jr c, jr_009_5879

    inc a
    jr jr_009_5872

jr_009_5879:
    push af
    cp $01
    jr nz, jr_009_5887

    ld a, [$d5c7]
    and a
    jr z, jr_009_58a7

    ld b, a
    jr jr_009_5892

jr_009_5887:
    cp $00
    jr nz, jr_009_58a7

    ld a, [$d5c8]
    and a
    jr z, jr_009_58a7

    ld b, a

jr_009_5892:
    ld a, [$c264]
    ld hl, $d512
    call Call_000_07e6
    ld [hl], b
    ld a, [$c264]
    ld hl, $d503
    call Call_000_07e6
    set 4, [hl]

jr_009_58a7:
    pop af
    scf
    ret


Jump_009_58aa:
    ld a, e
    and a
    jr z, jr_009_58c5

    cp $03
    jr nc, jr_009_58c6

    cp $01
    jr z, jr_009_58bd

    ld a, d
    and b
    jr z, jr_009_5929

    ld a, d
    xor b
    ld d, a

Jump_009_58bd:
jr_009_58bd:
    xor a

jr_009_58be:
    srl d
    jr c, jr_009_5879

    inc a
    jr jr_009_58be

jr_009_58c5:
    ret


jr_009_58c6:
    ld a, d
    and b
    jr z, jr_009_58cd

    ld a, d
    xor b
    ld d, a

jr_009_58cd:
    ld a, [$d5c6]
    add a
    add a
    ld hl, $d5b6
    call Call_000_07e6
    ld c, $04

jr_009_58da:
    ld a, [hl+]

jr_009_58db:
    cp [hl]
    jr nz, jr_009_5911

    and a
    jr z, jr_009_5911

    push hl
    ld b, a
    ld a, [$d5c6]
    ld hl, $d5b2
    call Call_000_07e6
    ld a, [hl]
    pop hl
    and $03
    ld e, $03

jr_009_58f2:
    and a
    jr z, jr_009_58fc

    sla e
    sla e
    dec a
    jr jr_009_58f2

jr_009_58fc:
    ld a, b
    and e
    ld b, $01

jr_009_5900:
    and a
    jr z, jr_009_5908

    dec a
    sla b
    jr jr_009_5900

jr_009_5908:
    ld a, d
    and b
    jr z, jr_009_5929

    ld a, d
    xor b
    ld d, a
    jr jr_009_5929

jr_009_5911:
    dec c
    jr z, jr_009_5929

    ld a, c
    cp $01
    jr nz, jr_009_58da

    ld a, [$d5c6]
    add a
    add a
    ld hl, $d5b6
    call Call_000_07e6
    ld a, [hl+]
    inc hl
    inc hl
    jr jr_009_58db

jr_009_5929:
    ld e, $05
    ld bc, $d515

jr_009_592e:
    dec e
    ret z

    ld a, [bc]
    and d
    jr nz, jr_009_5937

    inc bc
    jr jr_009_592e

jr_009_5937:
    ld d, a
    jp Jump_009_58bd


Call_009_593b:
    xor a
    ld [$d5c7], a
    ld [$d5c8], a
    ld d, a
    ld e, a
    push hl
    push bc
    ld a, [$d51c]
    ld b, a
    ld a, [$d51d]
    ld c, a
    ld a, [bc]
    pop bc
    and a
    jp z, Jump_009_5a01

    push bc
    ld a, [$d51c]
    ld b, a
    ld a, [$d51d]
    ld c, a
    ld a, [bc]
    sub $10
    ld [$d53e], a
    inc bc
    ld a, [bc]
    ld [$d53d], a
    push de
    ld c, $05
    ld de, $c17c

jr_009_596e:
    ld a, [de]
    inc de
    ld b, a
    ld a, [$d53e]
    sub b
    bit 7, a
    jr z, jr_009_597c

    xor $ff
    inc a

jr_009_597c:
    cp $10
    jr nc, jr_009_59a5

    ld a, [de]
    ld b, a
    ld a, [$d53d]
    sub b
    bit 7, a
    jr z, jr_009_598d

    xor $ff
    inc a

jr_009_598d:
    cp $10
    jr nc, jr_009_59a5

    push hl
    ld a, $05
    sub c
    ld hl, $c255
    call Call_000_07e6
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_009_59a5

    pop de
    pop bc
    jr jr_009_5a01

jr_009_59a5:
    ld a, $07
    call Call_000_07ed
    dec c
    jr nz, jr_009_596e

    pop de
    pop bc
    ld a, [$d53b]
    and a
    jp nz, Jump_009_59fe

    ld a, [hl+]
    and a
    jr z, jr_009_59c6

    cp $06
    jr z, jr_009_59c6

    cp $0b
    jr z, jr_009_59c6

    cp $0d
    jr nz, jr_009_5a01

jr_009_59c6:
    ld a, [hl-]
    and a
    jr z, jr_009_59d6

    cp $07
    jr z, jr_009_59d6

    cp $0a
    jr z, jr_009_59d6

    cp $0c
    jr nz, jr_009_5a01

jr_009_59d6:
    ld a, l
    sub $14
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, [hl+]
    and a
    jr z, jr_009_59ee

    cp $06
    jr z, jr_009_59ee

    cp $0b
    jr z, jr_009_59ee

    cp $0d
    jr nz, jr_009_5a01

jr_009_59ee:
    ld a, [hl-]
    and a
    jr z, jr_009_59fe

    cp $07
    jr z, jr_009_59fe

    cp $0a
    jr z, jr_009_59fe

    cp $0c
    jr nz, jr_009_5a01

Jump_009_59fe:
jr_009_59fe:
    ld d, $04
    inc e

Jump_009_5a01:
jr_009_5a01:
    pop hl
    push hl
    push bc
    ld a, [$d51c]
    ld b, a
    ld a, [$d51d]
    ld c, a
    inc bc
    ld a, [bc]
    pop bc
    and a
    jp z, Jump_009_5af4

    xor a
    ld [$d540], a
    push bc
    ld a, [$d51c]
    ld b, a
    ld a, [$d51d]
    ld c, a
    ld a, [bc]
    ld [$d53e], a
    inc bc
    ld a, [bc]
    sub $10
    ld [$d53d], a
    push de
    ld c, $05
    ld de, $c17c

jr_009_5a31:
    ld a, [de]
    inc de
    ld b, a
    ld a, [$d53e]
    sub b
    bit 7, a
    jr z, jr_009_5a3f

    xor $ff
    inc a

jr_009_5a3f:
    cp $10
    jr nc, jr_009_5a8c

    ld a, [de]
    ld b, a
    ld a, [$d53d]
    sub b
    bit 7, a
    jr z, jr_009_5a50

    xor $ff
    inc a

jr_009_5a50:
    cp $10
    jr nc, jr_009_5a8c

    push hl
    ld a, $05
    sub c
    ld hl, $c255
    call Call_000_07e6
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_009_5a8c

    push hl
    ld a, $05
    sub c
    ld hl, $c24b
    call Call_000_07e6
    ld a, [hl]
    pop hl
    and $7f
    jr nz, jr_009_5a8c

    ld a, [$d53d]
    cp $11
    jp nc, Jump_009_5a81

    pop de
    pop bc
    jp Jump_009_5af4


Jump_009_5a81:
    ld a, $05
    sub c
    inc a
    ld [$d540], a
    pop de
    pop bc
    jr jr_009_5a96

jr_009_5a8c:
    ld a, $07
    call Call_000_07ed
    dec c
    jr nz, jr_009_5a31

    pop de
    pop bc

jr_009_5a96:
    ld a, [$d53b]
    and a
    jp nz, Jump_009_5ae2

    ld a, [hl-]
    and a
    jr z, jr_009_5aad

    cp $02
    jr z, jr_009_5aad

    cp $0c
    jr z, jr_009_5aad

    cp $0d
    jr nz, jr_009_5af4

jr_009_5aad:
    ld a, [hl]
    and a
    jr z, jr_009_5abd

    cp $02
    jr z, jr_009_5abd

    cp $0c
    jr z, jr_009_5abd

    cp $0d
    jr nz, jr_009_5af4

jr_009_5abd:
    ld a, $14
    call Call_000_07e6
    ld a, [hl+]
    and a
    jr z, jr_009_5ad2

    cp $03
    jr z, jr_009_5ad2

    cp $0a
    jr z, jr_009_5ad2

    cp $0b
    jr nz, jr_009_5af4

jr_009_5ad2:
    ld a, [hl]
    and a
    jr z, jr_009_5ae2

    cp $03
    jr z, jr_009_5ae2

    cp $0a
    jr z, jr_009_5ae2

    cp $0b
    jr nz, jr_009_5af4

Jump_009_5ae2:
jr_009_5ae2:
    ld a, $02
    or d
    ld d, a
    inc e
    ld a, [$d540]
    and a
    jr z, jr_009_5af4

    ld [$d5c7], a
    xor a
    ld [$d540], a

Jump_009_5af4:
jr_009_5af4:
    pop hl
    push hl
    push bc
    ld a, [$d51c]
    ld b, a
    ld a, [$d51d]
    ld c, a
    ld a, [bc]
    pop bc
    cp $80
    jp nc, Jump_009_5bb7

    push bc
    ld a, [$d51c]
    ld b, a
    ld a, [$d51d]
    ld c, a
    ld a, [bc]
    add $10
    ld [$d53e], a
    inc bc
    ld a, [bc]
    ld [$d53d], a
    push de
    ld c, $05
    ld de, $c17c

jr_009_5b20:
    ld a, [de]
    inc de
    ld b, a
    ld a, [$d53e]
    sub b
    bit 7, a
    jr z, jr_009_5b2e

    xor $ff
    inc a

jr_009_5b2e:
    cp $10
    jr nc, jr_009_5b57

    ld a, [de]
    ld b, a
    ld a, [$d53d]
    sub b
    bit 7, a
    jr z, jr_009_5b3f

    xor $ff
    inc a

jr_009_5b3f:
    cp $10
    jr nc, jr_009_5b57

    push hl
    ld a, $05
    sub c
    ld hl, $c255
    call Call_000_07e6
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_009_5b57

    pop de
    pop bc
    jr jr_009_5bb7

jr_009_5b57:
    ld a, $07
    call Call_000_07ed
    dec c
    jr nz, jr_009_5b20

    pop de
    pop bc
    ld a, [$d53b]
    and a
    jp nz, Jump_009_5bb2

    ld a, $14
    call Call_000_07e6
    ld a, [hl+]
    and a
    jr z, jr_009_5b7d

    cp $06
    jr z, jr_009_5b7d

    cp $0b
    jr z, jr_009_5b7d

    cp $0d
    jr nz, jr_009_5bb7

jr_009_5b7d:
    ld a, [hl-]
    and a
    jr z, jr_009_5b8d

    cp $07
    jr z, jr_009_5b8d

    cp $0a
    jr z, jr_009_5b8d

    cp $0c
    jr nz, jr_009_5bb7

jr_009_5b8d:
    ld a, $14
    call Call_000_07e6
    ld a, [hl+]
    and a
    jr z, jr_009_5ba2

    cp $06
    jr z, jr_009_5ba2

    cp $0b
    jr z, jr_009_5ba2

    cp $0d
    jr nz, jr_009_5bb7

jr_009_5ba2:
    ld a, [hl-]
    and a
    jr z, jr_009_5bb2

    cp $07
    jr z, jr_009_5bb2

    cp $0a
    jr z, jr_009_5bb2

    cp $0c
    jr nz, jr_009_5bb7

Jump_009_5bb2:
jr_009_5bb2:
    ld a, $08
    or d
    ld d, a
    inc e

Jump_009_5bb7:
jr_009_5bb7:
    pop hl
    push hl
    push bc
    ld a, [$d51c]
    ld b, a
    ld a, [$d51d]
    ld c, a
    inc bc
    ld a, [bc]
    pop bc
    cp $90
    jp nc, Jump_009_5cac

    xor a
    ld [$d540], a
    push bc
    ld a, [$d51c]
    ld b, a
    ld a, [$d51d]
    ld c, a
    ld a, [bc]
    ld [$d53e], a
    inc bc
    ld a, [bc]
    add $10
    ld [$d53d], a
    push de
    ld c, $05
    ld de, $c17c

jr_009_5be8:
    ld a, [de]
    inc de
    ld b, a
    ld a, [$d53e]
    sub b
    bit 7, a
    jr z, jr_009_5bf6

    xor $ff
    inc a

jr_009_5bf6:
    cp $10
    jr nc, jr_009_5c43

    ld a, [de]
    ld b, a
    ld a, [$d53d]
    sub b
    bit 7, a
    jr z, jr_009_5c07

    xor $ff
    inc a

jr_009_5c07:
    cp $10
    jr nc, jr_009_5c43

    push hl
    ld a, $05
    sub c
    ld hl, $c255
    call Call_000_07e6
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_009_5c43

    push hl
    ld a, $05
    sub c
    ld hl, $c24b
    call Call_000_07e6
    ld a, [hl]
    pop hl
    and $7f
    jr nz, jr_009_5c43

    ld a, [$d53d]
    cp $90
    jp c, Jump_009_5c38

    pop de
    pop bc
    jp Jump_009_5cac


Jump_009_5c38:
    ld a, $05
    sub c
    inc a
    ld [$d540], a
    pop de
    pop bc
    jr jr_009_5c4d

jr_009_5c43:
    ld a, $07
    call Call_000_07ed
    dec c
    jr nz, jr_009_5be8

    pop de
    pop bc

jr_009_5c4d:
    ld a, [$d53b]
    and a
    jp nz, Jump_009_5c9a

    inc hl
    ld a, [hl+]
    and a
    jr z, jr_009_5c65

    cp $02
    jr z, jr_009_5c65

    cp $0c
    jr z, jr_009_5c65

    cp $0d
    jr nz, jr_009_5cac

jr_009_5c65:
    ld a, [hl-]
    and a
    jr z, jr_009_5c75

    cp $02
    jr z, jr_009_5c75

    cp $0c
    jr z, jr_009_5c75

    cp $0d
    jr nz, jr_009_5cac

jr_009_5c75:
    ld a, $14
    call Call_000_07e6
    ld a, [hl+]
    and a
    jr z, jr_009_5c8a

    cp $03
    jr z, jr_009_5c8a

    cp $0a
    jr z, jr_009_5c8a

    cp $0b
    jr nz, jr_009_5cac

jr_009_5c8a:
    ld a, [hl-]
    and a
    jr z, jr_009_5c9a

    cp $03
    jr z, jr_009_5c9a

    cp $0a
    jr z, jr_009_5c9a

    cp $0b
    jr nz, jr_009_5cac

Jump_009_5c9a:
jr_009_5c9a:
    ld a, $01
    or d
    ld d, a
    inc e
    ld a, [$d540]
    and a
    jr z, jr_009_5cac

    ld [$d5c8], a
    xor a
    ld [$d540], a

Jump_009_5cac:
jr_009_5cac:
    pop hl
    ret


    ld hl, $c100
    ld a, [hl+]
    add $08
    ld c, a
    and $f0
    srl a
    ld b, a
    ld a, c
    swap a
    and $0f
    sla a
    add b
    ld b, a
    ld a, [hl]
    add $08
    swap a
    and $0f
    add b
    ld e, a
    ld a, [$d59c]
    and a
    jr z, jr_009_5cd7

    ld a, [$d59d]
    cp e
    ret z

jr_009_5cd7:
    ld a, e
    ld [$d59d], a
    ld d, $00
    ld hl, $d542
    add hl, de
    ld a, [$d59c]
    inc a
    and a
    jr nz, jr_009_5ce9

    inc a

jr_009_5ce9:
    ld [$d59c], a
    ld [hl], a
    ret


Call_009_5cee:
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    ld a, [hl]
    and $f0
    srl a
    ld e, a
    ld a, [hl+]
    swap a
    and $0f
    sla a
    add e
    ld e, a
    ld a, [hl]
    swap a
    and $0f
    add e
    ld e, a
    ld d, $00
    ld hl, $d542
    add hl, de
    ld a, [$d51c]
    ld d, a
    ld a, [$d51d]
    ld e, a
    push hl
    xor a
    ld [$d5a4], a
    ld a, [$d53c]
    cp $03
    jr z, jr_009_5d42

    ld a, [de]
    cp $10
    jr c, jr_009_5d42

    ld a, $04
    and c
    jr z, jr_009_5d42

    ld a, l
    sub $0a
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, [hl]
    and a
    jr z, jr_009_5d42

    cp b
    jr c, jr_009_5d42

    ld [$d5a4], a

jr_009_5d42:
    pop hl
    push hl
    xor a
    ld [$d5a5], a
    ld a, [$d53c]
    cp $02
    jr z, jr_009_5d68

    ld a, [de]
    cp $80
    jr nc, jr_009_5d68

    ld a, $08
    and c
    jr z, jr_009_5d68

    ld a, $0a
    call Call_000_07e6
    ld a, [hl]
    and a
    jr z, jr_009_5d68

    cp b
    jr c, jr_009_5d68

    ld [$d5a5], a

jr_009_5d68:
    pop hl
    inc de
    xor a
    ld [$d5a6], a
    ld a, [$d53c]
    cp $00
    jr z, jr_009_5d8a

    ld a, [de]
    cp $10
    jr c, jr_009_5d8a

    ld a, $02
    and c
    jr z, jr_009_5d8a

    dec hl
    ld a, [hl]
    and a
    jr z, jr_009_5d8a

    cp b
    jr c, jr_009_5d8a

    ld [$d5a6], a

jr_009_5d8a:
    xor a
    ld [$d5a7], a
    ld a, [$d53c]
    cp $01
    jr z, jr_009_5dab

    ld a, [de]
    cp $90
    jr nc, jr_009_5dab

    ld a, $01
    and c
    jr z, jr_009_5dab

    inc hl
    inc hl
    ld a, [hl]
    and a
    jr z, jr_009_5dab

    cp b
    jr c, jr_009_5dab

    ld [$d5a7], a

jr_009_5dab:
    ld d, $02
    ld a, [$d5a5]
    ld b, a
    ld a, [$d5a4]
    cp b
    jr nc, jr_009_5dba

    ld d, $03
    ld a, b

jr_009_5dba:
    ld b, a
    ld e, $01
    ld a, [$d5a7]
    ld c, a
    ld a, [$d5a6]
    cp c
    jr nc, jr_009_5dca

    ld e, $00
    ld a, c

jr_009_5dca:
    ld c, a
    or b
    jr z, jr_009_5dda

    ld a, b
    cp c
    jr nc, jr_009_5dd6

    ld a, e
    inc a
    ld d, c
    ret


jr_009_5dd6:
    ld a, d
    inc a
    ld d, b
    ret


jr_009_5dda:
    xor a
    ld d, a
    ret


Call_009_5ddd:
    ld a, [hl+]
    srl a
    srl a
    srl a
    call Call_009_4b52
    ld a, [hl-]
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    ld a, [hl]
    cp $0e
    jr c, jr_009_5e01

    and $03
    cp $02
    jp z, Jump_009_5eb8

jr_009_5e01:
    ld a, [$d53c]
    cp $00
    jr nz, jr_009_5e32

    ld de, $657b
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld de, $6599
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ld a, $13
    call Call_000_07e6
    ld de, $65b7
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld de, $65d5
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


jr_009_5e32:
    cp $01
    jr nz, jr_009_5e60

    ld de, $65f3
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld de, $6611
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ld a, $13
    call Call_000_07e6
    ld de, $662f
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld de, $664d
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


jr_009_5e60:
    cp $02
    jr nz, jr_009_5e8e

    ld de, $666b
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld de, $6689
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ld a, $13
    call Call_000_07e6
    ld de, $66a7
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld de, $66c5
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


jr_009_5e8e:
    ld de, $66e3
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld de, $6701
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ld a, $13
    call Call_000_07e6
    ld de, $671f
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld de, $673d
    ld a, [hl]
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


Jump_009_5eb8:
    ld a, [$c248]
    inc a
    ld [$c248], a
    ld a, [$d53c]
    cp $00
    jr nz, jr_009_5f08

    ld a, [hl]
    sub $0e
    srl a
    srl a
    ld de, $675b
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    sub $0f
    srl a
    srl a
    ld de, $675f
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ld a, $13
    call Call_000_07e6
    ld a, [hl]
    sub $10
    srl a
    srl a
    ld de, $6763
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    sub $11
    srl a
    srl a
    ld de, $6767
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


jr_009_5f08:
    ld a, [$d53c]
    cp $01
    jr nz, jr_009_5f51

    ld a, [hl]
    sub $0e
    srl a
    srl a
    ld de, $676b
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    sub $0f
    srl a
    srl a
    ld de, $676f
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ld a, $13
    call Call_000_07e6
    ld a, [hl]
    sub $10
    srl a
    srl a
    ld de, $6773
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    sub $11
    srl a
    srl a
    ld de, $6777
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


jr_009_5f51:
    ld a, [$d53c]
    cp $02
    jr nz, jr_009_5f9a

    ld a, [hl]
    sub $0e
    srl a
    srl a
    ld de, $677b
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    sub $0f
    srl a
    srl a
    ld de, $677f
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ld a, $13
    call Call_000_07e6
    ld a, [hl]
    sub $10
    srl a
    srl a
    ld de, $6783
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    sub $11
    srl a
    srl a
    ld de, $6787
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


jr_009_5f9a:
    ld a, [hl]
    sub $0e
    srl a
    srl a
    ld de, $678b
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    sub $0f
    srl a
    srl a
    ld de, $678f
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ld a, $13
    call Call_000_07e6
    ld a, [hl]
    sub $10
    srl a
    srl a
    ld de, $6793
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    sub $11
    srl a
    srl a
    ld de, $6797
    call Call_000_07ed
    ld a, [de]
    ld [hl], a
    ret


    ld a, [$d3d0]
    and a
    jr z, jr_009_6013

    ld a, [$c200]
    cp $63
    jr c, jr_009_5fed

    ld a, $80
    jr jr_009_600f

jr_009_5fed:
    cp $14
    jr c, jr_009_5ff5

    sub $14
    jr jr_009_5fed

jr_009_5ff5:
    cp $04
    jr nz, jr_009_5ffd

    ld a, $81
    jr jr_009_600f

jr_009_5ffd:
    cp $09
    jr nz, jr_009_6005

    ld a, $83
    jr jr_009_600f

jr_009_6005:
    cp $0e
    jr nz, jr_009_600d

    ld a, $87
    jr jr_009_600f

jr_009_600d:
    ld a, $8f

jr_009_600f:
    ld [$c538], a
    ret


jr_009_6013:
    ld hl, $c542
    res 0, [hl]
    ld hl, $c543
    set 1, [hl]
    xor a
    ld [$c544], a
    xor a
    ld [$c166], a
    ld [$c16a], a
    ld a, $03
    ld [$c167], a
    ld [$c16b], a
    ld a, $a0
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    ld [$c178], a
    ld a, $02
    ld hl, $44df
    call Call_000_0061
    call Call_000_0389
    ld a, $07
    ld hl, $7613
    call Call_000_0061
    ret


Call_009_6052:
    ld bc, $c100
    ld a, [$c202]
    and a
    ret z

    ld a, [$c100]
    sub [hl]
    inc hl
    bit 7, a
    jr z, jr_009_6066

    xor $ff
    inc a

jr_009_6066:
    ld d, a
    ld a, [$c101]
    sub [hl]
    dec hl
    bit 7, a
    jr z, jr_009_6073

    xor $ff
    inc a

jr_009_6073:
    add d
    ld d, a
    ld a, [$c108]
    sub [hl]
    inc hl
    bit 7, a
    jr z, jr_009_6081

    xor $ff
    inc a

jr_009_6081:
    ld e, a
    ld a, [$c109]
    sub [hl]
    dec hl
    bit 7, a
    jr z, jr_009_608e

    xor $ff
    inc a

jr_009_608e:
    add e
    cp d
    jr z, jr_009_6097

    ret nc

    ld bc, $c108
    ret


jr_009_6097:
    ld a, [$d918]
    and a
    ret nz

    ld bc, $c108
    ret


    push bc
    ld a, [bc]
    inc bc
    ld d, a
    ld a, [bc]
    ld e, a
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    ld a, [hl+]
    cp d
    jp nz, Jump_009_6138

    ld a, [hl]
    cp e
    jr nc, jr_009_60c0

    ld a, $00
    ld [$d541], a
    ld b, [hl]
    ld c, e
    jr jr_009_60c7

jr_009_60c0:
    ld a, $01
    ld [$d541], a
    ld b, e
    ld c, [hl]

jr_009_60c7:
    ld e, $05
    ld hl, $c17c

jr_009_60cc:
    ld a, [hl+]
    cp d
    jr nz, jr_009_60d8

    ld a, [hl]
    cp b
    jr c, jr_009_60d8

    cp c
    jp c, Jump_009_61ba

jr_009_60d8:
    inc hl
    inc hl
    inc hl
    dec e
    jr nz, jr_009_60cc

    srl b
    srl b
    srl b
    srl c
    srl c
    srl c
    srl d
    srl d
    srl d
    ld a, c
    sub b
    jr z, jr_009_6132

    ld c, a
    ld a, d
    call Call_009_4b52
    ld a, b
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    push hl
    push bc

jr_009_6103:
    ld a, [hl+]
    and a
    jr z, jr_009_6114

    cp $02
    jr z, jr_009_6114

    cp $0c
    jr z, jr_009_6114

    cp $0d
    jp nz, Jump_009_61b8

jr_009_6114:
    dec c
    jr nz, jr_009_6103

    pop bc
    pop hl
    ld a, $14
    call Call_000_07e6

jr_009_611e:
    ld a, [hl+]
    and a
    jr z, jr_009_612f

    cp $03
    jr z, jr_009_612f

    cp $0a
    jr z, jr_009_612f

    cp $0b
    jp nz, Jump_009_61ba

jr_009_612f:
    dec c
    jr nz, jr_009_611e

jr_009_6132:
    ld a, [$d541]
    inc a
    pop bc
    ret


Jump_009_6138:
    ld a, [hl-]
    cp e
    jr nz, jr_009_61ba

    ld a, [hl]
    cp d
    jr nc, jr_009_6149

    ld a, $03
    ld [$d541], a
    ld b, [hl]
    ld c, d
    jr jr_009_6150

jr_009_6149:
    ld a, $02
    ld [$d541], a
    ld b, d
    ld c, [hl]

jr_009_6150:
    ld d, $05
    ld hl, $c17c
    inc hl

jr_009_6156:
    ld a, [hl+]
    cp e
    jr nz, jr_009_6161

    ld a, [hl]
    cp b
    jr c, jr_009_6161

    cp c
    jr c, jr_009_61ba

jr_009_6161:
    inc hl
    inc hl
    inc hl
    dec d
    jr nz, jr_009_6156

    srl b
    srl b
    srl b
    srl c
    srl c
    srl c
    srl e
    srl e
    srl e
    ld a, c
    sub b
    jr z, jr_009_61b2

    ld c, a
    ld a, e
    call Call_009_4b52
    ld a, b
    call Call_000_07ed
    ld hl, $c271
    add hl, de

jr_009_618a:
    ld a, [hl+]
    and a
    jr z, jr_009_619a

    cp $06
    jr z, jr_009_619a

    cp $0b
    jr z, jr_009_619a

    cp $0d
    jr nz, jr_009_61ba

jr_009_619a:
    ld a, [hl-]
    and a
    jr z, jr_009_61aa

    cp $07
    jr z, jr_009_61aa

    cp $0a
    jr z, jr_009_61aa

    cp $0c
    jr nz, jr_009_61ba

jr_009_61aa:
    ld a, $14
    call Call_000_07e6
    dec c
    jr nz, jr_009_618a

jr_009_61b2:
    ld a, [$d541]
    inc a
    pop bc
    ret


Jump_009_61b8:
    pop bc
    pop hl

Jump_009_61ba:
jr_009_61ba:
    pop bc
    xor a
    ret


    call Call_000_0783
    di
    call Call_000_0679
    xor a
    ld [$c535], a
    ld hl, $6b2a
    ld bc, $0180
    ld de, $8000
    ld a, $00
    call Call_000_07ce
    ld hl, $6b2a
    call Call_000_0d52
    ld hl, $6b2a
    call Call_000_0d37
    ld hl, $9800
    call Call_000_098d
    ld hl, $6b2a
    ld de, $98e4
    ld a, $00
    call Call_000_080b
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
    xor a
    ld [$dd00], a
    ld [$dd01], a
    ld a, $d1
    call Call_000_04a0
    ld b, $00

jr_009_621b:
    call Call_000_0389
    call Call_000_06f6
    ldh a, [$8d]
    and $0f
    jr nz, jr_009_6247

    inc b
    ld a, b
    and $0f
    ld b, a
    and $07
    jr nz, jr_009_621b

    ld hl, $6b2a
    ld a, b
    and $08
    jr nz, jr_009_623b

    ld hl, $6b2a

jr_009_623b:
    ld de, $9924
    ld a, $00
    push bc
    call Call_000_08a4
    pop bc
    jr jr_009_621b

jr_009_6247:
    ld a, $0f
    ld [$dd01], a
    ret


    pop hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    inc hl
    ld a, [hl-]
    cp $90
    ret nc

    and $0f
    jr nz, jr_009_6268

    ld a, [$d5ab]
    inc a
    and $03
    ld [$d5ab], a

jr_009_6268:
    ld a, [$d5ab]
    call Call_000_07ed
    ld a, [de]
    ld c, a
    ld de, $d539
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, b
    ld e, a
    inc hl
    push hl
    push de
    ld a, [hl]
    ld h, a
    ld b, a
    ld a, [de]
    ld l, a
    ld de, $0155
    call Call_009_650c
    add hl, de
    ld a, b
    and $0f
    cp $0f
    jr nz, jr_009_6299

    ld a, h
    and $0f
    cp $01
    jr nz, jr_009_6299

    dec h
    ld l, $ff

jr_009_6299:
    pop de
    ld a, l
    ld [de], a
    ld a, h
    pop hl
    ld b, a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    inc hl
    ld a, b
    add $08
    ld [hl+], a
    inc c
    inc c
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ret


    pop hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    inc hl
    ld a, [hl-]
    and a
    ret z

    and $0f
    jr nz, jr_009_62ce

    ld a, [$d5ab]
    inc a
    and $03
    ld [$d5ab], a

jr_009_62ce:
    ld a, [$d5ab]
    call Call_000_07ed
    ld a, [de]
    ld c, a
    ld de, $d539
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, b
    ld e, a
    inc hl
    push hl
    push de
    ld a, [hl]
    ld h, a
    ld b, a
    ld a, [de]
    ld l, a
    ld de, $0155
    call Call_009_650c
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    cp $91
    jr c, jr_009_62fd

    ld h, $00
    ld l, $ff
    jr jr_009_630e

jr_009_62fd:
    ld a, b
    and $0f
    cp $01
    jr nz, jr_009_630e

    ld a, h
    and $0f
    cp $0f
    jr nz, jr_009_630e

    inc h
    ld l, $ff

jr_009_630e:
    pop de
    ld a, l
    ld [de], a
    ld a, h
    pop hl
    ld b, a
    ld [hl+], a
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    inc hl
    ld a, b
    add $08
    ld [hl+], a
    inc c
    inc c
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ret


    pop hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    ld a, [hl]
    and a
    ret z

    and $0f
    jr nz, jr_009_6342

    ld a, [$d5ab]
    inc a
    and $03
    ld [$d5ab], a

jr_009_6342:
    ld a, [$d5ab]
    call Call_000_07ed
    ld a, [de]
    ld c, a
    ld de, $d539
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, b
    ld e, a
    push hl
    push de
    ld a, [hl]
    ld h, a
    ld b, a
    ld a, [de]
    ld l, a
    ld de, $0155
    call Call_009_650c
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    cp $81
    jr c, jr_009_6370

    ld h, $00
    ld l, $ff
    jr jr_009_6381

jr_009_6370:
    ld a, b
    and $0f
    cp $01
    jr nz, jr_009_6381

    ld a, h
    and $0f
    cp $0f
    jr nz, jr_009_6381

    inc h
    ld l, $ff

jr_009_6381:
    pop de
    ld a, l
    ld [de], a
    ld a, h
    pop hl
    ld b, a
    ld [hl+], a
    inc hl
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ld [hl], b
    inc hl
    inc hl
    inc c
    inc c
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ret


    pop hl
    ld a, h
    ld [$d51c], a
    ld a, l
    ld [$d51d], a
    ld a, [$d52d]
    bit 5, a
    jr nz, jr_009_63af

    ld a, [hl]
    cp $80
    ret nc

jr_009_63af:
    and $0f
    jr nz, jr_009_63bc

    ld a, [$d5ab]
    inc a
    and $03
    ld [$d5ab], a

jr_009_63bc:
    ld a, [$d5ab]
    call Call_000_07ed
    ld a, [de]
    ld c, a
    ld de, $d539
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld d, b
    ld e, a
    push hl
    push de
    ld a, [hl]
    ld h, a
    ld b, a
    ld a, [de]
    ld l, a
    ld de, $0155
    call Call_009_650c
    add hl, de
    ld a, b
    and $0f
    cp $0f
    jr nz, jr_009_63ec

    ld a, h
    and $0f
    cp $01
    jr nz, jr_009_63ec

    dec h
    ld l, $ff

jr_009_63ec:
    pop de
    ld a, l
    ld [de], a
    ld a, h
    pop hl
    ld b, a
    ld [hl+], a
    inc hl
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ld [hl], b
    inc hl
    inc hl
    inc c
    inc c
    ld [hl], c
    inc hl
    ld a, [$d53f]
    ld [hl+], a
    ret


Call_009_6406:
    ld hl, $c164
    ld b, $00
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, $c17c

Jump_009_6411:
    ld a, [hl+]
    sub d
    bit 7, a
    jr z, jr_009_641a

    xor $ff
    inc a

jr_009_641a:
    cp $04
    jp nc, Jump_009_64b4

    ld c, a
    ld a, [hl]
    sub e
    bit 7, a
    jr z, jr_009_6429

    xor $ff
    inc a

jr_009_6429:
    cp $04
    jp nc, Jump_009_64b4

    ld a, b
    ld de, $c24b
    call Call_000_07ed
    ld a, [de]
    bit 4, a
    jr z, jr_009_645f

    dec hl
    ld a, [hl+]
    ld a, $dc
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    jr jr_009_6489

    ld a, $dc
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ld a, [$c167]
    or $40
    ld [$c167], a
    ld [$c16b], a
    jr jr_009_6489

jr_009_645f:
    ld a, [$d52d]
    and $03
    cp $01
    jr z, jr_009_6474

    ld a, $cc
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    jr jr_009_6489

jr_009_6474:
    ld a, $cc
    ld [$c16a], a
    inc a
    inc a
    ld [$c166], a
    ld a, [$c167]
    or $20
    ld [$c167], a
    ld [$c16b], a

jr_009_6489:
    ld a, [hl-]
    ld [$c165], a
    add $08
    ld [$c169], a
    ld a, b
    ld de, $c24b
    call Call_000_07ed
    xor a
    ld [de], a
    ld a, $40
    ld [$d5ac], a
    ld a, $a0
    ld [hl+], a
    ld [hl], a
    ld a, $04
    call Call_000_07e6
    ld a, $a0
    ld [hl+], a
    ld [hl], a
    ld hl, $d52d
    set 2, [hl]
    scf
    ret


Jump_009_64b4:
    ld a, $07
    call Call_000_07e6
    inc b
    ld a, b
    cp $05
    jp c, Jump_009_6411

    ret


Jump_009_64c1:
    ld a, [$d5ac]
    dec a
    jr z, jr_009_64fb

    ld [$d5ac], a
    and $07
    ret nz

    ld a, [$d5ac]
    and $f8
    srl a
    srl a
    srl a
    ld hl, $6573
    call Call_000_07e6
    ld a, [hl]
    ld b, a
    ld a, [$c167]
    bit 5, a
    jr nz, jr_009_64f1

    ld a, b
    ld [$c166], a
    inc a
    inc a
    ld [$c16a], a
    ret


jr_009_64f1:
    ld a, b
    ld [$c16a], a
    inc a
    inc a
    ld [$c166], a
    ret


jr_009_64fb:
    ld hl, $d52d
    res 2, [hl]
    ld a, [$c167]
    res 5, a
    ld [$c167], a
    ld [$c16b], a
    ret


Call_009_650c:
    push hl
    ld a, [$cf20]
    ld hl, $67a7
    call Call_000_07e6
    ld a, [hl]
    call Call_000_07ed
    push de
    ld a, [$d51c]
    ld h, a
    ld a, [$d51d]
    ld l, a
    ld a, [$c100]
    sub [hl]
    inc hl
    bit 7, a
    jr z, jr_009_652f

    xor $ff
    inc a

jr_009_652f:
    ld d, a
    ld a, [$c101]
    sub [hl]
    dec hl
    bit 7, a
    jr z, jr_009_653c

    xor $ff
    inc a

jr_009_653c:
    add d
    ld d, a
    ld a, [$cf20]
    ld hl, $679b
    call Call_000_07e6
    ld a, d
    pop de
    cp [hl]
    pop hl
    ret c

    push hl
    ld a, [$cf20]
    ld hl, $679e
    call Call_000_07e6
    ld a, [hl]
    call Call_000_07ed
    pop hl
    ret


    ld b, $5a
    xor a
    ld hl, $d542

jr_009_6562:
    ld [hl+], a
    dec b
    jr nz, jr_009_6562

    ld [$d59e], a
    ld [$d59f], a
    ld [$d5a0], a
    ld [$d5a1], a
    ret


    ret c

    call nc, $d4d8
    ret c

    call nc, $ccd0
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld b, $00
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
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    dec b
    ld [bc], a
    nop
    ld [bc], a
    dec b
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    ld d, $1b
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld d, $1b
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    ld b, $00
    ld [$0003], sp
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    add hl, bc
    nop
    inc bc
    nop
    nop
    nop
    rlca
    inc bc
    add hl, bc
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    jr jr_009_6604

    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    jr jr_009_660c

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    inc b
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld b, $00
    ld b, $00
    nop
    nop
    nop
    nop
    ld a, [de]
    rla
    inc e

jr_009_6604:
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    rla
    inc e

jr_009_660c:
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    dec b
    nop
    rlca
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
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld [$0300], sp
    nop
    nop
    ld b, $00
    ld [$0003], sp
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    rlca
    inc bc
    add hl, bc
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    inc b
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld b, $00
    ld b, $00
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc d
    dec e
    ld a, [de]
    dec de
    inc d
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    dec b
    ld [bc], a
    nop
    ld [bc], a
    dec b
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec d
    ld a, [de]
    dec de
    inc e
    dec d
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld b, $00
    inc bc
    ld b, $00
    ld b, $00
    ld [$0000], sp
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld b, $02
    nop
    inc b
    nop
    ld b, $00
    ld b, $00
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    rlca
    ld [bc], a
    nop
    nop
    dec b
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld [$0300], sp
    ld b, $00
    ld b, $00
    ld [$0000], sp
    nop
    nop
    nop
    ld [de], a
    dec de
    inc e
    dec e
    ld [de], a
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    add hl, bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    ld a, [de]
    inc de
    inc e
    dec e
    ld a, [de]

jr_009_6750:
    inc de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [de]
    dec de
    inc e

jr_009_675a:
    dec e
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec b
    rlca
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    add hl, bc
    rlca
    inc bc
    nop
    inc b
    ld b, $02
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [$0306], sp
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    ld b, $02
    nop
    dec b
    rlca
    ld [bc], a
    nop
    ld b, $06
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $06
    nop
    nop
    rlca

jr_009_6790:
    rlca
    nop
    nop
    ld [$0306], sp
    nop
    add hl, bc
    rlca
    inc bc
    nop
    ld e, d
    ld d, b
    inc a
    daa
    inc sp
    ld c, l
    inc b
    inc b
    inc b
    inc a
    ld [hl-], a
    add hl, de
    ld [$2010], sp
    nop
    nop
    ld b, $00
    inc c
    ld bc, $1f80
    ret nz

    jr nc, @-$3e

    and b
    ld h, b
    and b
    jr nc, jr_009_675a

    ccf
    ldh [$3f], a
    or b
    ccf
    adc a
    rra
    add b
    inc c
    adc h
    nop
    jr jr_009_67c7

jr_009_67c7:
    ld [hl], b
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jr nc, jr_009_6750

    nop
    ld hl, sp+$00
    inc c

jr_009_67d4:
    ld [bc], a
    inc b
    ld b, $04
    inc c
    dec b
    db $fc
    ld b, $fc
    inc c
    db $fc
    ldh a, [$fc]
    rlca
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
    add $00
    adc h
    add c
    nop
    sbc a
    nop
    cp a
    ld b, b
    or b
    ld h, b
    and b
    ccf
    and b
    ccf
    ldh a, [$3f]
    cp a
    ccf
    nop
    ccf
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
    ld h, b
    nop
    jr nc, jr_009_6790

    nop
    ld hl, sp+$00
    db $fc
    ld [bc], a
    inc c
    ld b, $04
    db $fc
    inc b
    db $fc
    ld c, $fc
    db $fd
    db $fc
    nop
    ld hl, sp+$00
    jr nc, jr_009_6854

    nop
    jr jr_009_6827

jr_009_6827:
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    add [hl]
    nop
    call z, $8c01
    add c
    nop
    cp a
    ret nz

    ccf
    ldh [$2f], a
    jr nc, @-$5e

    ccf
    or b

jr_009_683e:
    ccf
    rst $38
    ccf
    add b
    rra
    nop
    jr jr_009_683e

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
    jr nc, @-$7e

    jr nc, jr_009_67d4

jr_009_6854:
    nop
    db $fc
    inc bc
    db $fc
    rlca
    db $f4
    inc c
    inc b
    db $fc
    inc c
    db $fc
    rst $38
    db $fc
    nop
    ld hl, sp+$00
    jr jr_009_6885

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    nop
    ld e, b
    ld hl, $ff00
    ret nz

    ret nz

    add b
    rst $38
    rst $28

jr_009_6885:
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
    ld [hl], c
    nop
    ld a, [de]
    add h
    nop
    rst $38
    inc bc
    inc bc
    ld bc, $f7ff
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
    dec b
    ld b, $17
    add hl, de
    ld l, $31
    add hl, sp
    ld h, $30
    ld c, a
    dec hl
    inc [hl]
    dec d
    dec de
    ld a, [bc]
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    call z, Call_000_330d
    cp [hl]
    pop bc
    swap h
    ld b, $f9
    ret nz

    ccf
    add hl, sp
    add $8e

jr_009_68e1:
    pop af
    ld e, e
    call c, RST_00
    nop
    nop
    nop
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
    ld h, b
    sub b
    or b
    ld a, [$e9e6]
    dec de
    inc [hl]
    ret z

    db $ec
    inc d
    ret nc

    jr nc, jr_009_68e1

    inc d
    or b
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
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    rrca
    ld [$1916], sp
    inc e
    inc hl
    dec bc
    inc c
    dec b
    ld b, $01
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

jr_009_692f:
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    rrca
    ld [$1916], sp
    inc e
    inc hl
    dec bc
    inc c
    dec b
    ld b, $01
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
    add hl, de
    db $fd
    or $0f
    rst $38
    nop
    jr z, jr_009_692f

    inc e
    db $e3
    ld h, a
    sbc b
    ccf
    ret nz

    push hl
    ld e, $51
    or c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    sbc b
    push af
    rrca
    ld a, [de]
    and $4e
    or c
    ld a, [$5a06]
    and [hl]
    db $fd
    inc bc
    ld a, [c]
    ld c, $68
    sbc b
    nop
    nop
    nop
    nop
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
    inc c
    inc bc
    jr jr_009_6999

    jr @+$05

    nop

jr_009_6999:
    rrca
    jr jr_009_699f

    jr jr_009_69a1

    inc c

jr_009_699f:
    inc bc
    nop

jr_009_69a1:
    rrca
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    ld b, $18
    ld b, $38
    inc bc
    ld a, h
    nop
    ld a, a
    nop
    ld a, a
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
    ld bc, $03ff
    rst $38
    rrca
    ld [hl], b
    rra
    jr nz, jr_009_69c9

jr_009_69c9:
    nop
    nop
    nop
    add b
    ld a, [hl]
    add b
    ld a, h
    nop
    ldh a, [rP1]
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
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [$80], a
    rst $38
    ret nz

    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
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
    ld a, a
    ld bc, $017e
    ld a, $00
    nop
    nop
    nop
    ld h, b
    add b
    ret nc

    nop
    ret nc

jr_009_6a11:
    nop
    ld h, b
    sbc b
    nop
    db $fc
    nop
    cp $00
    ld a, a
    nop
    add b
    nop
    rst $38
    nop
    cp $1c
    db $fc
    cp $00
    cp $00
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $010e
    ld e, $00
    ccf
    nop
    ld a, a
    nop
    ld a, l
    nop
    cp $00
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
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    nop
    ret nz

    nop
    and b
    nop
    and b
    jr jr_009_6a11

    ld a, $00
    rst $38
    nop
    ld hl, sp+$00
    rlca
    nop
    cp $04
    db $fc
    ld e, $f8
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, h
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $010e
    ld e, $00
    ccf
    nop
    ld a, a
    nop
    ld a, a
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
    ld bc, $01fe
    ld a, [hl]
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    add b
    db $10
    ret nz

    ccf
    nop
    cp $00
    db $ec
    nop
    ldh [rP1], a
    ldh a, [rP1]
    rst $38

jr_009_6a9e:
    jr nz, jr_009_6a9e

    ld e, $fe
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    ld h, b
    rla
    sub b
    rrca
    ldh a, [rIF]
    ld h, b
    sbc a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    inc bc
    nop
    inc b
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld c, $02
    ld a, [hl]
    ld b, $fc
    ld e, $f8
    ld c, $f8
    ld b, $f8
    ld b, $f8
    ld [bc], a
    db $fc
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
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
    rrca
    nop
    add hl, de
    jr nz, jr_009_6aff

jr_009_6aff:
    ld a, a
    ld a, a
    ld b, b
    ccf
    ccf
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
    ld a, b
    nop
    ld c, h
    add b
    nop
    cp $fe
    ld [bc], a
    db $fc
    db $fc
    ldh a, [$0e]
    nop
    nop
    nop
    nop
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    rrca
    add hl, bc
    dec b
    rlca
    dec d
    dec b
    dec bc
    dec bc
    dec b
    add hl, bc
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6c71

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6c85

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6c99

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6cad

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6cc1

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6cd5

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

jr_009_6c71:
    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6ce9

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

jr_009_6c85:
    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6cfd

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

jr_009_6c99:
    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6d11

    adc d
    ld l, a
    db $e4
    ld l, a
    cp d
    ld l, h
    inc d
    ld l, l
    ld l, [hl]
    ld l, l
    ret z

jr_009_6cad:
    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld a, h
    ld l, [hl]
    sub $6e
    jr nc, jr_009_6d25

    adc d
    ld l, a
    db $e4
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_6cc1:
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc bc
    nop
    nop

jr_009_6cd5:
    nop
    nop
    nop
    nop
    rlca
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    ld bc, $0000

jr_009_6ce9:
    nop
    nop
    nop
    nop
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
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop

jr_009_6cfd:
    nop
    nop
    nop
    nop
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
    inc c
    dec c
    ld c, $0f
    nop
    nop

jr_009_6d11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_6d25:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
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
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
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
    nop
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
    nop
    nop
    nop
    add hl, bc
    ld [$0607], sp
    dec b
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
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
    ld b, $00
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld a, [bc]
    add hl, bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    nop

jr_009_6fce:
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [$0007], sp
    nop
    nop
    nop
    ld d, b
    add b
    sub b
    nop
    sub b
    nop
    nop
    nop
    sub b
    add b
    sub b
    nop
    ld b, b
    jr nc, jr_009_6fce

    jr nz, jr_009_7050

jr_009_7050:
    add b
    ld d, b
    db $10
    ld b, b
    ld hl, $c542
    set 0, [hl]
    ld a, [$c200]

jr_009_705c:
    cp $14
    jr c, jr_009_7064

    sub $14
    jr jr_009_705c

jr_009_7064:
    sub $04

jr_009_7066:
    cp $05
    jr c, jr_009_706f

    sub $05
    inc b
    jr jr_009_7066

jr_009_706f:
    push bc
    ld a, b
    ld hl, $7121
    call Call_000_07e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld bc, $0140
    ld de, $8a80
    ld a, $00
    call Call_000_07ce
    pop hl
    ld de, $0140
    add hl, de
    ld bc, $01c0
    ld de, $8ca0
    ld a, $00
    call Call_000_07ce
    pop bc
    ld a, b
    swap a
    srl a
    ld hl, $7101
    call Call_000_07e6
    ld de, $d688
    ld c, $08

jr_009_70a7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_009_70a7

    ld hl, $7d29
    ld bc, $00e0
    ld de, $8bc0
    ld a, $00
    call Call_000_07ce
    ld hl, $7e09
    ld bc, $0180
    ld de, $8e60
    ld a, $00
    call Call_000_07ce
    ld hl, $70f9
    ld c, [hl]
    ld hl, $c164
    ld de, $d52d
    call Call_009_4cf3
    ld a, $07
    ld [$d52f], a
    ld a, $08
    ld [$d530], a
    ld a, $3c
    ld [$d3d3], a
    xor a
    ld [$d5ab], a
    ld a, [$c164]
    ld [$d3d2], a
    ld a, $05
    ld [$d3d1], a
    xor a
    ld [$d5ca], a
    ret


    xor b
    xor h
    or b
    xor h
    adc $d2
    sub $d2
    nop
    nop
    sbc a
    ld d, e
    ld [$c07e], a
    ld l, c
    nop
    nop
    sbc a
    ld c, e
    ld e, d
    ld [hl+], a
    ld b, [hl]
    ld c, c
    nop
    nop
    rst $38
    ld e, e
    ld e, h
    ld [hl+], a
    add d
    ld bc, $0000
    rst $38
    ld a, a
    call nc, $ca79
    ld d, b
    add hl, hl
    ld [hl], c
    add hl, hl
    ld [hl], h
    add hl, hl
    ld [hl], a
    add hl, hl
    ld a, d
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    rla
    rlca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, h
    ld a, e
    ld a, b
    ld [hl], e
    ld [hl], h
    ld c, a
    ld c, [hl]
    nop
    rra
    rrca
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$d0]
    db $fc
    call z, $fcfc
    ret c

    sbc b
    ret nc

    nop
    ldh [$80], a
    ldh a, [$f0]
    ld [bc], a
    nop
    ld [hl], b
    xor a
    ldh a, [rIF]
    ld [bc], a
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    rla
    rlca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    db $e3
    ldh [rNR21], a
    add hl, de
    ld e, l
    ld a, d
    rst $00
    ld a, h
    add b
    ld a, a
    ld h, e
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$d0]
    db $fc
    call z, $fcfc
    ret c

    sbc b
    ret nc

    nop
    ldh [$80], a
    ldh a, [$f0]
    nop
    nop
    ld [$c0c0], sp
    cp h
    ret nz

    inc a
    ld [$f0c0], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    rla
    rlca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, h
    ld a, e
    ld a, b
    db $76
    ld [hl], c
    ld c, a
    ld c, h
    inc bc
    ccf
    ld h, b
    ld a, a
    ld a, a
    ld b, $00
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$d0]
    db $fc
    call z, $fcfc
    ret c

    sbc b
    ret nc

    nop
    ldh [$80], a
    ldh a, [$f0]
    inc b
    nop
    ldh [$5e], a
    ldh [rNR34], a
    add h
    add b
    nop
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    rla
    rlca
    rrca
    rra
    rra
    rra

jr_009_71f6:
    rra
    ccf
    ccf
    ccf
    inc a
    ld a, a
    ld a, h
    ld a, e
    ld a, b
    ld [hl], c
    db $76
    ld c, a
    ld c, a
    nop
    rra
    rrca
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$d0]
    db $fc
    call z, $fcfc
    ret c

    sbc b
    ret nc

    nop
    ld [c], a
    add b
    ldh a, [rIE]
    ld [hl], b
    cpl
    ld a, [c]
    nop
    add b
    add b
    nop
    add b
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc bc
    ld [$0c2f], sp
    rra
    ccf
    ld a, $3f
    ccf
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    ei
    ld hl, sp-$0d
    db $f4
    ldh [$ef], a
    sbc b
    sbc a
    rlca
    ld a, a
    ret nz

    rst $38
    rst $38
    inc c
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$a0], a
    ld hl, sp-$68
    ld hl, sp+$78
    or b
    jr nc, jr_009_71f6

    nop
    ret nz

    nop
    ldh [$60], a
    nop
    nop
    nop
    ret nz

    nop
    add b
    add b
    add b
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
    ld bc, $0b02
    inc bc
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    inc a
    ld [hl], e
    ld [hl], b
    dec c
    ld c, $c3
    ld a, [hl]
    add b
    ld a, a
    ld h, c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld hl, sp-$18
    cp $e6
    cp $fe
    db $ec
    call z, $80e8
    ldh a, [$c0]
    ld a, b
    ld a, b
    add d
    nop
    ldh a, [$af]
    ldh a, [rIF]
    ld a, [$0080]
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld c, $0e
    rra
    ld d, $1c
    inc b
    ccf
    inc a
    ccf
    ld a, $1f
    rra
    rrca
    ccf
    rra
    rra
    rlca
    rrca
    rlca
    rla
    ld bc, $0001
    nop
    nop
    nop
    nop
    jr jr_009_72f0

    jr jr_009_72ce

jr_009_72ce:
    jr jr_009_72d0

jr_009_72d0:
    jr jr_009_732a

jr_009_72d2:
    ld b, b
    ret c

    ld d, b
    jp c, $ca40

    call nc, $84fa
    ld a, [$ca8c]
    sbc $ea
    xor $f0
    db $f4
    ldh a, [$f0]
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    inc e

jr_009_72f0:
    inc e
    ld a, $2c
    add hl, sp
    ld [$787f], sp
    ld a, a
    ld a, l
    ccf
    ccf
    rra
    ld a, a
    ccf
    ccf
    rrca
    rra
    rrca
    cpl
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_009_7334

    jr @-$7c

    sbc b
    add d
    sbc b
    sbc d
    and h
    sbc d
    or h
    jp c, $ea26

    ld d, $b8
    adc h
    sub b
    cp h
    or b
    cp h
    jp nz, $dadc

    call c, Call_009_404c
    nop

jr_009_732a:
    nop
    nop
    nop
    jr jr_009_7347

    inc e
    inc e
    ld a, $2c
    add hl, sp

jr_009_7334:
    ld [$787f], sp
    ld a, a
    ld a, l
    ccf
    ccf
    rra
    ld a, a
    ccf
    ccf
    rrca
    rra
    rrca
    cpl
    inc bc
    inc bc
    nop
    nop

jr_009_7347:
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_009_7396

    jr nc, jr_009_7350

jr_009_7350:
    jr nc, jr_009_72d2

    or b
    or d
    add b
    or d
    and b
    cp d
    adc h
    jp c, $fa2c

    ld c, $b2
    sbc [hl]
    jp nc, $e2dc

    db $ec
    and $ec
    or $f4
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld c, $0e
    rra
    ld d, $1c
    inc b
    ccf
    inc a
    ccf
    ld a, $1f
    rra
    rrca
    ccf
    rra
    rra
    rlca
    rrca
    rlca
    rla
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld h, b
    sub b
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    ld [hl], b
    ld b, b
    ldh a, [$60]
    ld a, [c]

jr_009_7396:
    ld b, b
    jp c, $facc

    inc c
    ld [$ca1c], a
    sbc $ea
    xor $f0
    db $f4
    ldh a, [$f0]
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_009_73c9

    inc e
    inc e
    ld a, $2c
    add hl, sp
    ld [$307f], sp
    rrca
    push af
    rrca
    rst $38
    ld e, a
    ccf
    ccf
    ccf
    rrca
    rra
    rrca
    cpl
    inc bc
    inc bc
    nop
    nop

jr_009_73c9:
    nop
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
    add d
    and b
    adc d
    inc a
    jp z, $ca3c

    inc a
    ld a, [bc]
    ld a, [hl]
    sub d
    cp [hl]
    jp nc, $e2dc

    db $ec
    and $ec
    or $f4
    nop
    nop
    ld b, $06
    rlca
    rlca
    rrca
    dec bc
    ld c, $02
    rra
    ld e, $1f
    rra
    rrca
    rrca
    rrca
    ccf
    rra
    rra
    rlca
    rrca
    rlca
    rla
    inc bc

jr_009_7402:
    inc bc
    nop

jr_009_7404:
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld [de], a
    inc c
    nop
    inc c
    and d
    inc l
    ld l, [hl]
    jr nz, jr_009_7402

    jr z, jr_009_7404

    ld h, b
    sbc $ca
    ld a, [$e886]
    sbc h
    ret nc

    call c, $dcd0
    ldh [$ec], a
    ld [c], a
    db $ec
    ld a, [hl+]
    inc l
    inc c
    nop
    nop
    nop
    jr c, @+$3a

    rra
    dec de
    rra
    dec e
    rrca
    ld [$0d0f], sp
    rlca
    inc bc
    rlca
    ld b, $01
    rlca
    nop
    inc bc
    rlca
    rlca
    dec b
    ld [bc], a
    rrca
    ld [bc], a
    rra
    rlca
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ldh a, [$e0]
    ldh a, [$f0]
    or b
    and b
    nop
    or b
    nop
    ldh [rP1], a
    add b
    add b
    ld b, b
    add b
    add b
    ret nz

    add b
    nop
    add b
    ldh [$80], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_009_74a7

    rra
    dec de
    rra
    dec e
    rrca
    ld [$0d0f], sp
    rlca
    inc bc
    rlca
    ld b, $01
    rlca
    nop
    inc bc
    scf
    rlca
    dec e
    ld [hl+], a
    rra
    ld a, $00
    jr nc, jr_009_7488

jr_009_7488:
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

    ldh a, [$e0]
    ldh a, [$f0]
    or b
    and b
    nop
    or b
    nop
    ldh [rP1], a
    add b
    add b
    ld b, b
    add b
    add b
    ret nz

    ldh [$78], a
    ldh [$90], a

jr_009_74a7:
    nop
    nop
    nop
    nop
    jr c, @+$3a

    rra
    dec de
    rra
    dec e
    rrca
    ld [$0d0f], sp
    rlca
    inc bc
    rlca
    ld b, $01
    rlca
    nop
    inc bc
    rlca
    rlca
    dec c
    ld [bc], a
    rra
    ld b, $2f
    rra
    ld bc, $001d
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ldh a, [$e0]
    ldh a, [$f0]
    or b
    and b
    nop
    or b
    nop
    ldh [rP1], a
    add b
    add b
    ld b, b
    add b
    add b
    ret nz

    add b
    nop
    ret nz

    ldh a, [$c0]
    jr nz, jr_009_74e8

jr_009_74e8:
    nop
    nop
    nop
    jr c, @+$3a

    rra
    dec de
    rra
    dec e
    rrca
    ld [$0d0f], sp
    rlca
    inc bc
    rlca
    ld b, $01
    rlca
    nop
    inc bc
    rlca
    rlca
    dec b
    ld [bc], a
    rrca
    ld [bc], a
    rra
    rlca
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ldh a, [$e0]
    ldh a, [$f0]
    or b
    and b
    nop
    or b
    nop
    ldh [rP1], a
    add b
    add b
    ld b, b
    add b
    add b
    ret nz

    add b
    nop
    add b
    ldh [$80], a
    ld b, b
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ccf
    scf
    ccf
    dec sp
    rra
    ld de, $1b1f
    rrca
    ld b, $0f
    inc c
    inc bc
    ld c, $01
    rlca
    ld c, $0f
    rla
    add hl, bc
    ccf
    dec bc
    ld e, a
    ccf
    inc bc
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ldh [$c0], a
    ldh [$e0], a
    ld h, b
    ld b, b
    nop
    ld h, b
    nop
    ret nz

    nop
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    add b
    ldh [$80], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    rrca
    dec c
    rrca
    ld c, $07
    inc b
    rlca
    ld b, $03
    ld bc, $0303
    nop
    inc bc
    ld [hl-], a
    inc bc
    dec e
    inc bc
    rra
    scf
    inc bc
    inc hl
    nop
    jr nc, jr_009_7588

jr_009_7588:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$f8], a
    ldh a, [$78]
    ld hl, sp-$28
    ret nc

    add b
    ret c

    nop
    ldh a, [$80]
    ld b, h
    ret nz

    db $fc
    ldh a, [$c0]
    ldh [$c0], a
    ret c

    ldh [$90], a
    nop
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
    inc e
    rrca
    inc e
    inc e
    jr jr_009_75f7

    inc a
    ccf
    ld [hl], $3f
    inc hl
    ccf
    dec d
    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    inc b
    and b
    ld d, $de
    ld [hl], h
    cp [hl]
    db $e4
    ld l, $fe
    inc a
    and h
    inc c
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
    ld [bc], a
    ld c, $07
    ld c, $0e
    inc c

jr_009_75f7:
    rra
    ld e, $1f
    dec de
    rra
    ld de, $0a1f
    ld a, $3e
    jr c, @+$3a

    jr nz, @+$22

    nop
    nop
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
    add b
    ld b, $c6
    inc b
    ld d, [hl]
    inc c
    xor $3a
    call c, $9470
    db $fc
    sbc h
    call nc, Call_000_040c
    inc e
    ld b, $10
    ld c, $00
    nop
    nop
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
    inc e
    rrca
    inc e
    inc e
    jr @+$41

    inc a
    ccf
    ld [hl], $3f
    inc hl
    ccf
    dec d
    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    inc b
    add b
    ld b, $a6
    inc d
    sbc $74
    cp [hl]
    and $2c
    db $fc
    inc a
    xor [hl]
    inc e
    ld b, $08
    ld b, $04
    nop
    nop
    nop
    nop
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
    inc e
    rrca
    inc e
    inc e
    jr jr_009_76b7

    inc a
    ccf
    ld [hl], $3f
    inc hl
    ccf
    dec d
    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    inc b
    and b
    ld d, $de
    ld [hl], h
    cp [hl]
    db $e4
    ld l, $fe
    inc a
    and h
    inc c
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
    dec b
    inc e
    rrca
    inc e

jr_009_76b7:
    inc e
    jr jr_009_76f9

    inc a
    ccf
    ld [hl], $3f
    inc hl
    ccf
    dec d
    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    inc b
    add b
    ld b, $a6
    inc d
    sbc $7c
    cp [hl]
    xor $3c
    db $e4
    inc l
    cp [hl]
    inc e
    ld b, $08
    ld b, $04
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
    ld c, $07
    ld c, $0e
    inc c
    rra
    ld e, $1f
    dec de

jr_009_76f9:
    rra
    ld de, $0a1f
    ld a, $3e
    jr c, jr_009_7739

    jr nz, jr_009_7723

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_009_770f

jr_009_770f:
    sub b
    inc b
    ret nc

    ld d, $52

jr_009_7714:
    jr jr_009_7714

    inc a
    sbc $7e
    sbc h
    db $fc
    xor h
    db $fc
    jr jr_009_7727

    jr jr_009_7721

jr_009_7721:
    jr c, jr_009_772d

jr_009_7723:
    jr nz, jr_009_7733

    nop
    nop

jr_009_7727:
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_772d:
    ld bc, $0700
    nop
    rra
    nop

jr_009_7733:
    ccf
    nop
    ld c, a
    ld bc, $030f

jr_009_7739:
    ld c, $07
    inc e
    rrca
    ld a, $1f
    ld e, $1f
    ld a, $3f
    ccf
    ccf
    rlca
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    nop
    cp $00
    jp c, $c820

    and b
    ret nz

    and h
    add b
    call c, $c080
    ld b, b
    ldh a, [$60]
    ldh [$4c], a
    ldh a, [rP1]
    ldh a, [$8c]
    ldh a, [$c0]
    ret nz

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
    rrca
    nop
    rrca
    nop
    rra
    ld bc, $011e
    inc l
    inc bc
    inc c
    rlca
    inc e
    rrca
    ld e, $1f
    ld a, $3f
    ccf
    ccf
    rlca
    ld a, a
    nop
    nop
    nop
    nop
    db $ec
    nop
    cp $00
    jp c, $c820

    and b
    ret nz

    and h
    add b
    call c, $c080
    nop
    ret nz

    ret nz

    ldh a, [$c0]

jr_009_779e:
    ret nz

    sbc b
    ldh [rP1], a
    ldh [rNR23], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, a
    nop
    adc a
    nop
    rra
    nop
    ld hl, $0700
    rlca
    rrca
    rrca
    ld c, $0f
    inc e
    rra
    ld a, $3f
    ld a, [hl]
    ld a, a
    ld a, $ff
    rrca
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    nop
    xor $00
    ld hl, sp+$00

jr_009_77d3:
    ret c

    jr nz, jr_009_779e

    and b
    ret nz

    and h
    add b
    call c, $c080
    ld b, b
    ldh a, [rLCDC]
    ret nz

    ld c, h
    ldh a, [rP1]
    ldh a, [$8c]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    ccf
    ld bc, $034f
    ld c, $07
    inc e
    rrca
    ld a, $1f
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rlca
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    nop
    cp $00
    jp c, $c820

    and b
    ret nz

    and h
    add b
    call c, $c080
    ld b, b
    ldh a, [rNR44]
    db $ec
    nop
    db $fc
    jp $c0ec


    ret nz

    ret nz

    ret nz

    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc c
    rlca
    inc e
    rlca
    ld e, $03
    ccf
    inc bc
    ld a, $07
    ld a, h
    rlca
    cp b
    rrca
    dec a
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rlca
    ld a, a
    nop
    nop
    add b
    nop
    or b
    nop
    ld a, b
    add b
    ld l, b
    add b
    jr nz, jr_009_77d3

    nop
    sub b
    ld b, b
    ldh a, [rP1]
    nop
    nop
    nop
    add b
    ret nz

    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

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
    ld b, a
    nop
    rrca
    nop
    ld de, $0000
    nop
    ld bc, $0701
    rlca
    ld c, $0f
    ccf
    ccf
    ld a, a
    rst $38
    rra
    ld a, a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    and $00
    rst $30
    nop
    db $fc
    nop
    db $ec
    db $10
    db $e4
    ld d, b
    ldh [$d2], a
    ld b, b
    xor $00
    ldh [rNR41], a
    ld hl, sp+$03
    db $e4
    add b
    db $ec
    add e
    cp h
    nop
    nop
    nop
    nop
    jr jr_009_78ad

jr_009_78ad:
    jr nc, @+$05

    inc a
    ld bc, $0118
    jr nc, jr_009_78c3

    ld a, $01
    ccf
    rlca
    ccf
    inc bc
    rra
    ld bc, $001f
    rrca
    nop
    inc c
    nop

jr_009_78c3:
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
    inc d
    nop
    inc d
    nop
    nop
    ld e, h
    jr nz, jr_009_7951

    ld [hl], d
    cp $86
    cp $06
    cp $be
    cp $fe
    cp $fc
    ld a, [hl]
    ld a, h
    ld a, $2c
    ld c, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    jr nc, jr_009_78ed

jr_009_78ed:
    ld h, b
    ld b, $78
    ld [bc], a
    jr nc, jr_009_78f5

    ld h, b
    inc e

jr_009_78f5:
    ld a, h
    inc bc
    ld a, a
    rrca
    ld a, $03
    ccf
    nop
    rra
    nop
    rrca
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
    inc d
    nop
    inc d
    ld b, b
    nop
    ld e, h
    ld h, d
    cp $72
    cp $06
    cp $1e
    cp $fe
    ld a, [hl]
    db $fc
    ld a, $3c
    ld e, $8c
    ld c, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    stop
    jr nc, @+$03

    ld a, $00
    inc c
    nop
    jr @+$09

    rra
    nop
    ccf
    inc bc
    ccf
    ld bc, $013d
    dec a
    ld bc, $003c
    inc [hl]
    nop
    ld [de], a
    nop
    stop
    ld [$0000], sp
    nop
    nop
    nop
    ld a, [bc]
    add b
    ld a, [bc]
    add b

jr_009_7951:
    nop
    xor [hl]
    nop
    ld l, $38
    cp $c2
    cp $82
    cp $de
    cp $fe
    cp $fe
    cp $3c
    ld a, $1c
    ld e, $08
    inc c
    nop
    inc b
    nop
    nop
    jr jr_009_796d

jr_009_796d:
    jr nc, @+$05

    inc a
    ld bc, $0118
    jr nc, jr_009_7983

    ld a, $01
    ccf
    rlca
    ccf
    inc bc
    rra
    ld bc, $001f
    rrca
    nop
    ld b, $00

jr_009_7983:
    ld [bc], a
    nop
    ld bc, $0000
    nop
    jr z, jr_009_798b

jr_009_798b:
    jr z, jr_009_798d

jr_009_798d:
    nop
    jr c, jr_009_7990

jr_009_7990:
    jr c, jr_009_7992

jr_009_7992:
    ld d, b
    jr nz, jr_009_7a0d

    ld c, [hl]
    cp $8e
    cp $1e
    cp $be
    cp $fe
    cp $fc
    ld a, [hl]
    ld a, h
    ld a, $2c
    ld c, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_009_79b1

jr_009_79b1:
    ld h, b
    ld b, $78
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ret nz

    ld a, $04
    ccf
    adc $3f
    ccf
    inc sp
    ccf
    nop
    rra
    nop
    rlca
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
    ld [bc], a
    ld b, d
    ld c, [hl]
    ld c, [hl]
    ld a, [hl]
    cp $3e
    cp $7e
    cp $fc
    cp $fc
    ld a, [hl]
    db $fc
    ld a, $3c
    ld e, $80
    nop
    ld [$1800], sp
    nop
    rra
    nop
    ld b, $00
    inc c
    inc bc
    rra
    nop
    rra
    ld bc, $003f
    ld a, $00
    inc a
    nop
    inc a
    nop
    inc [hl]
    nop
    ld [de], a
    nop
    stop
    ld [$0000], sp
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    ret nz

jr_009_7a0d:
    nop
    ld c, [hl]
    nop
    ld d, [hl]
    nop
    sub d
    sub b

jr_009_7a14:
    ld a, [hl]
    ret nz

    db $fc
    add [hl]
    cp $de
    cp $7e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld e, $1e
    jr jr_009_7a41

    ld [$000c], sp
    ld [$0000], sp
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    ld bc, $017e
    adc [hl]
    ld bc, $0012
    dec e
    ld bc, $003f
    jr nz, jr_009_7a3e

jr_009_7a3e:
    ld b, b
    nop
    nop

jr_009_7a41:
    nop
    nop
    jr nc, jr_009_7a45

jr_009_7a45:
    inc bc
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nz

    nop
    adc h
    jr c, jr_009_7a14

    ld l, b
    ldh [$f8], a
    ret nz

    ret nz

    ret nz

    ld h, b
    sub $f0
    ld [c], a
    ld hl, sp+$60
    ld h, b
    ld b, b
    ld e, b
    jr nc, jr_009_7a93

    jr nc, @+$3e

    db $10
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $030e
    inc e
    ld [bc], a
    inc a
    inc bc
    dec a
    inc bc
    ld a, l
    ld bc, $0362
    ld e, a
    ld bc, $10a1
    ld b, b
    db $10
    ld [$0800], sp
    ld [bc], a
    rlca

jr_009_7a87:
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_7a8d:
    add b
    nop
    nop
    nop
    jr jr_009_7b03

jr_009_7a93:
    add h
    ret nc

    ret nz

    ldh a, [$80]
    add b
    sbc b
    ret nz

    ld [$e0e0], sp
    ldh [$c0], a
    ldh a, [$a0]
    and b
    ld h, b
    ld a, b
    jr nz, jr_009_7a87

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rra
    nop
    ld a, a
    nop
    inc bc
    nop
    dec c
    nop
    ld a, $00
    ld b, a
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
    dec c
    ld bc, $0000
    nop
    nop
    nop
    nop
    jr c, jr_009_7a8d

    ld [hl], $cc
    ld h, c
    sub h
    ld [hl], b
    cp h
    ld h, b

jr_009_7ad4:
    and b
    ld h, e
    or b
    pop hl
    db $fc
    ld a, b
    ld a, b

jr_009_7adb:
    jr nc, jr_009_7b0d

    jr nz, jr_009_7b0b

    jr jr_009_7af9

    nop
    inc c
    sbc b
    sbc b
    add b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    ld bc, $017e
    adc [hl]
    ld bc, $0012
    dec e

jr_009_7af9:
    ld bc, $003f
    jr nz, jr_009_7afe

jr_009_7afe:
    ld b, b
    nop
    nop
    nop
    nop

jr_009_7b03:
    jr nc, jr_009_7b05

jr_009_7b05:
    inc bc
    rra
    nop
    nop
    nop
    nop

jr_009_7b0b:
    ldh [rP1], a

jr_009_7b0d:
    ret nz

    nop
    adc h
    jr c, jr_009_7ad4

    ld l, b
    ldh [$f8], a
    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$f8], a
    ld a, [c]
    db $f4

jr_009_7b1d:
    ld h, e
    ld h, b
    ld b, c
    ld e, b
    jr nc, jr_009_7b53

    jr nc, @+$3e

    db $10
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [bc], a
    inc e
    ld b, $38

jr_009_7b33:
    dec b
    ld a, c
    rlca
    ld a, e
    rlca
    ld a, e
    inc bc
    push hl
    rlca
    rst $18
    inc bc
    and e
    db $10
    ld b, b
    db $10
    ld [$0800], sp
    ld [bc], a
    rlca

jr_009_7b47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_7b4f:
    nop
    nop
    jr nc, jr_009_7b33

jr_009_7b53:
    ld [$80a0], sp
    ldh [rP1], a
    nop
    jr nc, jr_009_7adb

    jr nz, jr_009_7b1d

    ret nz

    ret nz

    ret nz

    ldh a, [$a0]
    and b
    ld h, b
    ld a, b
    jr nz, jr_009_7b47

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld a, a
    nop
    rrca
    nop
    inc bc
    nop
    dec e
    nop
    ld a, [hl]
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
    rlca
    dec c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ret nz

    jr c, jr_009_7b4f

    ld [hl], $cc
    ld h, c
    sub h
    ld [hl], b
    cp h
    ld h, e
    and b
    ld h, [hl]
    jr nc, jr_009_7c0a

    ld a, h
    ld [hl], b
    ld [hl], b
    jr nz, jr_009_7bcb

    jr @+$1a

    nop
    inc c
    sbc b
    sbc b
    add b
    ldh a, [rP1]
    nop
    nop
    nop
    ld [$1000], sp
    nop
    db $10
    inc e
    nop
    inc d
    ld b, h
    dec e
    ld l, a
    rrca
    ld a, a
    ld b, $0e
    ld [hl], c
    nop
    ld a, [hl]
    nop
    dec a
    nop
    dec a
    nop
    dec de
    nop
    jr jr_009_7bc6

jr_009_7bc6:
    ld [$0400], sp
    nop
    nop

jr_009_7bcb:
    ret nz

    nop
    add b
    inc b
    nop
    ld d, h
    adc [hl]
    sbc $6c
    xor $f0
    ld a, [c]
    ret nz

    jp nz, $8282

    ld [bc], a
    add d
    nop
    add d
    nop
    add d
    inc b
    add d
    inc b

jr_009_7be4:
    ret nz

    nop
    jr nz, jr_009_7be8

jr_009_7be8:
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [$0800], sp
    ld c, $00
    ld a, [bc]
    ld [bc], a
    ld c, $27
    rlca
    dec sp
    inc bc
    cpl
    stop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop

jr_009_7c0a:
    nop
    nop
    nop
    nop
    nop
    ret nz

    inc b
    add b
    inc d
    ld l, $7e
    inc [hl]
    or $b8
    ld a, [$62e0]
    ld b, d
    jp nz, Jump_009_4200

    nop
    ld c, h
    jr jr_009_7c63

    nop
    and b
    nop
    ret nc

    nop
    jr nz, jr_009_7c3d

    nop
    ld [hl+], a
    nop
    jr nz, jr_009_7c68

    ld b, b
    add hl, hl
    ld l, b
    dec de
    ld a, a
    rrca
    rra
    ld h, c
    ld bc, $007f
    ld a, l
    nop
    ld a, e

jr_009_7c3d:
    nop
    scf
    nop
    ld [hl], $00
    ld [hl-], a
    nop
    ld [de], a
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    jr z, jr_009_7be4

    cp h
    call nc, $e0d6
    ld [c], a
    add b
    add d
    ld b, $06
    inc b
    inc c
    nop
    ld [$0804], sp
    inc b
    nop
    nop
    nop

jr_009_7c63:
    nop
    nop
    nop
    nop
    nop

jr_009_7c68:
    nop
    nop
    nop
    ld [$1000], sp
    nop
    db $10
    inc e
    nop
    inc d
    ld b, h
    dec e
    ld l, a
    rrca
    ld a, a
    ld b, $0e
    ld [hl], c
    nop
    ld a, [hl]
    nop
    dec a
    nop
    dec a
    nop
    dec de
    nop
    jr jr_009_7c86

jr_009_7c86:
    ld [$0400], sp
    jr nc, jr_009_7c8b

jr_009_7c8b:
    ld h, b
    nop
    nop
    ld b, h
    nop
    sub h
    ld c, [hl]
    sbc $ec
    xor $f0
    ld a, [c]
    ret nz

    jp nz, $8282

    ld [bc], a
    add d
    nop
    add d
    nop
    add d
    inc b
    add d
    inc b
    ret nz

    nop
    jr nz, jr_009_7ca8

jr_009_7ca8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [$0800], sp
    ld c, $00
    ld a, [bc]
    ld [bc], a
    ld c, $27
    rlca
    dec sp
    inc bc
    cpl
    stop
    rra
    nop
    rra
    nop
    rrca
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
    inc b
    add b
    inc d

jr_009_7cd3:
    adc $1e
    inc [hl]
    db $76
    jr c, jr_009_7cd3

    ldh [$e2], a
    ld [c], a
    ld h, d
    ld b, b
    jp nz, Jump_009_4c00

    jr jr_009_7d23

    nop
    and b
    nop
    ret nc

    nop
    ldh [$0a], a
    nop
    inc de
    nop
    ld de, $201c
    inc d
    inc [hl]
    dec c
    ccf
    rlca
    rrca
    ld [hl], b
    nop
    ld a, [hl]
    nop
    ld a, l
    nop
    ld a, e
    nop
    ld [hl], a
    nop
    ld [hl], $00
    ld h, $00
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    inc d
    cp h
    call nc, $e0d6
    ld [c], a
    ret nz

    jp nz, $0606

    inc b
    inc c
    nop
    ld [$0804], sp
    inc b
    nop
    nop
    nop

jr_009_7d23:
    nop
    nop
    nop
    nop
    nop
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
    ld b, $17
    add hl, de
    ld l, $31
    add hl, sp
    ld h, $30
    ld c, a
    dec hl
    inc [hl]
    dec d
    dec de
    ld a, [bc]
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    call z, Call_000_330d
    cp [hl]
    pop bc
    swap h
    ld b, $f9
    ret nz

    ccf
    add hl, sp
    add $8e

jr_009_7d60:
    pop af
    ld e, e
    call c, RST_00
    nop
    nop
    nop
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
    ld h, b
    sub b
    or b
    ld a, [$e9e6]
    dec de
    inc [hl]
    ret z

    db $ec
    inc d
    ret nc

    jr nc, jr_009_7d60

    inc d
    or b
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
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    rrca
    ld [$1916], sp
    inc e
    inc hl
    dec bc
    inc c
    dec b
    ld b, $01
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

jr_009_7dae:
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    rrca
    ld [$1916], sp
    inc e
    inc hl
    dec bc
    inc c
    dec b
    ld b, $01
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
    add hl, de
    db $fd
    or $0f
    rst $38
    nop
    jr z, jr_009_7dae

    inc e
    db $e3
    ld h, a
    sbc b
    ccf
    ret nz

    push hl
    ld e, $51
    or c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    sbc b
    push af
    rrca
    ld a, [de]
    and $4e
    or c
    ld a, [$5a06]
    and [hl]
    db $fd
    inc bc
    ld a, [c]
    ld c, $68
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$070a], sp
    dec c
    ld a, [bc]
    dec c
    rla
    jr jr_009_7e27

jr_009_7e1a:
    ld [de], a
    add hl, de
    ld b, $1b
    inc b
    add hl, bc
    ld d, $14
    dec de
    inc c
    dec bc
    dec c

jr_009_7e26:
    ld a, [de]

jr_009_7e27:
    rla
    jr jr_009_7e2a

jr_009_7e2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    and b
    ldh [rLCDC], a
    and b
    ret nc

    jr nc, jr_009_7e1a

    db $10
    ld [hl], b
    add b
    ldh a, [rP1]
    ld h, b
    sub b

jr_009_7e41:
    ldh a, [rNR10]
    ret nz

    jr nz, jr_009_7e26

    jr nz, jr_009_7e88

    and b
    dec e
    ld [de], a
    ld c, $11
    inc c
    inc de
    inc c
    inc de
    ld e, $11
    rlca
    ld [$0403], sp
    ld [bc], a
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
    ld d, b
    or b
    ldh [rNR10], a
    or b
    ld b, b
    jr nz, jr_009_7e41

    ld [hl], b
    sub b
    ld b, b
    and b
    and b
    ld h, b
    ret nz

    ld b, b
    add b
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

jr_009_7e88:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_7e91:
    ld bc, $0201
    inc bc
    nop
    ld [bc], a
    inc bc
    ld bc, $0506
    dec bc
    ld c, $03
    ld a, [bc]
    rrca
    ld b, $0d
    ld b, $0b
    inc b
    ld b, $09
    rrca
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
    ret nz

    ld d, b
    ld b, b
    add b
    xor b
    ld a, b
    ret c

    jr z, jr_009_7f2e

    adc b
    ld a, b
    add b
    jr z, @-$2e

jr_009_7ec3:
    sbc b
    ld h, b
    sub b
    ld l, b

jr_009_7ec7:
    jr c, jr_009_7e91

    ld [bc], a
    dec b
    ld [bc], a
    dec b
    add hl, bc
    ld a, [bc]
    inc bc
    ld a, [bc]
    dec c
    ld b, $06
    add hl, bc
    ld c, $09
    inc bc
    inc b
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
    nop
    nop
    jr z, jr_009_7ec3

    jr nz, @-$2e

    ld c, b
    cp b
    ld d, b
    cp b
    ld h, b
    or b
    ld d, b
    and b
    jr nz, jr_009_7ec7

    ld d, b
    or b
    and b
    ld h, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$26

    inc a
    ld b, d
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    ld b, d
    jr jr_009_7f43

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_7f2e:
    nop
    nop
    nop
    jr jr_009_7f57

    ld a, [hl]
    nop
    ld h, [hl]
    add c
    jp $c300


    nop
    ld h, [hl]
    add c
    ld a, [hl]
    nop
    jr jr_009_7f65

    nop
    nop

jr_009_7f43:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_009_7f5f

    ld h, b
    ld a, [de]
    ldh [rNR10], a

jr_009_7f57:
    ldh a, [rP1]
    rrca
    nop
    rlca
    ld [$5806], sp

jr_009_7f5f:
    inc c
    jr nc, jr_009_7f62

jr_009_7f62:
    nop
    nop
    nop

jr_009_7f65:
    nop
    nop
    nop
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
    ld c, $40
    rrca
    add b
    add hl, bc
    add $90
    ld h, e
    ldh a, [rSB]
    ld [hl], b
    ld [bc], a
    jr nc, jr_009_7f81

jr_009_7f81:
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
