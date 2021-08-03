; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    call Call_000_063f
    and $3f
    add $32
    ld [$c53b], a
    ld a, [$c200]

jr_002_400d:
    cp $0a
    jr c, jr_002_4015

    sub $0a
    jr jr_002_400d

jr_002_4015:
    ld hl, $7dd0
    ld e, a
    add a
    sla e
    sla e
    sla e
    sla e
    add e
    ld e, a
    xor a
    adc $00
    ld d, a
    add hl, de
    call Call_000_063f
    and $0f
    call Call_000_07e6
    ld a, [hl+]
    ld [$c53d], a
    ld a, [hl+]
    ld [$c53e], a
    ld a, [hl]
    ld [$c53f], a
    ld a, $03
    ld [$c233], a
    call Call_002_432e
    xor a
    ld [$c232], a
    ld [$c23d], a
    ld [$c544], a
    ld [$c543], a
    ld [$c542], a
    ld [$c25a], a
    ld [$c25b], a
    ld [$c25c], a
    ld [$c25d], a
    ld [$c25e], a
    ld [$c25f], a
    ld [$c260], a
    ld [$c261], a
    ld [$c262], a
    ld [$c263], a
    ld [$c590], a
    ld [$c58c], a
    ld [$c58d], a
    ld [$c58e], a
    ld [$c58f], a
    ld [$c536], a
    ld [$c537], a
    ld [$c246], a
    ld [$c247], a
    ld [$c248], a
    ld [$c255], a
    ld [$c256], a
    ld [$c257], a
    ld [$c258], a
    ld [$c259], a
    ld [$c540], a
    ld [$c541], a
    ld a, $80
    ld [$c24b], a
    ld [$c24c], a
    ld [$c24d], a
    xor a
    ld [$c24e], a
    ld [$c24f], a
    ld [$c250], a
    ld [$c251], a
    ld [$c252], a
    ld [$c253], a
    ld [$c254], a
    ld hl, $c17c
    ld de, $7a62
    ld a, [$d3d0]
    and a
    jr nz, jr_002_40ea

    ld de, $7a26
    ld a, [$c200]

jr_002_40d9:
    cp $0a
    jr c, jr_002_40e1

    sub $0a
    jr jr_002_40d9

jr_002_40e1:
    sla a
    ld b, a
    sla a
    add b
    call Call_000_07ed

jr_002_40ea:
    ld b, $03

jr_002_40ec:
    push bc
    ld a, [de]
    ld b, a
    ld [hl+], a
    inc de
    ld a, [de]
    ld c, a
    ld [hl+], a
    ld a, $64
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    add $08
    ld [hl+], a
    ld a, $64
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    inc de
    pop bc
    dec b
    jr nz, jr_002_40ec

    call Call_002_4601
    ld a, [$c200]

jr_002_4111:
    cp $08
    jr c, jr_002_4119

    sub $08
    jr jr_002_4111

jr_002_4119:
    sla a
    ld de, $7ba0
    call Call_000_07ed
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    xor a
    ld de, $8fc0
    ld bc, $0040
    call Call_000_07ce
    xor a
    ld [$c242], a
    ld [$c243], a
    ld [$c22e], a
    ld [$c22f], a
    ld [$c22f], a
    ld [$c23a], a
    ld [$c23b], a
    ld [$c201], a
    ld [$c225], a
    ld [$c226], a
    ld [$c52c], a
    ld [$c52d], a
    ld [$c52e], a
    ld [$c249], a
    ld [$c203], a
    ld [$cf0c], a
    ld a, $10
    ld [$cf0b], a
    ld [$c24a], a
    ld a, $8f
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ld a, $e0
    ld [$c108], a
    ld [$c10c], a
    ld [$c198], a
    ld hl, $c3ed
    ld [hl], $10
    inc hl
    ld [hl], $04
    inc hl
    ld [hl], $04
    ld hl, $c409
    ld [hl], $10
    inc hl
    ld [hl], $04
    inc hl
    ld [hl], $04
    ld a, $e0
    ld hl, $c138
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $10
    ld hl, $c110
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $12
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $12
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $12
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $12
    inc hl
    ld hl, $c130
    ld [hl], $e0
    inc hl
    ld [hl], $e0
    inc hl
    ld [hl], $fc
    inc hl
    ld [hl], $07
    inc hl
    ld [hl], $e0
    inc hl
    ld [hl], $80
    inc hl
    ld [hl], $fe
    inc hl
    ld [hl], $07
    inc hl
    ld hl, $c148
    ld [hl], $e0
    ld hl, $c149
    ld [hl], $e0
    ld hl, $c14a
    ld [hl], $e0
    ld a, [$d3d0]
    and a
    jr nz, jr_002_4201

    ld hl, $c130
    ld [hl], $40
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $e8
    inc hl
    ld [hl], $03
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $48
    inc hl
    ld [hl], $ea
    inc hl
    ld [hl], $03

jr_002_4201:
    ld hl, $c144
    ld b, $06

jr_002_4206:
    ld [hl], $e0
    inc hl
    ld [hl], $e0
    inc hl
    ld [hl], $e8
    inc hl
    ld [hl], $03
    inc hl
    ld [hl], $e0
    inc hl
    ld [hl], $e8
    inc hl
    ld [hl], $ea
    inc hl
    ld [hl], $03
    inc hl
    dec b
    jr nz, jr_002_4206

    ld hl, $c265
    ld a, $00
    ld c, $06

jr_002_4228:
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_002_4228

    ld a, $09
    ld hl, $4459
    call Call_000_0061
    ld a, [$d3d0]
    and a
    jr z, jr_002_4248

    ld a, $09
    ld hl, $7054
    call Call_000_0061
    ld a, $40
    ld [$c225], a

jr_002_4248:
    ld a, $e7
    call Call_000_0493
    xor a
    ld [$dd02], a
    ld [$dd01], a
    ld a, $04
    ld [$dd00], a
    call Call_000_0389
    xor a
    call Call_002_7110
    call Call_002_760f
    ld a, $01
    call Call_002_7110
    call Call_002_760f
    call Call_000_0616
    call Call_002_6fc7
    call Call_000_0389

Jump_002_4274:
jr_002_4274:
    ld a, [$c203]
    and a
    jr z, jr_002_427f

    call Call_002_4ad4
    jr jr_002_4274

jr_002_427f:
    call Call_002_44df
    call Call_002_6fc7
    xor a
    ld [$dd02], a
    ld a, $09
    ld hl, $5cae
    call Call_000_0061
    call Call_002_44a4
    call Call_002_5d79
    bit 7, a
    jp z, Jump_002_42a7

    call Call_002_4639
    ld a, $05
    ld hl, $4000
    jp Jump_000_0077


Jump_002_42a7:
    bit 0, a
    jr nz, jr_002_42b4

    call Call_000_06f6
    call Call_002_703e
    call Call_002_5ed7

jr_002_42b4:
    call Call_002_5f4e
    call Call_002_4878
    call Call_002_4c66
    call Call_002_4c4a
    call Call_002_552f
    call Call_002_4e9e
    call Call_002_5117
    call Call_002_433d
    call Call_002_4dc6
    call Call_002_445e
    call Call_002_4e19
    and a
    jr z, jr_002_432b

    bit 6, a
    jr z, jr_002_42e6

    ld a, $04
    ld hl, $42e3
    call Call_000_0061
    jr jr_002_4304

jr_002_42e6:
    bit 4, a
    jr z, jr_002_4304

    ld a, [$c538]
    cp $0f
    jr nz, jr_002_4304

    ld a, [$c227]
    inc a
    ld [$c227], a
    xor a
    ld [$c538], a
    ld a, $04
    ld hl, $4004
    call Call_000_0061

jr_002_4304:
    call Call_002_45f5
    cp $04
    jr z, jr_002_430d

    jr jr_002_431c

jr_002_430d:
    ld a, [$c200]
    inc a
    ld [$c557], a
    ld a, $06
    ld hl, $4000
    call Call_000_0061

jr_002_431c:
    ld a, [$c200]
    inc a
    ld [$c200], a
    ld a, $03
    ld hl, $4000
    jp Jump_000_0077


jr_002_432b:
    jp Jump_002_4274


Call_002_432e:
    ld b, $28
    ld a, $e0
    ld hl, $c100

jr_002_4335:
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    dec b
    jr nz, jr_002_4335

    ret


Call_002_433d:
    ret


    ld a, [$c225]
    cp $40
    jp nc, Jump_002_43b3

    ld a, [$c53a]
    ld c, a
    ld a, [$c539]
    inc a
    ld [$c539], a
    ld b, a
    ld a, [$c53b]
    cp b
    jr nz, jr_002_4373

    xor a
    ld [$c539], a
    call Call_000_063f
    and $3f
    add $3c
    ld [$c53b], a
    ld a, [$c53a]
    inc a
    cp $05
    jr c, jr_002_436f

    xor a

jr_002_436f:
    ld c, a
    ld [$c53a], a

jr_002_4373:
    xor a
    sub $16
    ld [$c164], a
    add $0c
    ld [$c16c], a
    ld [$c174], a
    ld a, $94
    ld [$c166], a
    ld [$c16e], a
    ld [$c176], a
    ld a, $00
    ld [$c167], a
    ld [$c16f], a
    ld [$c177], a
    ld a, c
    sla a
    sla a
    ld b, a
    sla a
    sla a
    sub b
    add $30
    ld [$c16d], a
    add $08
    ld [$c175], a
    sub $04
    ld [$c165], a
    jr jr_002_43b5

Jump_002_43b3:
    ld a, $e0

jr_002_43b5:
    ld a, [$c538]
    bit 0, a
    jr z, jr_002_43d1

    xor a
    sub $10
    ld [$c120], a
    ld a, $33
    ld [$c121], a
    ld a, $98
    ld [$c122], a
    ld a, $00
    ld [$c123], a

jr_002_43d1:
    ld a, [$c538]
    bit 1, a
    jr z, jr_002_43ed

    xor a
    sub $10
    ld [$c124], a
    ld a, $3f
    ld [$c125], a
    ld a, $98
    ld [$c126], a
    ld a, $00
    ld [$c127], a

jr_002_43ed:
    ld a, [$c538]
    bit 2, a
    jr z, jr_002_4409

    xor a
    sub $10
    ld [$c128], a
    ld a, $4b
    ld [$c129], a
    ld a, $98
    ld [$c12a], a
    ld a, $00
    ld [$c12b], a

jr_002_4409:
    ld a, [$c538]
    bit 3, a
    jr z, jr_002_4425

    xor a
    sub $10
    ld [$c12c], a
    ld a, $57
    ld [$c12d], a
    ld a, $98
    ld [$c12e], a
    ld a, $00
    ld [$c12f], a

jr_002_4425:
    ld a, [$c538]
    bit 4, a
    jr z, jr_002_4441

    xor a
    sub $10
    ld [$c19c], a
    ld a, $63
    ld [$c19d], a
    ld a, $98
    ld [$c19e], a
    ld a, $00
    ld [$c19f], a

jr_002_4441:
    ret


    ld a, [$c23a]
    and a
    jr z, jr_002_445d

    bit 3, a
    jr z, jr_002_445d

    ld a, [$c23b]
    dec a
    ld [$c23b], a
    jr nz, jr_002_445d

    ld a, [$c23a]
    and $f7
    ld [$c23a], a

jr_002_445d:
    ret


Call_002_445e:
    ld a, [$c22e]
    and a
    jr z, jr_002_44a3

    bit 3, a
    jr nz, jr_002_446e

    bit 1, a
    jr nz, jr_002_446e

    jr jr_002_44a3

jr_002_446e:
    ld a, [$c22f]
    dec a
    ld [$c22f], a
    jr nz, jr_002_44a3

    ld a, [$c230]
    and a
    jr z, jr_002_4488

    dec a
    ld [$c230], a
    ld a, $ff
    ld [$c22f], a
    jr jr_002_44a3

jr_002_4488:
    ld a, [$c22e]
    bit 1, a
    jr z, jr_002_449b

    ld a, [$c543]
    or $02
    ld [$c543], a
    xor a
    ld [$c544], a

jr_002_449b:
    ld a, [$c22e]
    and $f5
    ld [$c22e], a

jr_002_44a3:
    ret


Call_002_44a4:
    ld a, [$c590]
    inc a
    ld [$c590], a
    cp $1e
    jr nz, jr_002_44bf

    xor a
    ld [$c590], a
    ld hl, $c588
    call Call_002_44c0
    ld hl, $c58c
    call Call_002_44c0

jr_002_44bf:
    ret


Call_002_44c0:
    ld a, [hl]
    inc a
    cp $0a
    jr nz, jr_002_44dd

    inc hl
    ld a, [hl]
    inc a
    cp $06
    jr nz, jr_002_44db

    inc hl
    ld a, [hl]
    inc a
    cp $0a
    jr nz, jr_002_44d9

    inc hl
    ld a, [hl]
    inc a
    ld [hl-], a
    xor a

jr_002_44d9:
    ld [hl-], a
    xor a

jr_002_44db:
    ld [hl-], a
    xor a

jr_002_44dd:
    ld [hl], a
    ret


Call_002_44df:
    ld a, $10
    ld [$cf0b], a
    ld c, a
    ld a, $10
    sub c
    ld [$c24a], a
    ld b, $28
    ld a, [$c24a]
    ld c, a
    ld hl, $c100

Jump_002_44f4:
    ld a, [hl]
    add c
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jp nz, Jump_002_44f4

    call Call_000_0616
    call Call_000_0389
    ld b, $28
    ld a, [$c24a]
    ld c, a
    ld hl, $c100

Jump_002_450d:
    ld a, [hl]
    sub c
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jp nz, Jump_002_450d

    ret


Call_002_4518:
    ld a, [$d3d0]
    and a
    jr z, jr_002_4537

    ld a, $09
    ld [$dd00], a
    ld a, $e0
    ld [$c110], a
    ld [$c114], a
    ld [$c118], a
    ld [$c11c], a
    ld [$c138], a
    jp Jump_002_45d2


jr_002_4537:
    call Call_002_45f5
    ld b, a
    sla a
    add b
    ld hl, $c56e
    call Call_000_07e6
    ld a, [$c58c]
    ld [hl+], a
    ld a, [$c58d]
    ld [hl+], a
    ld a, [$c58e]
    ld [hl+], a
    ld a, [$c204]
    bit 0, a
    jr z, jr_002_455b

    ld a, $05
    jr jr_002_455c

jr_002_455b:
    xor a

jr_002_455c:
    ld [$c583], a
    ld a, [$c204]
    srl a
    ld e, a
    call Call_002_4bc8
    ld a, b
    ld [$c584], a
    ld a, c
    ld [$c585], a
    ld a, [$c205]
    ld e, a
    call Call_002_4bc8
    ld a, b
    ld [$c586], a
    ld a, c
    ld [$c587], a
    call Call_002_45f5
    sla a
    sla a
    ld hl, $c55a
    call Call_000_07e6
    ld a, [$c536]
    bit 0, a
    jr z, jr_002_4597

    ld a, $05
    jr jr_002_4598

jr_002_4597:
    xor a

jr_002_4598:
    ld [hl+], a
    ld a, [$c536]
    srl a
    ld e, a
    call Call_002_4bc8
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld a, [$c537]
    ld e, a
    call Call_002_4bc8
    ld [hl], b
    ld a, $09
    ld [$dd00], a
    ld a, [$c249]
    and a
    jr z, jr_002_45d2

jr_002_45b9:
    call Call_002_44df
    call Call_002_6fc7
    ld a, [$c249]
    and a
    jr z, jr_002_45cb

    dec a
    ld [$c249], a
    jr jr_002_45b9

jr_002_45cb:
    ld a, $01
    ld [$c264], a
    jr jr_002_45d7

Jump_002_45d2:
jr_002_45d2:
    ld a, $50
    ld [$c264], a

jr_002_45d7:
    call Call_002_44df
    call Call_002_6fc7
    ld a, [$c264]
    dec a
    ld [$c264], a
    jr nz, jr_002_45d7

    ld b, $28
    ld hl, $c100
    ld a, $e0

jr_002_45ed:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_002_45ed

    ret


Call_002_45f5:
    ld a, [$c200]

jr_002_45f8:
    cp $05
    jr c, jr_002_4600

    sub $05
    jr jr_002_45f8

jr_002_4600:
    ret


Call_002_4601:
    xor a
    ld [$c228], a
    ld [$c229], a
    ld [$c23e], a
    ld [$c240], a
    ld [$c231], a
    ld hl, $79ba
    ld b, $08
    ld de, $c100

jr_002_4619:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4619

    ret


Call_002_4620:
    xor a
    ld [$c234], a
    ld [$c235], a
    ld [$c23c], a
    ld hl, $79ba
    ld b, $08
    ld de, $c108

jr_002_4632:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4632

    ret


Call_002_4639:
    ld b, $28
    ld hl, $c100
    ld a, $e0

jr_002_4640:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_002_4640

    call Call_000_0616
    call Call_000_0389
    xor a
    ldh [$bc], a
    ld hl, $c494
    ld de, $7aa0
    ld b, $40

jr_002_4658:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_4658

    ld a, $01
    ldh [$bc], a
    call Call_000_0389
    xor a
    ldh [$bc], a
    ld hl, $c494
    ld b, $40

jr_002_466d:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_466d

    ld a, $02
    ldh [$bc], a
    call Call_000_0389
    xor a
    ldh [$bc], a
    ld hl, $c494
    ld b, $40

jr_002_4682:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_4682

    ld a, $03
    ldh [$bc], a
    call Call_000_0389
    xor a
    ldh [$bc], a
    ld hl, $c494
    ld b, $40

jr_002_4697:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_4697

    ld a, $04
    ldh [$bc], a
    call Call_000_0389
    xor a
    ldh [$bc], a
    ld hl, $c494
    ld b, $20

jr_002_46ac:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_46ac

    ld a, $05
    ldh [$bc], a
    call Call_000_0389
    ld hl, $c100
    ld a, $28
    ld b, $09

jr_002_46c0:
    ld [hl], $40
    inc hl
    ld [hl+], a
    add $08
    ld [hl], $ac
    inc hl
    ld [hl], $04
    inc hl
    dec b
    jr nz, jr_002_46c0

    ld a, $0c
    ld [$dd00], a
    xor a
    ld [$c264], a

jr_002_46d8:
    call Call_000_0616
    call Call_000_0389
    ld a, [$c264]
    ld b, a
    and $07
    jr nz, jr_002_4744

    ld a, b
    srl a
    srl a
    srl a
    cp $0a
    jr c, jr_002_46f3

    ld a, $0a

jr_002_46f3:
    call Call_000_0775

    db $44, $47, $0c, $47, $13, $47, $1a, $47, $21, $47, $44, $47, $28, $47, $2f, $47
    db $36, $47, $3d, $47, $44, $47

    ld a, $ae
    ld [$c102], a
    jr jr_002_4744

    ld a, $b0
    ld [$c106], a
    jr jr_002_4744

    ld a, $b2
    ld [$c10a], a
    jr jr_002_4744

    ld a, $b4
    ld [$c10e], a
    jr jr_002_4744

    ld a, $b6
    ld [$c116], a
    jr jr_002_4744

    ld a, $b8
    ld [$c11a], a
    jr jr_002_4744

    ld a, $b4
    ld [$c11e], a
    jr jr_002_4744

    ld a, $ba
    ld [$c122], a
    jr jr_002_4744

jr_002_4744:
    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $a0
    jr nz, jr_002_46d8

    ld b, $28
    ld hl, $c100
    ld a, $e0

jr_002_4756:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_002_4756

    call Call_000_0616
    call Call_000_0389
    ret


    ld a, [$c234]
    and $03
    call Call_000_0775
    ld [hl], h
    ld b, a
    ld a, [hl]
    ld b, a
    adc b
    ld b, a
    sub d
    ld b, a
    ld a, $01
    call Call_002_7110
    call Call_002_760f
    jr jr_002_479c

    ld a, $01
    call Call_002_7110
    call Call_002_74b7
    jr jr_002_479c

    ld a, $01
    call Call_002_7110
    call Call_002_71fe
    jr jr_002_479c

    ld a, $01
    call Call_002_7110
    call Call_002_735c
    jr jr_002_479c

jr_002_479c:
    ret


    ret


    ld a, [$c108]
    ld b, a
    ld a, [$c532]
    cp b
    jr z, jr_002_47c7

    sub b
    jr nc, jr_002_47b8

    ld a, [$c234]
    or $03
    ld [$c234], a
    ld de, $7a6c
    jr jr_002_4801

jr_002_47b8:
    ld a, [$c234]
    or $02
    and $fe
    ld [$c234], a
    ld de, $7a6c
    jr jr_002_4801

jr_002_47c7:
    ld a, [$c109]
    ld b, a
    ld a, [$c533]
    cp b
    jr nz, jr_002_47e4

    ld a, [$c234]
    and $03
    cp $02
    jr nc, jr_002_47df

    ld de, $7a68
    jr jr_002_4816

jr_002_47df:
    ld de, $7a6c
    jr jr_002_4816

jr_002_47e4:
    sub b
    jr nc, jr_002_47f4

    ld a, [$c234]
    and $fc
    ld [$c234], a
    ld de, $7a68
    jr jr_002_4801

jr_002_47f4:
    ld a, [$c234]
    or $01
    and $fd
    ld [$c234], a
    ld de, $7a68

jr_002_4801:
    ld a, [$c108]
    ld [$c532], a
    ld a, [$c109]
    ld [$c533], a
    ld a, [$c235]
    inc a
    and $0f
    ld [$c235], a

jr_002_4816:
    call Call_002_481a
    ret


Call_002_481a:
    ld a, [$c23a]
    bit 3, a
    jr z, jr_002_4830

    ld a, [$c10a]
    and a
    jr z, jr_002_4830

    xor a
    ld [$c10a], a
    ld [$c10e], a
    jr jr_002_4877

jr_002_4830:
    ld a, [$c235]
    srl a
    srl a
    call Call_000_07ed
    ld a, [$c234]
    and $03
    cp $01
    jr z, jr_002_485e

    ld a, [de]
    ld [$c10a], a
    add $02
    ld [$c10e], a
    ld a, [$c10b]
    and $df
    ld [$c10b], a
    ld a, [$c10f]
    and $df
    ld [$c10f], a
    jr jr_002_4877

jr_002_485e:
    ld a, [de]
    ld [$c10e], a
    add $02
    ld [$c10a], a
    ld a, [$c10b]
    or $20
    ld [$c10b], a
    ld a, [$c10f]
    or $20
    ld [$c10f], a

jr_002_4877:
    ret


Call_002_4878:
    xor a
    ld [$c264], a

Jump_002_487c:
    xor a
    ld [$c531], a
    ld hl, $c255
    ld a, [$c264]
    call Call_000_07e6
    bit 7, [hl]
    jp z, Jump_002_4ac7

    ld a, [hl]
    and $0f
    cp $08
    jp nz, Jump_002_48d7

    ld de, $c52d
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    srl a
    srl a
    srl a
    and a
    jr nz, jr_002_48ab

    ld b, $ec
    jr jr_002_48bd

jr_002_48ab:
    cp $01
    jr nz, jr_002_48b3

    ld b, $f0
    jr jr_002_48bd

jr_002_48b3:
    cp $02
    jr nz, jr_002_48bb

    ld b, $f4
    jr jr_002_48bd

jr_002_48bb:
    ld b, $f8

jr_002_48bd:
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    inc de
    inc de
    ld a, b
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    add $02
    ld [de], a

Jump_002_48d7:
    ld hl, $c25a
    ld a, [$c264]
    sla a
    call Call_000_07e6
    ld a, [hl]
    inc a
    ld [hl+], a
    jr nz, jr_002_48ea

    ld a, [hl]
    inc a
    ld [hl], a

jr_002_48ea:
    ld a, [hl-]
    cp $01
    jr nz, jr_002_4960

    ld a, [hl]
    cp $14
    jr c, jr_002_4960

    cp $4b
    jr z, jr_002_493b

    and $07
    cp $04
    jr c, jr_002_4922

    ld a, [$c264]
    sla a
    sla a
    sla a
    ld hl, $c17c
    call Call_000_07e6
    inc hl
    inc hl
    ld a, [$c264]
    ld de, $c53d
    call Call_000_07ed
    ld a, [de]
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    add $02
    ld [hl], a
    jr jr_002_4960

jr_002_4922:
    ld a, [$c264]
    sla a
    sla a
    sla a
    ld hl, $c17c
    call Call_000_07e6
    xor a
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    jr jr_002_4960

jr_002_493b:
    ld a, [$c264]
    ld hl, $c255
    call Call_000_07e6
    xor a
    ld [hl], a
    ld a, [$c264]
    sla a
    sla a
    sla a
    ld hl, $c17c
    call Call_000_07e6
    ld [hl], $e0
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], $e0
    jp Jump_002_4ad3


jr_002_4960:
    ld a, [$c228]
    bit 7, a
    jp nz, Jump_002_4ab5

    ld de, $c100
    jr jr_002_4978

Jump_002_496d:
    ld a, [$c234]
    bit 7, a
    jp nz, Jump_002_4ab5

    ld de, $c108

jr_002_4978:
    ld a, d
    ld [$c52f], a
    ld a, e
    ld [$c530], a
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld a, [$c52f]
    ld h, a
    ld a, [$c530]
    ld l, a
    ld a, [hl]
    sub c
    cp $0a
    jr c, jr_002_49a9

    cp $f7
    jr nc, jr_002_49a9

    jp Jump_002_4ab5


jr_002_49a9:
    inc hl
    ld a, [hl]
    sub b
    cp $0a
    jr c, jr_002_49b7

    cp $f7
    jr nc, jr_002_49b7

    jp Jump_002_4ab5


jr_002_49b7:
    ld a, $e0
    ld [de], a
    dec de
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    ld [de], a
    inc de
    ld [de], a
    ld a, [$c531]
    and a
    jr nz, jr_002_49cc

    call Call_002_4d59

jr_002_49cc:
    ld hl, $c255
    ld a, [$c264]
    call Call_000_07e6
    ld a, [hl]
    and $0f
    ld c, a
    xor a
    ld [hl], a
    ld a, c
    call Call_000_0775

    ld h, $4a
    scf
    ld c, d

    db $49, $4a, $5b, $4a, $7d, $4a

    add hl, bc
    ld c, d
    sub c
    ld c, d

    db $6d, $4a, $ff, $49

    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c

    ld a, $ff
    ld [$c52c], a
    ld a, $ff
    ld [$c225], a
    ld a, [$c22e]
    or $04
    ld [$c22e], a
    ld hl, $c265
    ld d, $00
    xor a

jr_002_4a17:
    ld [hl], $91
    inc hl
    ld [hl], $00
    inc hl
    inc d
    ld a, d
    cp $03
    jr nz, jr_002_4a17

    jp Jump_002_4ab5


    ld a, [$c531]
    and a
    jr nz, jr_002_4a34

    ld a, [$c242]
    and $8f
    ld [$c242], a

jr_002_4a34:
    jp Jump_002_4ab5


    ld a, [$c531]
    and a
    jr nz, jr_002_4a47

    ld a, [$c242]
    and $8f
    or $10
    ld [$c242], a

jr_002_4a47:
    jr jr_002_4ab5

    ld a, [$c531]
    and a
    jr nz, jr_002_4a59

    ld a, [$c242]
    and $8f
    or $20
    ld [$c242], a

jr_002_4a59:
    jr jr_002_4ab5

    ld a, [$c531]
    and a
    jr nz, jr_002_4a6b

    ld a, [$c242]
    and $0f
    or $30
    ld [$c242], a

jr_002_4a6b:
    jr jr_002_4ab5

    ld a, [$c531]
    and a
    jr nz, jr_002_4a7b

    ld a, [$c22e]
    or $01
    ld [$c22e], a

jr_002_4a7b:
    jr jr_002_4ab5

    ld a, [$c22e]
    or $02
    ld [$c22e], a
    ld a, $ff
    ld [$c22f], a
    ld a, $01
    ld [$c230], a
    jr jr_002_4ab5

    ld a, [$c531]
    and a
    jr nz, jr_002_4aa6

    ld a, [$c22e]
    or $08
    ld [$c22e], a
    ld a, $ff
    ld [$c22f], a
    jr jr_002_4ab3

jr_002_4aa6:
    ld a, [$c23a]
    or $08
    ld [$c23a], a
    ld a, $ff
    ld [$c23b], a

jr_002_4ab3:
    jr jr_002_4ab5

Jump_002_4ab5:
jr_002_4ab5:
    ld a, [$c531]
    and a
    jr nz, jr_002_4ac7

    ld a, $01
    ld [$c531], a
    ld a, [$c202]
    and a
    jp nz, Jump_002_496d

Jump_002_4ac7:
jr_002_4ac7:
    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $05
    jp nz, Jump_002_487c

Jump_002_4ad3:
    ret


Call_002_4ad4:
    ld a, [$c203]
    cp $01
    jp nz, Jump_002_4ba2

    ld [$dd02], a
    call Call_000_0389
    call Call_000_03d7
    call Call_000_0786
    ld a, [$c204]
    bit 0, a
    jr z, jr_002_4af6

    ld hl, $c51b
    ld [hl], $3b
    jr jr_002_4afb

jr_002_4af6:
    ld hl, $c51b
    ld [hl], $36

jr_002_4afb:
    inc hl
    ld [hl], $36
    ld a, [$c204]
    srl a
    ld e, a
    call Call_002_4bc8
    ld hl, $c519
    ld a, $36
    add c
    ld [hl+], a
    ld a, $36
    add b
    ld [hl], a
    ld a, [$c205]
    ld e, a
    call Call_002_4bc8
    ld hl, $c516
    ld a, $36
    add d
    ld [hl+], a
    ld a, $36
    add c
    ld [hl+], a
    ld a, $36
    add b
    ld [hl+], a
    ld hl, $c514
    ld de, $9d07
    xor a
    call Call_000_080b
    ld a, [$c227]
    ld d, $00

jr_002_4b37:
    cp $0a
    jr c, jr_002_4b40

    inc d
    sub $0a
    jr jr_002_4b37

jr_002_4b40:
    ld hl, $9d4d
    ld b, $45
    add b
    ld b, a
    ld [hl], a
    ld a, $20
    call Call_000_07e6
    ld a, $0a
    add b
    ld [hl-], a
    ld hl, $9d4c
    ld a, $45
    add d
    ld d, a
    ld [hl], a
    ld a, $20
    call Call_000_07e6
    ld a, $0a
    add d
    ld [hl-], a
    ld b, $00
    ld a, [$c200]
    inc a
    cp $64
    jr c, jr_002_4b7a

    ld hl, $9daa
    ld a, $37
    ld [hl+], a
    ld a, $36
    ld [hl+], a
    ld a, $36
    ld [hl+], a
    jr jr_002_4b8f

jr_002_4b7a:
    cp $0a
    jr c, jr_002_4b83

    sub $0a
    inc b
    jr jr_002_4b7a

jr_002_4b83:
    ld c, a
    ld hl, $9daa
    ld a, $36
    add b
    ld [hl+], a
    ld a, $36
    add c
    ld [hl+], a

jr_002_4b8f:
    ld a, $02
    ld [$c203], a
    ld a, $07
    ldh [rWX], a
    xor a
    ldh [rWY], a
    ld a, $e5
    call Call_000_0493
    jr jr_002_4bc7

Jump_002_4ba2:
    call Call_000_06f6
    ldh a, [$8d]
    bit 3, a
    jr nz, jr_002_4bad

    jr jr_002_4bc7

jr_002_4bad:
    xor a
    ld [$c203], a
    call Call_000_0389
    call Call_000_03d7
    call Call_000_0786
    ld a, $a6
    ldh [rWX], a
    ld a, $8f
    ldh [rWY], a
    ld a, $e7
    call Call_000_0493

jr_002_4bc7:
    ret


Call_002_4bc8:
    ld b, $00
    ld c, $00
    ld d, $00
    bit 0, e
    jr z, jr_002_4bd3

    inc b

jr_002_4bd3:
    bit 1, e
    jr z, jr_002_4bd9

    inc b
    inc b

jr_002_4bd9:
    bit 2, e
    jr z, jr_002_4be1

    inc b
    inc b
    inc b
    inc b

jr_002_4be1:
    bit 3, e
    jr z, jr_002_4bf1

    ld a, b
    add $08
    cp $0a
    jr c, jr_002_4bf0

    sub $0a
    ld c, $01

jr_002_4bf0:
    ld b, a

jr_002_4bf1:
    bit 4, e
    jr z, jr_002_4c01

    ld a, b
    add $06
    cp $0a
    jr c, jr_002_4bff

    sub $0a
    inc c

jr_002_4bff:
    ld b, a
    inc c

jr_002_4c01:
    bit 5, e
    jr z, jr_002_4c14

    ld a, b
    add $02
    cp $0a
    jr c, jr_002_4c0f

    sub $0a
    inc c

jr_002_4c0f:
    ld b, a
    ld a, c
    add $03
    ld c, a

jr_002_4c14:
    bit 6, e
    jr z, jr_002_4c2e

    ld a, b
    add $04
    cp $0a
    jr c, jr_002_4c22

    sub $0a
    inc c

jr_002_4c22:
    ld b, a
    ld a, c
    add $06
    cp $0a
    jr c, jr_002_4c2d

    sub $0a
    inc d

jr_002_4c2d:
    ld c, a

jr_002_4c2e:
    bit 7, e
    jr z, jr_002_4c49

    ld a, b
    add $08
    cp $0a
    jr c, jr_002_4c3c

    sub $0a
    inc c

jr_002_4c3c:
    ld b, a
    ld a, c
    add $02
    cp $0a
    jr c, jr_002_4c47

    sub $0a
    inc d

jr_002_4c47:
    ld c, a
    inc d

jr_002_4c49:
    ret


Call_002_4c4a:
    ld a, [$c249]
    and a
    jr z, jr_002_4c65

    dec a
    ld [$c249], a
    and a
    jr nz, jr_002_4c65

    ld a, $e0
    ld [$c110], a
    ld [$c114], a
    ld [$c118], a
    ld [$c11c], a

jr_002_4c65:
    ret


Call_002_4c66:
    ld a, [$c247]
    cp $07
    jr nz, jr_002_4c7c

    ld a, [$c100]
    ld c, a
    ld a, [$c101]
    ld b, a
    call Call_002_4d59
    xor a
    ld [$c247], a

jr_002_4c7c:
    ld a, [$c246]
    and a
    jr z, jr_002_4c86

    dec a
    ld [$c246], a

jr_002_4c86:
    ret


Call_002_4c87:
    call Call_002_4caf
    ld a, $15
    ld [$dd01], a
    ld a, [$c248]
    inc a
    ld [$c248], a
    ld a, [$c246]
    and a
    jr nz, jr_002_4ca2

    xor a
    ld [$c247], a
    jr jr_002_4ca9

jr_002_4ca2:
    ld a, [$c247]
    inc a
    ld [$c247], a

jr_002_4ca9:
    ld a, $28
    ld [$c246], a
    ret


Call_002_4caf:
    ld d, $01
    jp Jump_002_4d98


Call_002_4cb4:
    ld a, $5a
    ld [$c112], a
    ld a, $56
    ld [$c11a], a
    ld a, $58
    ld [$c11e], a
    ld a, c
    ld [$c118], a
    ld [$c11c], a
    ld a, b
    inc a
    add $10
    ld [$c119], a
    add $08
    ld [$c11d], a
    ld a, $c8
    ld d, a
    jp Jump_002_4d78


Call_002_4cdc:
    ld a, $62
    ld [$c112], a
    ld a, $54
    ld [$c11a], a
    ld a, c
    ld [$c118], a
    ld a, b
    inc a
    add $10
    ld [$c119], a
    ld a, $d0
    ld [$c11c], a
    ld a, $a0
    ld d, a
    jp Jump_002_4d78


Call_002_4cfc:
    ld a, $60
    ld [$c112], a
    ld a, $54
    ld [$c11a], a
    ld a, c
    ld [$c118], a
    ld a, b
    inc a
    add $10
    ld [$c119], a
    ld a, $d0
    ld [$c11c], a
    ld a, $78
    ld d, a
    jr jr_002_4d78

Call_002_4d1b:
    ld a, $5e
    ld [$c112], a
    ld a, $54
    ld [$c11a], a
    ld a, c
    ld [$c118], a
    ld a, b
    inc a
    add $10
    ld [$c119], a
    ld a, $d0
    ld [$c11c], a
    ld a, $50
    ld d, a
    jr jr_002_4d78

Call_002_4d3a:
    ld a, $5c
    ld [$c112], a
    ld a, $54
    ld [$c11a], a
    ld a, c
    ld [$c118], a
    ld a, b
    inc a
    add $10
    ld [$c119], a
    ld a, $d0
    ld [$c11c], a
    ld a, $28
    ld d, a
    jr jr_002_4d78

Call_002_4d59:
    ld a, $5a
    ld [$c112], a
    ld a, $54
    ld [$c11a], a
    ld a, c
    ld [$c118], a
    ld a, b
    inc a
    add $10
    ld [$c119], a
    ld a, $d0
    ld [$c11c], a
    ld a, $14
    ld d, a
    jr jr_002_4d78

Jump_002_4d78:
jr_002_4d78:
    ld a, $13
    ld [$dd01], a
    ld a, c
    ld [$c110], a
    ld [$c114], a
    ld a, b
    inc a
    ld [$c111], a
    add $08
    ld [$c115], a
    ld a, $52
    ld [$c116], a
    ld a, $50
    ld [$c249], a

Jump_002_4d98:
    ld c, d
    ld a, [$c204]
    add d
    cp $c8
    jr c, jr_002_4dac

    sub $c8
    ld d, a
    ld a, [$c205]
    inc a
    ld [$c205], a
    ld a, d

jr_002_4dac:
    ld [$c204], a
    ld a, [$c536]
    add c
    cp $c8
    jr c, jr_002_4dc2

    sub $c8
    ld c, a
    ld a, [$c537]
    inc a
    ld [$c537], a
    ld a, c

jr_002_4dc2:
    ld [$c536], a
    ret


Call_002_4dc6:
    xor a
    ld [$c264], a

jr_002_4dca:
    call Call_002_5513
    ld a, [hl]
    ld d, h
    ld e, l
    bit 7, a
    jr z, jr_002_4e0d

    call Call_002_551f
    inc de
    ld a, [de]
    and $1f
    srl a
    srl a
    srl a
    srl a
    sla a
    sla a
    add $9c
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
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    jr nz, jr_002_4e0d

    dec de
    xor a
    ld [de], a
    ld a, $e0
    ld [hl], $00
    dec hl
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld [hl], $00
    dec hl
    ld [hl-], a
    ld [hl-], a

jr_002_4e0d:
    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $06
    jr nz, jr_002_4dca

    ret


Call_002_4e19:
    ld a, [$c538]
    bit 7, a
    jr nz, jr_002_4e29

    ld a, [$c225]
    bit 4, a
    jr z, jr_002_4e83

    jr jr_002_4e38

jr_002_4e29:
    call Call_002_4518
    ld a, [$c538]
    res 7, a
    ld [$c538], a
    ld a, $10
    jr jr_002_4e9d

jr_002_4e38:
    ld b, $00

jr_002_4e3a:
    ld hl, $c265
    ld a, b
    sla a
    call Call_000_07e6
    bit 0, [hl]
    jr nz, jr_002_4e83

    inc b
    ld a, b
    cp $03
    jr nz, jr_002_4e3a

    ld a, [$c52c]
    and a
    jr z, jr_002_4e65

    call Call_002_45f5
    ld hl, $c57d
    call Call_000_07e6
    ld [hl], $01
    call Call_002_4518
    ld a, $40
    jr jr_002_4e9d

jr_002_4e65:
    call Call_002_45f5
    ld hl, $c57d
    call Call_000_07e6
    ld a, [$c200]

jr_002_4e71:
    cp $06
    jr c, jr_002_4e79

    sub $06
    jr jr_002_4e71

jr_002_4e79:
    add $07
    ld [hl], a
    call Call_002_4518
    ld a, $80
    jr jr_002_4e9d

jr_002_4e83:
    ld a, [$c248]
    cp $18
    jr nz, jr_002_4e9c

    call Call_002_45f5
    ld hl, $c57d
    call Call_000_07e6
    ld [hl], $00
    call Call_002_4518
    ld a, $20
    jr jr_002_4e9d

jr_002_4e9c:
    xor a

jr_002_4e9d:
    ret


Call_002_4e9e:
    ld a, [$d3d0]
    and a
    jp nz, Jump_002_4fc3

    ld a, [$c225]
    bit 7, a
    jp nz, Jump_002_500c

    bit 6, a
    jp nz, Jump_002_4fc3

    bit 5, a
    jp nz, Jump_002_4f0b

    ld a, [$c540]
    inc a
    ld [$c540], a
    jr nz, jr_002_4ec7

    ld a, [$c541]
    inc a
    ld [$c541], a

jr_002_4ec7:
    ld a, [$c541]
    cp $03
    jr nc, jr_002_4ed0

    jr jr_002_4f08

jr_002_4ed0:
    xor a
    ld [$c541], a
    ld a, $40
    ld [$c130], a
    ld a, $40
    ld [$c131], a
    ld a, $fc
    ld [$c132], a
    ld a, $07
    ld [$c133], a
    ld a, $40
    ld [$c134], a
    ld a, $48
    ld [$c135], a
    ld a, $fe
    ld [$c136], a
    ld a, $07
    ld [$c137], a
    xor a
    ld [$c226], a
    ld a, [$c225]
    or $20
    ld [$c225], a

jr_002_4f08:
    jp Jump_002_500c


Jump_002_4f0b:
    ld b, $40
    ld c, $40
    ld a, [$c100]
    sub c
    cp $0a
    jr c, jr_002_4f1e

    cp $f7
    jr nc, jr_002_4f1e

    jp Jump_002_4fc1


jr_002_4f1e:
    ld a, [$c101]
    sub b
    cp $0a
    jr c, jr_002_4f2d

    cp $f7
    jr nc, jr_002_4f2d

    jp Jump_002_4fc1


jr_002_4f2d:
    ld b, $40
    ld c, $40
    ld a, [$c200]

jr_002_4f34:
    cp $0a
    jr c, jr_002_4f3c

    sub $0a
    jr jr_002_4f34

jr_002_4f3c:
    call Call_000_0775

    ld d, e
    ld c, a
    ld d, e
    ld c, a
    ld d, e
    ld c, a
    ld e, b
    ld c, a

    db $58, $4f

    ld e, l
    ld c, a

    db $5d, $4f, $62, $4f

    ld h, a
    ld c, a
    ld l, h
    ld c, a
    call Call_002_4d59
    jr jr_002_4f71

    call Call_002_4d3a
    jr jr_002_4f71

    call Call_002_4d1b
    jr jr_002_4f71

    call Call_002_4cfc
    jr jr_002_4f71

    call Call_002_4cdc
    jr jr_002_4f71

    call Call_002_4cb4
    jr jr_002_4f71

jr_002_4f71:
    ld a, [$c225]
    bit 4, a
    jr z, jr_002_4f80

    ld a, $e0
    ld [$c130], a
    ld [$c134], a

jr_002_4f80:
    ld a, $e8
    ld [$c132], a
    add $02
    ld [$c136], a
    ld a, $07
    ld [$c133], a
    ld [$c137], a
    ld a, [$c225]
    or $40
    ld [$c225], a
    ld hl, $c16c
    ld a, $e0
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld a, $03
    ld [$dd00], a
    ld a, $09
    ld hl, $4c70
    call Call_000_0061
    ld a, [$c225]
    or $40
    ld [$c225], a

Jump_002_4fc1:
    jr jr_002_500c

Jump_002_4fc3:
    call Call_002_5453
    ld a, [$d52d]
    and a
    jr nz, jr_002_5009

    ld a, $04
    ld [$dd00], a
    xor a
    ld [$d531], a
    ld [$d532], a
    ld hl, $c16c
    ld a, $e0
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld a, [$c53a]
    ld b, a
    ld a, $01
    inc b

jr_002_4ff1:
    dec b
    jr z, jr_002_4ff8

    sla a
    jr jr_002_4ff1

jr_002_4ff8:
    ld b, a
    ld a, [$c225]
    or $80
    ld [$c225], a
    ld a, $09
    ld hl, $5fdc
    call Call_000_0061

jr_002_5009:
    jp Jump_002_5116


Jump_002_500c:
jr_002_500c:
    ld a, [$c225]
    bit 4, a
    jp nz, Jump_002_5116

    ld a, [$c226]
    cp $60
    jp z, Jump_002_5023

    inc a
    ld [$c226], a
    jp Jump_002_5116


Jump_002_5023:
    xor a
    ld [$c264], a

jr_002_5027:
    ld hl, $c265
    ld a, [$c264]
    sla a
    call Call_000_07e6
    ld a, [hl]
    and a
    jr z, jr_002_5044

    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $03
    jr nz, jr_002_5027

    jp Jump_002_5116


jr_002_5044:
    ld a, [$c543]
    or $01
    ld [$c543], a
    ld a, [$c544]
    inc a
    cp $30
    jr z, jr_002_50a2

    ld [$c544], a
    ld hl, $c144
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [$c544]
    and $07
    bit 2, a
    jr nz, jr_002_5089

    ld [hl], $40
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $e8
    inc hl
    ld [hl], $03
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $48
    inc hl
    ld [hl], $ea
    inc hl
    ld [hl], $03
    jp Jump_002_5116


jr_002_5089:
    ld [hl], $40
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $a8
    inc hl
    ld [hl], $03
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $48
    inc hl
    ld [hl], $aa
    inc hl
    ld [hl], $03
    jr jr_002_5116

jr_002_50a2:
    xor a
    ld [$c544], a
    ld a, [$c543]
    and $fe
    ld [$c543], a
    ld [hl], $17
    ld hl, $c144
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld [hl], $40
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $e8
    inc hl
    ld [hl], $03
    inc hl
    ld [hl], $40
    inc hl
    ld [hl], $48
    inc hl
    ld [hl], $ea
    inc hl
    ld [hl], $03
    inc hl
    xor a
    ld [$c226], a
    ld a, [$c225]
    inc a
    ld [$c225], a
    ld hl, $79c2
    ld a, [$c200]
    call Call_000_07e6
    ld a, [hl]
    ld b, a
    ld a, [$c225]
    and $0f
    cp b
    jr nz, jr_002_5116

    ld a, [$c225]
    and $f0
    or $10
    ld [$c225], a
    ld a, [$c225]
    bit 6, a
    jr z, jr_002_5116

    ld a, $00
    ld [$c132], a
    ld [$c136], a
    ld a, $07
    ld [$c133], a
    ld [$c137], a

Jump_002_5116:
jr_002_5116:
    ret


Call_002_5117:
    xor a
    ld [$c264], a

Jump_002_511b:
    call Call_002_5513
    bit 4, [hl]
    jr z, jr_002_5193

    bit 0, [hl]
    jr nz, jr_002_512b

    call Call_002_5362
    jr jr_002_5193

jr_002_512b:
    bit 3, [hl]
    jr nz, jr_002_5193

    bit 7, [hl]
    jr nz, jr_002_5193

    ld a, [$c22e]
    bit 1, a
    jr nz, jr_002_5150

    ld a, [$c542]
    bit 0, a
    jr nz, jr_002_5150

    ld a, [$c543]
    bit 1, a
    jr nz, jr_002_5152

    ld a, $09
    ld hl, $4000
    call Call_000_0061

jr_002_5150:
    jr jr_002_5190

jr_002_5152:
    ld a, [$c544]
    inc a
    cp $30
    jr nz, jr_002_5168

    ld a, [$c543]
    and $fd
    ld [$c543], a
    xor a
    ld [$c544], a
    jr jr_002_5190

jr_002_5168:
    ld [$c544], a
    and $07
    bit 2, a
    jr z, jr_002_5175

    ld a, $a8
    jr jr_002_5176

jr_002_5175:
    xor a

jr_002_5176:
    ld b, $03
    ld hl, $c146

jr_002_517b:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    and a
    jr z, jr_002_5184

    add $02

jr_002_5184:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    and a
    jr z, jr_002_518d

    sub $02

jr_002_518d:
    dec b
    jr nz, jr_002_517b

jr_002_5190:
    call Call_002_5382

jr_002_5193:
    call Call_002_51ab
    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $03
    jp nz, Jump_002_511b

    ld a, $09
    ld hl, $4d66
    call Call_000_0061
    ret


Call_002_51ab:
    ld a, [$c264]
    ld hl, $c144
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    inc hl
    inc hl
    ld a, [hl]
    cp $c0
    jp c, Jump_002_533b

    cp $d8
    jp nc, Jump_002_533b

    dec hl
    dec hl
    ld a, [$c52e]
    and a
    jr z, jr_002_522c

    ld a, [$c264]
    and a
    jr nz, jr_002_51e7

    ld a, [$c52e]
    bit 0, a
    jp z, Jump_002_5361

    xor a
    ld [$c52e], a
    jp Jump_002_5361


jr_002_51e7:
    ld a, [$c264]
    cp $01
    jr nz, jr_002_51fd

    ld a, [$c52e]
    bit 1, a
    jp z, Jump_002_5361

    xor a
    ld [$c52e], a
    jp Jump_002_5361


jr_002_51fd:
    ld a, [$c264]
    cp $02
    jr nz, jr_002_5213

    ld a, [$c52e]
    bit 2, a
    jp z, Jump_002_5361

    xor a
    ld [$c52e], a
    jp Jump_002_5361


jr_002_5213:
    ld a, [$c264]
    cp $03
    jr nz, jr_002_5229

    ld a, [$c52e]
    bit 3, a
    jp z, Jump_002_5361

    xor a
    ld [$c52e], a
    jp Jump_002_5361


jr_002_5229:
    jp Jump_002_5361


jr_002_522c:
    ld a, [$c264]
    and a
    jr nz, jr_002_5239

    ld a, $01
    ld [$c52e], a
    jr jr_002_525a

jr_002_5239:
    cp $01
    jr nz, jr_002_5244

    ld a, $02
    ld [$c52e], a
    jr jr_002_525a

jr_002_5244:
    cp $02
    jr nz, jr_002_524f

    ld a, $04
    ld [$c52e], a
    jr jr_002_525a

jr_002_524f:
    cp $03
    jr nz, jr_002_525a

    ld a, $08
    ld [$c52e], a
    jr jr_002_525a

jr_002_525a:
    ld a, [hl+]
    sub $08
    jr nc, jr_002_5260

    xor a

jr_002_5260:
    srl a
    srl a
    srl a
    call Call_002_5d5f
    ld a, [hl+]
    sub $08
    jr nc, jr_002_526f

    xor a

jr_002_526f:
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    ld de, $c448
    ld a, [$c264]
    ld b, a
    sla a
    sla a
    sla a
    sla a
    add b
    add b
    add b
    call Call_000_07ed
    ld a, $10
    ld [de], a
    inc de
    ld a, $04
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $10
    call Call_000_07e6
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $10
    call Call_000_07e6
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $10
    call Call_000_07e6
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld hl, $c448
    ld a, [$c264]
    ld b, a
    sla a
    sla a
    sla a
    sla a
    add b
    add b
    add b
    call Call_000_07e6
    push hl
    ld hl, $c144
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    sub $08
    jr nc, jr_002_5305

    xor a

jr_002_5305:
    add $10
    ld e, a
    srl e
    srl e
    srl e
    xor a
    sla e
    sla e
    sla e
    sla e
    adc $00
    sla a
    sla e
    adc $00
    ld d, a
    ld a, [hl+]
    sub $08
    jr nc, jr_002_5326

    xor a

jr_002_5326:
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $9800
    add hl, de
    ld d, h
    ld e, l
    pop hl
    call Call_000_0838
    jr jr_002_5361

Jump_002_533b:
    ld a, [$c264]
    and a
    jr nz, jr_002_534b

    ld a, [$c52e]
    and $fe
    ld [$c52e], a
    jr jr_002_5361

jr_002_534b:
    cp $01
    jr nz, jr_002_5359

    ld a, [$c52e]
    and $fd
    ld [$c52e], a
    jr jr_002_5361

jr_002_5359:
    ld a, [$c52e]
    and $fb
    ld [$c52e], a

Jump_002_5361:
jr_002_5361:
    ret


Call_002_5362:
    call Call_002_5513
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_002_551f
    ld [hl], $d0
    inc hl
    ld [hl], $e0
    inc hl
    ld [hl], $00
    inc hl
    inc hl
    ld [hl], $d0
    inc hl
    ld [hl], $e0
    inc hl
    ld [hl], $00
    xor a
    ld [$c52e], a
    ret


Call_002_5382:
    call Call_002_551f
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$c242]
    bit 0, a
    jr z, jr_002_53cc

    ld de, $c138
    ld a, [de]
    sub c
    cp $0e
    jr c, jr_002_539e

    cp $f3
    jr nc, jr_002_539e

    jr jr_002_53cc

jr_002_539e:
    inc de
    ld a, [de]
    sub b
    cp $0e
    jr c, jr_002_53ab

    cp $f3
    jr nc, jr_002_53ab

    jr jr_002_53cc

jr_002_53ab:
    call Call_002_5513
    ld a, $91
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, [$c242]
    and $30
    cp $10
    jr z, jr_002_53c9

    ld a, [$c242]
    and $be
    ld [$c242], a
    ld a, $01
    ld [$c243], a

jr_002_53c9:
    call Call_002_4d59

jr_002_53cc:
    call Call_002_551f
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld de, $c198
    ld a, [de]
    sub c
    cp $10
    jr c, jr_002_53e1

    cp $f1
    jr nc, jr_002_53e1

    jr jr_002_53f9

jr_002_53e1:
    inc de
    ld a, [de]
    sub b
    cp $10
    jr c, jr_002_53ee

    cp $f1
    jr nc, jr_002_53ee

    jr jr_002_53f9

jr_002_53ee:
    call Call_002_5513
    ld a, $91
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_002_4d59

jr_002_53f9:
    xor a
    ld [$c531], a
    ld hl, $c100
    ld a, [$c22e]
    bit 3, a
    jr nz, jr_002_543d

jr_002_5407:
    ld a, [hl+]
    sub c
    cp $06
    jr c, jr_002_5413

    cp $fc
    jr nc, jr_002_5413

    jr jr_002_543d

jr_002_5413:
    ld a, [hl]
    sub b
    cp $08
    jr c, jr_002_541f

    cp $f9
    jr nc, jr_002_541f

    jr jr_002_543d

jr_002_541f:
    ld a, [$c531]
    and a
    jr nz, jr_002_5431

    ld a, [$c228]
    bit 7, a
    jr nz, jr_002_543d

    call Call_002_5e92
    jr jr_002_543d

jr_002_5431:
    ld a, [$c234]
    bit 7, a
    jr nz, jr_002_543d

    call Call_002_5eb8
    jr jr_002_543d

jr_002_543d:
    ld a, [$c23a]
    bit 3, a
    jr nz, jr_002_5452

    ld hl, $c108
    ld a, [$c531]
    inc a
    ld [$c531], a
    cp $01
    jr z, jr_002_5407

jr_002_5452:
    ret


Call_002_5453:
    ld a, [$d52d]
    bit 5, a
    ret nz

    ld hl, $c164
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$c242]
    bit 0, a
    jr z, jr_002_54c4

    ld de, $c138
    ld a, [de]
    sub c
    cp $10
    jr c, jr_002_5475

    cp $f1
    jr nc, jr_002_5475

    jr jr_002_54c4

jr_002_5475:
    inc de
    ld a, [de]
    sub b
    cp $10
    jr c, jr_002_5482

    cp $f1
    jr nc, jr_002_5482

    jr jr_002_54c4

jr_002_5482:
    ld a, [$c242]
    and $30
    cp $10
    jr z, jr_002_5498

    ld a, [$c242]
    and $be
    ld [$c242], a
    ld a, $01
    ld [$c243], a

jr_002_5498:
    ld a, [$d3d1]
    dec a
    ld [$d3d1], a
    jr z, jr_002_54b3

    ld hl, $d52d
    set 5, [hl]
    ld a, [$c164]
    ld [$d3d2], a
    ld a, $28
    ld [$d3d3], a
    jr jr_002_54c4

jr_002_54b3:
    ld a, $91
    ld [$c26d], a
    xor a
    ld [$c26e], a
    ld hl, $d52d
    xor a
    ld [hl], a
    call Call_002_4d59

jr_002_54c4:
    xor a
    ld [$c264], a

Jump_002_54c8:
    ld hl, $c164
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$c22e]
    bit 3, a
    jr nz, jr_002_5506

    ld hl, $c100
    ld a, [hl+]
    sub c
    cp $08
    jr c, jr_002_54f0

    cp $f9
    jr nc, jr_002_54f0

    jr jr_002_5506

jr_002_54f0:
    ld a, [hl]
    sub b
    cp $08
    jr c, jr_002_54fc

    cp $f9
    jr nc, jr_002_54fc

    jr jr_002_5506

jr_002_54fc:
    ld a, [$c228]
    bit 7, a
    jr nz, jr_002_5506

    call Call_002_5e92

jr_002_5506:
    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $03
    jp nz, Jump_002_54c8

    ret


Call_002_5513:
    ld hl, $c265
    ld a, [$c264]
    sla a
    call Call_000_07e6
    ret


Call_002_551f:
    ld hl, $c144
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ret


Call_002_552f:
    ld a, [$c242]
    bit 0, a
    jp z, Jump_002_5b7c

    and $30
    srl a
    srl a
    srl a
    srl a
    call Call_000_0775

    db $4c, $55

    ld c, h
    ld d, l

    db $73, $57, $5e, $58

    ld a, [$c243]
    and a
    jr nz, jr_002_5595

    ld a, $01
    ld [$c243], a
    ld a, [$c228]
    and $03
    call Call_000_0775

    db $67, $55, $71, $55, $7d, $55, $89, $55

    ld a, [$c242]
    and $f1
    ld [$c242], a
    jr jr_002_5595

    ld a, [$c242]
    and $f1
    or $02
    ld [$c242], a
    jr jr_002_5595

    ld a, [$c242]
    and $f1
    or $04
    ld [$c242], a
    jr jr_002_5595

    ld a, [$c242]
    and $f1
    or $06
    ld [$c242], a
    jr jr_002_5595

jr_002_5595:
    ld a, [$c243]
    inc a
    ld [$c243], a
    cp $20
    jr c, jr_002_55bc

    xor a
    ld [$c243], a
    ld a, [$c242]
    and $be
    ld [$c242], a
    ld a, [$c228]
    and $fb
    ld [$c228], a
    ld a, $e0
    ld [$c138], a
    jp Jump_002_5770


jr_002_55bc:
    ld a, [$c242]
    and $0e
    srl a
    call Call_000_0775

    db $ce, $55, $38, $56, $a1, $56, $09, $57

    ld b, $ff
    ld a, [$c245]
    add b
    ld [$c245], a
    ld a, [$c139]
    adc $00
    inc a
    ld [$c139], a
    ld a, [$c138]
    srl a
    srl a
    srl a
    call Call_002_5d5f
    ld a, [$c139]
    srl a
    srl a
    srl a
    inc a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_002_5630

    cp $04
    jr z, jr_002_5630

    cp $06
    jr z, jr_002_5630

    cp $08
    jr z, jr_002_5630

    cp $0e
    jr z, jr_002_5630

    cp $0f
    jr z, jr_002_5630

    cp $10
    jr z, jr_002_5630

    cp $11
    jr z, jr_002_5630

    cp $12
    jr z, jr_002_5630

    cp $14
    jr z, jr_002_5630

    cp $17
    jr z, jr_002_5630

    cp $19
    jr z, jr_002_5630

    jr jr_002_5635

jr_002_5630:
    ld a, $20
    ld [$c243], a

jr_002_5635:
    jp Jump_002_5770


    ld b, $ff
    ld a, [$c245]
    sub b
    ld [$c245], a
    ld a, [$c139]
    sbc $00
    dec a
    ld [$c139], a
    ld a, [$c138]
    srl a
    srl a
    srl a
    call Call_002_5d5f
    ld a, [$c139]
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_002_5699

    cp $05
    jr z, jr_002_5699

    cp $07
    jr z, jr_002_5699

    cp $09
    jr z, jr_002_5699

    cp $0e
    jr z, jr_002_5699

    cp $0f
    jr z, jr_002_5699

    cp $10
    jr z, jr_002_5699

    cp $11
    jr z, jr_002_5699

    cp $13
    jr z, jr_002_5699

    cp $15
    jr z, jr_002_5699

    cp $16
    jr z, jr_002_5699

    cp $18
    jr z, jr_002_5699

    jr jr_002_569e

jr_002_5699:
    ld a, $20
    ld [$c243], a

jr_002_569e:
    jp Jump_002_5770


    ld b, $ff
    ld a, [$c244]
    sub b
    ld [$c244], a
    ld a, [$c138]
    sbc $00
    dec a
    ld [$c138], a
    ld a, [$c138]
    srl a
    srl a
    srl a
    call Call_002_5d5f
    ld a, [$c139]
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_002_5702

    cp $08
    jr z, jr_002_5702

    cp $09
    jr z, jr_002_5702

    cp $03
    jr z, jr_002_5702

    cp $0e
    jr z, jr_002_5702

    cp $0f
    jr z, jr_002_5702

    cp $10
    jr z, jr_002_5702

    cp $11
    jr z, jr_002_5702

    cp $12
    jr z, jr_002_5702

    cp $13
    jr z, jr_002_5702

    cp $18
    jr z, jr_002_5702

    cp $19
    jr z, jr_002_5702

    jr jr_002_5707

jr_002_5702:
    ld a, $20
    ld [$c243], a

jr_002_5707:
    jr jr_002_5770

    ld b, $ff
    ld a, [$c244]
    add b
    ld [$c244], a
    ld a, [$c138]
    adc $00
    inc a
    ld [$c138], a
    ld a, [$c138]
    srl a
    srl a
    srl a
    inc a
    call Call_002_5d5f
    ld a, [$c139]
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld hl, $c271
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_002_576b

    cp $04
    jr z, jr_002_576b

    cp $05
    jr z, jr_002_576b

    cp $02
    jr z, jr_002_576b

    cp $0e
    jr z, jr_002_576b

    cp $0f
    jr z, jr_002_576b

    cp $10
    jr z, jr_002_576b

    cp $11
    jr z, jr_002_576b

    cp $14
    jr z, jr_002_576b

    cp $15
    jr z, jr_002_576b

    cp $16
    jr z, jr_002_576b

    cp $17
    jr z, jr_002_576b

    jr jr_002_5770

jr_002_576b:
    ld a, $20
    ld [$c243], a

Jump_002_5770:
jr_002_5770:
    jp Jump_002_5c67


    ld a, [$c243]
    inc a
    ld [$c243], a
    cp $30
    jr nc, jr_002_57f4

    ld a, [$c242]
    srl a
    and $03
    call Call_000_0775

    sub b
    ld d, a

    db $a0, $57

    xor b
    ld d, a
    sbc b
    ld d, a
    ld de, $c245
    ld hl, $c139
    jr jr_002_57b0

    ld de, $c244
    ld hl, $c138
    jr jr_002_57b0

    ld de, $c245
    ld hl, $c139
    jr jr_002_57b0

    ld de, $c245
    ld hl, $c138
    jr jr_002_57b0

jr_002_57b0:
    ld a, [$c243]
    cp $10
    jr c, jr_002_57ce

    cp $20
    jr nc, jr_002_57c0

    call Call_002_5c68
    jr jr_002_57f1

jr_002_57c0:
    cp $20
    jr nz, jr_002_57c9

    call Call_002_5cb4
    jr jr_002_57f1

jr_002_57c9:
    call Call_002_5cb7
    jr jr_002_57f1

jr_002_57ce:
    ld a, [$c242]
    srl a
    and $03
    jr z, jr_002_57e7

    cp $03
    jr z, jr_002_57e7

    ld c, $ff
    ld a, [de]
    sub c
    ld [de], a
    ld a, [hl]
    sbc $00
    dec a
    ld [hl+], a
    jr jr_002_57f1

jr_002_57e7:
    ld c, $ff
    ld a, [de]
    add c
    ld [de], a
    ld a, [hl]
    adc $00
    inc a
    ld [hl+], a

jr_002_57f1:
    jp Jump_002_5c67


jr_002_57f4:
    ld a, [$c138]
    add $10
    ld c, a
    ld a, [$c100]
    add $10
    sub c
    cp $0c
    jr c, jr_002_581a

    cp $f5
    jr nc, jr_002_581a

    ld a, [$c139]
    ld c, a
    ld a, [$c101]
    sub c
    cp $0c
    jr c, jr_002_582c

    cp $f5
    jr nc, jr_002_582c

    jr jr_002_583a

jr_002_581a:
    ld a, [$c139]
    ld c, a
    ld a, [$c101]
    sub c
    cp $0c
    jr c, jr_002_5846

    cp $f5
    jr nc, jr_002_5846

    jr jr_002_5833

jr_002_582c:
    ld d, $ff
    call Call_002_5d2a
    jr jr_002_585b

jr_002_5833:
    ld d, $ff
    call Call_002_5cf9
    jr jr_002_585b

jr_002_583a:
    ld d, $aa
    call Call_002_5cf9
    ld d, $aa
    call Call_002_5d2a
    jr jr_002_585b

jr_002_5846:
    ld a, [$c242]
    and $fe
    ld [$c242], a
    ld a, [$c228]
    and $fb
    ld [$c228], a
    ld a, $e0
    ld [$c138], a

jr_002_585b:
    jp Jump_002_5c67


    ld a, [$c243]
    inc a
    and $ef
    ld [$c243], a
    ld a, [$c138]
    cp $90
    jr nc, jr_002_587a

    ld a, [$c139]
    and a
    jr z, jr_002_587a

    cp $a0
    jr nc, jr_002_587a

    jr jr_002_5892

jr_002_587a:
    ld a, [$c242]
    and $fe
    ld [$c242], a
    ld a, [$c228]
    and $fb
    ld [$c228], a
    ld a, $e0
    ld [$c138], a
    jp Jump_002_5b79


jr_002_5892:
    ld a, [$c243]
    and $c0
    cp $c0
    jr nz, jr_002_589e

    jp Jump_002_5a26


jr_002_589e:
    ld hl, $c242
    bit 6, [hl]
    jr nz, jr_002_58b0

    ld a, [$c243]
    and $0f
    jr nz, jr_002_58b0

    ld a, [hl]
    or $40
    ld [hl], a

jr_002_58b0:
    ld a, [$c225]
    bit 7, a
    jr nz, jr_002_58bf

    bit 6, a
    jr z, jr_002_58bf

    ld a, $04
    jr jr_002_58ce

jr_002_58bf:
    xor a
    ld hl, $c265

jr_002_58c3:
    bit 0, [hl]
    jr nz, jr_002_58ce

    inc hl
    inc hl
    inc a
    cp $06
    jr nz, jr_002_58c3

jr_002_58ce:
    ld hl, $c144
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [$c138]
    ld c, a
    ld a, [hl]
    sub c
    cp $0c
    jr c, jr_002_58fb

    cp $f5
    jr nc, jr_002_58fb

    ld a, [$c139]
    ld c, a
    inc hl
    ld a, [hl]
    dec hl
    sub c
    cp $0c
    jr c, jr_002_594a

    cp $f5
    jr nc, jr_002_594a

    jp Jump_002_599b


jr_002_58fb:
    ld a, [$c139]
    ld c, a
    inc hl
    ld a, [hl]
    dec hl
    cp c
    jr c, jr_002_5925

    ld a, [$c242]
    and $0e
    jr nz, jr_002_591b

    ld a, [$c242]
    bit 6, a
    jr z, jr_002_591b

    ld a, [$c243]
    add $40
    ld [$c243], a

jr_002_591b:
    ld a, [$c242]
    and $f1
    ld [$c242], a
    jr jr_002_5947

jr_002_5925:
    ld a, [$c242]
    and $0e
    cp $02
    jr nz, jr_002_593d

    ld a, [$c242]
    bit 6, a
    jr z, jr_002_593d

    ld a, [$c243]
    add $40
    ld [$c243], a

jr_002_593d:
    ld a, [$c242]
    and $f1
    or $02
    ld [$c242], a

jr_002_5947:
    jp Jump_002_5a26


jr_002_594a:
    ld a, [$c138]
    ld c, a
    ld a, [hl]
    cp c
    jr c, jr_002_5976

    ld a, [$c242]
    and $0e
    cp $06
    jr nz, jr_002_596a

    ld a, [$c242]
    bit 6, a
    jr z, jr_002_596a

    ld a, [$c243]
    add $40
    ld [$c243], a

jr_002_596a:
    ld a, [$c242]
    and $f1
    or $06
    ld [$c242], a
    jr jr_002_5998

jr_002_5976:
    ld a, [$c242]
    and $0e
    cp $04
    jr nz, jr_002_598e

    ld a, [$c242]
    bit 6, a
    jr z, jr_002_598e

    ld a, [$c243]
    add $40
    ld [$c243], a

jr_002_598e:
    ld a, [$c242]
    and $f1
    or $04
    ld [$c242], a

jr_002_5998:
    jp Jump_002_5a26


Jump_002_599b:
    ld b, $00
    ld a, [$c139]
    ld c, a
    inc hl
    ld a, [hl-]
    cp c
    jr c, jr_002_59c4

    ld a, [$c242]
    and $0c
    cp $08
    jr nz, jr_002_59b8

    ld a, [$c242]
    bit 6, a
    jr z, jr_002_59b8

    ld b, $01

jr_002_59b8:
    ld a, [$c242]
    and $f1
    or $08
    ld [$c242], a
    jr jr_002_59e0

jr_002_59c4:
    ld a, [$c242]
    and $0c
    cp $0c
    jr nz, jr_002_59d6

    ld a, [$c242]
    bit 6, a
    jr z, jr_002_59d6

    ld b, $01

jr_002_59d6:
    ld a, [$c242]
    and $f1
    or $0c
    ld [$c242], a

jr_002_59e0:
    ld a, [$c138]
    ld c, a
    ld a, [hl]
    cp c
    jr c, jr_002_5a09

    ld a, [$c242]
    and $02
    cp $02
    jr nz, jr_002_59fd

    ld a, b
    and a
    jr z, jr_002_59fd

    ld a, [$c243]
    add $40
    ld [$c243], a

jr_002_59fd:
    ld a, [$c242]
    and $fd
    or $02
    ld [$c242], a
    jr jr_002_5a24

jr_002_5a09:
    ld a, [$c242]
    and $02
    jr nz, jr_002_5a1c

    ld a, b
    and a
    jr z, jr_002_5a1c

    ld a, [$c243]
    add $40
    ld [$c243], a

jr_002_5a1c:
    ld a, [$c242]
    and $fd
    ld [$c242], a

jr_002_5a24:
    jr jr_002_5a26

Jump_002_5a26:
jr_002_5a26:
    ld a, [$c242]
    and $0f
    srl a
    call Call_000_0775

    ld b, b
    ld e, d
    ld e, h
    ld e, d

    db $78, $5a, $94, $5a

    or b
    ld e, d

    db $e3, $5a

    dec d
    ld e, e
    ld b, a
    ld e, e
    ld b, $ff
    ld a, [$c245]
    add b
    ld [$c245], a
    ld a, [$c139]
    adc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5a56

    inc a

jr_002_5a56:
    ld [$c139], a
    jp Jump_002_5b79


    ld b, $ff
    ld a, [$c245]
    sub b
    ld [$c245], a
    ld a, [$c139]
    sbc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5a72

    dec a

jr_002_5a72:
    ld [$c139], a
    jp Jump_002_5b79


    ld b, $ff
    ld a, [$c244]
    sub b
    ld [$c244], a
    ld a, [$c138]
    sbc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5a8e

    dec a

jr_002_5a8e:
    ld [$c138], a
    jp Jump_002_5b79


    ld b, $ff
    ld a, [$c244]
    add b
    ld [$c244], a
    ld a, [$c138]
    adc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5aaa

    inc a

jr_002_5aaa:
    ld [$c138], a
    jp Jump_002_5b79


    ld b, $aa
    ld a, [$c245]
    add b
    ld [$c245], a
    ld a, [$c139]
    adc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5ac6

    inc a

jr_002_5ac6:
    ld [$c139], a
    ld a, [$c244]
    sub b
    ld [$c244], a
    ld a, [$c138]
    sbc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5add

    dec a

jr_002_5add:
    ld [$c138], a
    jp Jump_002_5b79


    ld b, $aa
    ld a, [$c245]
    add b
    ld [$c245], a
    ld a, [$c139]
    adc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5af9

    inc a

jr_002_5af9:
    ld [$c139], a
    ld a, [$c244]
    add b
    ld [$c244], a
    ld a, [$c138]
    adc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5b10

    inc a

jr_002_5b10:
    ld [$c138], a
    jr jr_002_5b79

    ld b, $aa
    ld a, [$c245]
    sub b
    ld [$c245], a
    ld a, [$c139]
    sbc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5b2b

    dec a

jr_002_5b2b:
    ld [$c139], a
    ld a, [$c244]
    sub b
    ld [$c244], a
    ld a, [$c138]
    sbc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5b42

    dec a

jr_002_5b42:
    ld [$c138], a
    jr jr_002_5b79

    ld b, $aa
    ld a, [$c245]
    sub b
    ld [$c245], a
    ld a, [$c139]
    sbc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5b5d

    dec a

jr_002_5b5d:
    ld [$c139], a
    ld a, [$c244]
    add b
    ld [$c244], a
    ld a, [$c138]
    adc $00
    ld hl, $c242
    bit 6, [hl]
    jr z, jr_002_5b74

    inc a

jr_002_5b74:
    ld [$c138], a
    jr jr_002_5b79

Jump_002_5b79:
jr_002_5b79:
    jp Jump_002_5c67


Jump_002_5b7c:
    ld a, [$c243]
    and a
    jp z, Jump_002_5c67

    cp $01
    jp nz, Jump_002_5c2c

    ld a, [$c138]
    dec a
    ld [$c138], a
    cp $f9
    jr nz, jr_002_5ba6

    ld a, $02
    ld [$c243], a
    xor a
    ld [$c53c], a
    ld a, $f9
    ld [$c138], a
    ld [$c139], a
    jr jr_002_5c21

jr_002_5ba6:
    ld a, [$c53c]
    bit 0, a
    jr z, jr_002_5bbd

    srl a
    cp $10
    jr c, jr_002_5bc3

    cp $20
    jr c, jr_002_5bd9

    cp $30
    jr c, jr_002_5bf1

    jr jr_002_5c09

jr_002_5bbd:
    xor a
    ld [$c13a], a
    jr jr_002_5c21

jr_002_5bc3:
    ld hl, $7db0
    call Call_000_07e6
    ld a, [hl]
    ld b, a
    ld a, [$c139]
    sub b
    ld [$c139], a
    ld a, $94
    ld [$c13a], a
    jr jr_002_5c21

jr_002_5bd9:
    ld hl, $7dc0
    sub $10
    call Call_000_07e6
    ld a, [hl]
    ld b, a
    ld a, [$c139]
    add b
    ld [$c139], a
    ld a, $94
    ld [$c13a], a
    jr jr_002_5c21

jr_002_5bf1:
    ld hl, $7db0
    sub $20
    call Call_000_07e6
    ld a, [hl]
    ld b, a
    ld a, [$c139]
    add b
    ld [$c139], a
    ld a, $94
    ld [$c13a], a
    jr jr_002_5c21

jr_002_5c09:
    ld hl, $7dc0
    sub $30
    call Call_000_07e6
    ld a, [hl]
    ld b, a
    ld a, [$c139]
    sub b
    ld [$c139], a
    ld a, $94
    ld [$c13a], a
    jr jr_002_5c21

jr_002_5c21:
    ld a, [$c53c]
    inc a
    and $7f
    ld [$c53c], a
    jr jr_002_5c67

Jump_002_5c2c:
    ld a, [$c243]
    cp $64
    jr c, jr_002_5c63

    ld a, [$c101]
    ld [$c139], a
    ld a, $94
    ld [$c13a], a
    ld a, [$c138]
    add $08
    ld [$c138], a
    ld b, a
    ld a, [$c100]
    cp b
    jr nc, jr_002_5c67

    ld a, [$c228]
    and $fb
    ld [$c228], a
    ld a, $e0
    ld [$c138], a
    ld [$c139], a
    xor a
    ld [$c243], a
    jr jr_002_5c67

jr_002_5c63:
    inc a
    ld [$c243], a

Jump_002_5c67:
jr_002_5c67:
    ret


Call_002_5c68:
    ld a, [$c243]
    sub $10
    ld b, a
    ld a, [$c242]
    srl a
    and $03
    jr z, jr_002_5c98

    cp $03
    jr z, jr_002_5c98

    ld a, $01
    sla b
    sla b
    sla b
    sla b
    sla b
    sbc $00
    ld c, a
    ld a, $ff
    sub b
    ld b, a
    ld a, [de]
    sub b
    ld [de], a
    ld a, [hl]
    sbc $00
    sub c
    ld [hl], a
    jr jr_002_5cb3

jr_002_5c98:
    ld a, $01
    sla b
    sla b
    sla b
    sla b
    sla b
    sbc $00
    ld c, a
    ld a, $ff
    sub b
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ld a, [hl]
    adc $00
    add c
    ld [hl], a

jr_002_5cb3:
    ret


Call_002_5cb4:
    ld a, $ff
    ld [de], a

Call_002_5cb7:
    ld a, [$c243]
    sub $20
    ld b, a
    ld a, [$c242]
    srl a
    and $03
    jr z, jr_002_5ce2

    cp $03
    jr z, jr_002_5ce2

    xor a
    sla b
    sla b
    sla b
    sla b
    sla b
    adc $00
    ld c, a
    ld a, [de]
    add b
    ld [de], a
    ld a, [hl]
    adc $00
    add c
    ld [hl], a
    jr jr_002_5cf8

jr_002_5ce2:
    xor a
    sla b
    sla b
    sla b
    sla b
    sla b
    adc $00
    ld c, a
    ld a, [de]
    sub b
    ld [de], a
    ld a, [hl]
    sbc $00
    sub c
    ld [hl], a

jr_002_5cf8:
    ret


Call_002_5cf9:
    ld a, [$c139]
    ld c, a
    cp $c8
    jr nc, jr_002_5d19

    ld a, [$c101]
    cp c
    jr nc, jr_002_5d19

    ld a, [$c245]
    sub d
    ld [$c245], a
    ld a, [$c139]
    sbc $00
    dec a
    ld [$c139], a
    jr jr_002_5d29

jr_002_5d19:
    ld a, [$c245]
    add d
    ld [$c245], a
    ld a, [$c139]
    adc $00
    inc a
    ld [$c139], a

jr_002_5d29:
    ret


Call_002_5d2a:
    ld a, [$c138]
    add $10
    ld c, a
    cp $c8
    jr nc, jr_002_5d4e

    ld a, [$c100]
    add $10
    cp c
    jr nc, jr_002_5d4e

    ld a, [$c244]
    sub d
    ld [$c244], a
    ld a, [$c138]
    sbc $00
    dec a
    ld [$c138], a
    jr jr_002_5d5e

jr_002_5d4e:
    ld a, [$c244]
    add d
    ld [$c244], a
    ld a, [$c138]
    adc $00
    inc a
    ld [$c138], a

jr_002_5d5e:
    ret


Call_002_5d5f:
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


Call_002_5d79:
    ld a, [$c228]
    bit 7, a
    jp z, Jump_002_5e0b

    xor a
    ld [$c103], a
    ld [$c107], a
    ld a, [$c228]
    or $fc
    ld [$c228], a
    ld a, [$c229]
    cp $01
    jr nz, jr_002_5d9c

    ld a, $0a
    ld [$dd00], a

jr_002_5d9c:
    ld a, [$c231]
    cp $01
    jr z, jr_002_5e07

    ld de, $7a84
    ld a, [$c229]
    inc a
    cp $50
    jr nc, jr_002_5db3

    call Call_002_5f10
    jr jr_002_5db3

jr_002_5db3:
    ld a, [$c229]
    inc a
    ld [$c229], a
    ld a, [$c229]
    cp $70
    jr nz, jr_002_5e07

    ld a, [$c227]
    and a
    jr nz, jr_002_5dd6

    ld a, [$c232]
    and a
    jr nz, jr_002_5dd2

    ld a, $01
    ld [$c232], a

jr_002_5dd2:
    ld a, $80
    jr jr_002_5e0c

jr_002_5dd6:
    dec a
    ld [$c227], a
    ld a, [$d52d]
    and a
    jr nz, jr_002_5de4

    ld a, $04
    jr jr_002_5de6

jr_002_5de4:
    ld a, $03

jr_002_5de6:
    ld [$dd00], a
    ld a, $09
    ld hl, $655c
    call Call_000_0061
    call Call_002_4601
    ld a, [$c22e]
    or $08
    ld [$c22e], a
    ld a, $ff
    ld [$c22f], a
    xor a
    ld [$c228], a
    jr jr_002_5e0c

jr_002_5e07:
    ld a, $01
    jr jr_002_5e0c

Jump_002_5e0b:
    xor a

jr_002_5e0c:
    ret


    ld a, [$c234]
    bit 7, a
    jr z, jr_002_5e89

    xor a
    ld [$c10b], a
    ld [$c10f], a
    ld a, [$c234]
    or $fc
    ld [$c234], a
    ld a, [$c235]
    cp $01
    jr nz, jr_002_5e2f

    ld a, $0a
    ld [$dd00], a

jr_002_5e2f:
    ld a, [$c23c]
    cp $01
    jr z, jr_002_5e85

    ld de, $7a84
    ld a, [$c235]
    inc a
    cp $50
    jr nc, jr_002_5e44

    call Call_002_481a

jr_002_5e44:
    ld a, [$c235]
    inc a
    ld [$c235], a
    ld a, [$c235]
    cp $70
    jr nz, jr_002_5e85

    ld a, [$c233]
    and a
    jr nz, jr_002_5e5c

    ld a, $80
    jr jr_002_5e8a

jr_002_5e5c:
    dec a
    ld [$c233], a
    ld a, [$d52d]
    and a
    jr nz, jr_002_5e6a

    ld a, $04
    jr jr_002_5e6c

jr_002_5e6a:
    ld a, $03

jr_002_5e6c:
    ld [$dd00], a
    call Call_002_4620
    ld a, [$c23a]
    or $08
    ld [$c23a], a
    ld a, $ff
    ld [$c23b], a
    xor a
    ld [$c234], a
    jr jr_002_5e8a

jr_002_5e85:
    ld a, $01
    jr jr_002_5e8a

jr_002_5e89:
    xor a

jr_002_5e8a:
    ret


Call_002_5e8b:
    ld a, $01
    ld [$c231], a
    jr jr_002_5e97

Call_002_5e92:
    ld a, $02
    ld [$c231], a

jr_002_5e97:
    ld a, [$c228]
    or $80
    and $f8
    ld [$c228], a
    xor a
    ld [$c229], a
    ld a, [$c103]
    and $20
    ld [$c103], a
    ld [$c107], a
    ret


Call_002_5eb1:
    ld a, $01
    ld [$c23c], a
    jr jr_002_5ebd

Call_002_5eb8:
    ld a, $02
    ld [$c23c], a

jr_002_5ebd:
    ld a, [$c234]
    or $80
    and $f8
    ld [$c234], a
    xor a
    ld [$c235], a
    ld a, [$c10b]
    and $20
    ld [$c10b], a
    ld [$c10f], a
    ret


Call_002_5ed7:
    ld a, [$c228]
    bit 2, a
    jr z, jr_002_5ede

jr_002_5ede:
    ld hl, $0000
    bit 5, a
    jr nz, jr_002_5f00

    bit 4, a
    jr z, jr_002_5eee

    ld de, $7a78
    jr jr_002_5f0c

jr_002_5eee:
    bit 3, a
    jr z, jr_002_5f00

    bit 1, a
    jr z, jr_002_5efb

    ld de, $7a74
    jr jr_002_5f0c

jr_002_5efb:
    ld de, $7a70
    jr jr_002_5f0c

jr_002_5f00:
    bit 1, a
    jr z, jr_002_5f09

    ld de, $7a6c
    jr jr_002_5f0c

jr_002_5f09:
    ld de, $7a68

jr_002_5f0c:
    call Call_002_5f10
    ret


Call_002_5f10:
    ld a, [$c22e]
    bit 3, a
    jr z, jr_002_5f26

    ld a, [$c102]
    and a
    jr z, jr_002_5f26

    xor a
    ld [$c102], a
    ld [$c106], a
    jr jr_002_5f4d

jr_002_5f26:
    ld a, [$c229]
    srl a
    srl a
    call Call_000_07ed
    ld a, [$c228]
    and $03
    cp $01
    jr z, jr_002_5f44

    ld a, [de]
    ld [$c102], a
    add $02
    ld [$c106], a
    jr jr_002_5f4d

jr_002_5f44:
    ld a, [de]
    ld [$c106], a
    add $02
    ld [$c102], a

jr_002_5f4d:
    ret


Call_002_5f4e:
    ld a, [$c24b]
    and $bf
    ld [$c24b], a
    ld a, [$c24c]
    and $bf
    ld [$c24c], a
    ld a, [$c24d]
    and $bf
    ld [$c24d], a
    ld a, [$c24e]
    and $bf
    ld [$c24e], a
    ld a, [$c24f]
    and $bf
    ld [$c24f], a
    ld a, [$c228]
    and $cf
    ld [$c228], a
    xor a
    ld [$c264], a
    ld hl, $c24b

Jump_002_5f85:
    bit 7, [hl]
    jp z, Jump_002_668e

    ld d, h
    ld e, l
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    bit 0, a
    jp nz, Jump_002_64d4

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    cp $80
    jp z, Jump_002_64d4

    inc de
    ld a, [de]
    ld b, a
    ld a, c
    add $10
    srl a
    srl a
    srl a
    call Call_002_5d5f
    ld a, b
    add $04
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld b, h
    ld c, l
    ld hl, $c271
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    cp $01
    jp z, Jump_002_6448

    cp $0e
    jp z, Jump_002_6448

    cp $0f
    jp z, Jump_002_6448

    cp $10
    jp z, Jump_002_6448

    cp $11
    jp z, Jump_002_6448

    ld a, c
    cp $01
    jp z, Jump_002_6448

    cp $0e
    jp z, Jump_002_6448

    cp $0f
    jp z, Jump_002_6448

    cp $10
    jp z, Jump_002_6448

    cp $11
    jp z, Jump_002_6448

    dec de
    ld a, c
    cp $02
    jr z, jr_002_6047

    cp $04
    jr z, jr_002_604e

    cp $05
    jr z, jr_002_6047

    cp $09
    jr z, jr_002_604a

    cp $14
    jr z, jr_002_605a

    cp $15
    jr z, jr_002_605e

    cp $16
    jr z, jr_002_6052

    cp $17
    jr z, jr_002_6056

    cp $18
    jr z, jr_002_605a

    cp $19
    jr z, jr_002_605e

    cp $0a
    jr z, jr_002_6047

    cp $0b
    jr z, jr_002_6047

    cp $0c
    jr z, jr_002_6047

    cp $0d
    jr z, jr_002_6047

    jp Jump_002_6242


jr_002_6047:
    xor a
    jr jr_002_6062

jr_002_604a:
    ld a, $03
    jr jr_002_6062

jr_002_604e:
    ld a, $06
    jr jr_002_6062

jr_002_6052:
    ld a, $1a
    jr jr_002_6062

jr_002_6056:
    ld a, $1b
    jr jr_002_6062

jr_002_605a:
    ld a, $1c
    jr jr_002_6062

jr_002_605e:
    ld a, $1d
    jr jr_002_6062

jr_002_6062:
    ld [de], a
    inc de
    ld a, [de]
    cp $02
    jr z, jr_002_608d

    cp $04
    jr z, jr_002_608d

    cp $05
    jr z, jr_002_6094

    cp $08
    jr z, jr_002_6090

    cp $14
    jr z, jr_002_60a0

    cp $15
    jr z, jr_002_60a4

    cp $16
    jr z, jr_002_6098

    cp $17
    jr z, jr_002_609c

    cp $18
    jr z, jr_002_60a0

    cp $19
    jr z, jr_002_60a4

jr_002_608d:
    xor a
    jr jr_002_60a8

jr_002_6090:
    ld a, $03
    jr jr_002_60a8

jr_002_6094:
    ld a, $07
    jr jr_002_60a8

jr_002_6098:
    ld a, $1a
    jr jr_002_60a8

jr_002_609c:
    ld a, $1b
    jr jr_002_60a8

jr_002_60a0:
    ld a, $1c
    jr jr_002_60a8

jr_002_60a4:
    ld a, $1d
    jr jr_002_60a8

jr_002_60a8:
    ld [de], a
    ld a, e
    sub $15
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ld a, [de]
    and a
    jr z, jr_002_60f1

    cp $05
    jr z, jr_002_60f4

    cp $16
    jr z, jr_002_60fc

    cp $01
    jr z, jr_002_610c

    cp $10
    jr z, jr_002_610c

    cp $11
    jr z, jr_002_610c

    cp $08
    jr z, jr_002_60f8

    cp $12
    jr z, jr_002_60fc

    cp $17
    jr z, jr_002_6100

    cp $18
    jr z, jr_002_6104

    cp $19
    jr z, jr_002_6108

    cp $1a
    jr z, jr_002_60fc

    cp $1b
    jr z, jr_002_6100

    cp $1c
    jr z, jr_002_6104

    cp $1d
    jr z, jr_002_6108

    cp $03
    jr z, jr_002_60f1

jr_002_60f1:
    xor a
    jr jr_002_6138

jr_002_60f4:
    ld a, $02
    jr jr_002_6138

jr_002_60f8:
    ld a, $06
    jr jr_002_6138

jr_002_60fc:
    ld a, $1a
    jr jr_002_6138

jr_002_6100:
    ld a, $1b
    jr jr_002_6138

jr_002_6104:
    ld a, $1c
    jr jr_002_6138

jr_002_6108:
    ld a, $1d
    jr jr_002_6138

jr_002_610c:
    ld a, e
    add $14
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    and a
    jr z, jr_002_6126

    cp $05
    jr z, jr_002_6126

    cp $16
    jr z, jr_002_6126

    cp $1a
    jr nc, jr_002_612e

    jr jr_002_612b

jr_002_6126:
    ld a, $02
    ld [de], a
    jr jr_002_612e

jr_002_612b:
    ld a, $04
    ld [de], a

jr_002_612e:
    ld a, e
    sub $14
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    jr jr_002_6139

jr_002_6138:
    ld [de], a

jr_002_6139:
    inc de
    ld a, [de]
    and a
    jr z, jr_002_617a

    cp $01
    jr z, jr_002_6195

    cp $10
    jr z, jr_002_6195

    cp $11
    jr z, jr_002_6195

    cp $04
    jr z, jr_002_617d

    cp $16
    jr z, jr_002_6185

    cp $17
    jr z, jr_002_6189

    cp $19
    jr z, jr_002_6191

    cp $09
    jr z, jr_002_6181

    cp $13
    jr z, jr_002_6189

    cp $18
    jr z, jr_002_618d

    cp $03
    jr z, jr_002_617a

    cp $1a
    jr z, jr_002_6185

    cp $1b
    jr z, jr_002_6189

    cp $1c
    jr z, jr_002_618d

    cp $1d
    jr z, jr_002_6191

jr_002_617a:
    xor a
    jr jr_002_61c1

jr_002_617d:
    ld a, $02
    jr jr_002_61c1

jr_002_6181:
    ld a, $07
    jr jr_002_61c1

jr_002_6185:
    ld a, $1a
    jr jr_002_61c1

jr_002_6189:
    ld a, $1b
    jr jr_002_61c1

jr_002_618d:
    ld a, $1c
    jr jr_002_61c1

jr_002_6191:
    ld a, $1d
    jr jr_002_61c1

jr_002_6195:
    ld a, e
    add $14
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    and a
    jr z, jr_002_61af

    cp $17
    jr z, jr_002_61af

    cp $04
    jr z, jr_002_61af

    cp $1a
    jr nc, jr_002_61b7

    jr jr_002_61b4

jr_002_61af:
    ld a, $02
    ld [de], a
    jr jr_002_61b7

jr_002_61b4:
    ld a, $05
    ld [de], a

jr_002_61b7:
    ld a, e
    sub $14
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    jr jr_002_61c2

jr_002_61c1:
    ld [de], a

jr_002_61c2:
    bit 5, [hl]
    jr z, jr_002_6242

    push hl
    ld hl, $c425
    dec de
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld b, h
    ld c, l
    ld a, $04
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $13
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld h, b
    ld l, c
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    and $07
    jr nz, jr_002_6241

    ld a, c
    add $08
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, b
    ld e, a
    xor a
    srl e
    srl e
    srl e
    sla e
    sla e
    sla e
    sla e
    adc $00
    sla a
    sla e
    adc $00
    ld d, a
    ld a, c
    srl a
    srl a
    srl a
    call Call_000_07ed
    ld b, h
    ld c, l
    ld hl, $9840
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    call Call_000_0838

jr_002_6241:
    pop hl

Jump_002_6242:
jr_002_6242:
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    xor a
    ld [$c531], a
    ld de, $c100
    inc de
    ld a, [de]
    sub c
    cp $08
    jr c, jr_002_626b

    cp $f7
    jr nc, jr_002_626b

    jp Jump_002_62cf


jr_002_626b:
    dec de
    ld a, [de]
    sub b
    cp $18
    jp nc, Jump_002_62cf

    ld a, [hl]
    and $3f
    jp z, Jump_002_6628

    ld a, [de]
    sub b
    cp $0a
    jp nc, Jump_002_62cf

    cp $08
    jp c, Jump_002_62cf

    inc de
    ld a, [de]
    sub c
    cp $08
    jr c, jr_002_6293

    cp $f7
    jr nc, jr_002_6293

    jp Jump_002_62cf


jr_002_6293:
    dec de
    ld a, b
    add $09
    ld b, a
    ld [de], a
    inc de
    inc de
    ld a, $3e
    ld [de], a
    inc de
    inc de
    ld a, b
    ld [de], a
    inc de
    inc de
    ld a, $40
    ld [de], a
    ld a, [$c531]
    and a
    jr nz, jr_002_62bf

    ld a, [$c231]
    and a
    jr nz, jr_002_62cf

    ld a, [$c228]
    bit 7, a
    jr nz, jr_002_62cf

    call Call_002_5e8b
    jr jr_002_62cf

jr_002_62bf:
    ld a, [$c23c]
    and a
    jr nz, jr_002_62cf

    ld a, [$c234]
    bit 7, a
    jr nz, jr_002_62cf

    call Call_002_5eb1

Jump_002_62cf:
jr_002_62cf:
    push hl
    ld e, $00

jr_002_62d2:
    ld hl, $c265
    ld a, e
    sla a
    call Call_000_07e6
    bit 0, [hl]
    jr z, jr_002_6348

    ld hl, $c144
    ld a, e
    sla a
    sla a
    sla a
    call Call_000_07e6
    inc hl
    ld a, [hl-]
    sub c
    cp $0d
    jr c, jr_002_62f9

    cp $f2
    jr nc, jr_002_62f9

    jr jr_002_6348

jr_002_62f9:
    ld a, [hl]
    sub b
    cp $18
    jr nc, jr_002_6348

    ld a, [hl]
    sub b
    cp $10
    jr nc, jr_002_6348

    cp $07
    jr c, jr_002_6348

    ld hl, $c24b
    ld a, [$c264]
    call Call_000_07e6
    ld a, [hl]
    and $3f
    jr z, jr_002_6348

    xor a
    ld [$c52e], a
    ld hl, $c265
    ld a, e
    sla a
    call Call_000_07e6
    ld a, [hl]
    or $08
    ld [hl], a
    ld hl, $c144
    ld a, e
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, b
    add $08
    ld [hl+], a
    inc hl
    ld [hl], $e4
    inc hl
    ld [hl], $00
    inc hl
    ld [hl+], a
    inc hl
    ld [hl], $e6
    inc hl
    ld [hl], $00
    inc hl

jr_002_6348:
    inc e
    ld a, e
    cp $03
    jr nz, jr_002_62d2

    pop hl
    ld a, [hl]
    bit 5, a
    jp nz, Jump_002_63e7

    bit 4, a
    jp nz, Jump_002_63ee

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [hl]
    inc a
    ld [hl], a
    bit 4, a
    jr z, jr_002_6375

    ld a, $14
    ld [$dd01], a

jr_002_6375:
    ld a, [$c100]
    ld b, a
    ld a, [de]
    sub b
    cp $0a
    jr c, jr_002_6385

    cp $f6
    jr nc, jr_002_6385

    jr jr_002_63b3

jr_002_6385:
    ld a, [$c101]
    ld b, a
    inc de
    ld a, [de]
    sub b
    cp $0f
    jr c, jr_002_6397

    cp $f0
    jr nc, jr_002_63a5

    dec de
    jr jr_002_63b3

jr_002_6397:
    ld a, [de]
    sub $10
    ld [$c101], a
    add $08
    ld [$c105], a
    dec de
    jr jr_002_63b3

jr_002_63a5:
    ld a, [de]
    add $10
    ld [$c101], a
    add $08
    ld [$c105], a
    dec de
    jr jr_002_63b3

jr_002_63b3:
    ld a, [hl]
    and $0f
    srl a
    cp $04
    jr c, jr_002_63d1

    inc de
    inc de
    ld a, $68
    ld [de], a
    inc de
    ld a, $22
    ld [de], a
    inc de
    inc de
    inc de
    ld a, $66
    ld [de], a
    inc de
    ld a, $22
    ld [de], a
    jr jr_002_63e4

jr_002_63d1:
    inc de
    inc de
    ld a, $66
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    inc de
    inc de
    ld a, $68
    ld [de], a
    inc de
    ld a, $02
    ld [de], a

jr_002_63e4:
    jp Jump_002_6625


Jump_002_63e7:
    and $f1
    or $31
    ld [hl], a
    jr jr_002_63f0

Jump_002_63ee:
    inc a
    ld [hl], a

jr_002_63f0:
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    inc de
    ld a, [de]
    ld c, a
    and $07
    cp $04
    jr nc, jr_002_641a

    ld a, c
    and $f8
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    add $08
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    dec de
    jr jr_002_642c

jr_002_641a:
    ld a, c
    and $f8
    add $08
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    add $08
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    dec de

jr_002_642c:
    ld a, [de]
    inc a
    ld [de], a
    inc de
    inc de
    ld a, $64
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld a, [de]
    inc a
    ld [de], a
    inc de
    inc de
    ld a, $64
    ld [de], a
    inc de
    ld a, $22
    ld [de], a
    jp Jump_002_6625


Jump_002_6448:
    ld a, [hl]
    and $3f
    cp $31
    jp nc, Jump_002_64d4

    call Call_002_67f6
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [$c100]
    ld c, a
    ld a, [de]
    cp c
    jr nz, jr_002_64b8

    ld a, [$c101]
    ld c, a
    inc de
    ld a, [de]
    sub c
    cp $11
    jr c, jr_002_64b8

    cp $ee
    jr nc, jr_002_64b8

    jp Jump_002_6625


    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [$c101]
    add $10
    inc de
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    add $08
    ld [de], a
    jr jr_002_64b8

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [$c101]
    sub $10
    inc de
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    add $08
    ld [de], a

jr_002_64b8:
    ld a, [hl]
    and $df
    ld [hl], a
    ld a, [hl]
    bit 4, a
    jp nz, Jump_002_6625

    ld a, [$c231]
    and a
    jr z, jr_002_64cd

    ld a, $02
    ld [$c231], a

jr_002_64cd:
    ld a, [hl]
    and $c0
    ld [hl], a
    jp Jump_002_6628


Jump_002_64d4:
    ld a, [$c231]
    and a
    jr z, jr_002_64df

    ld a, $02
    ld [$c231], a

jr_002_64df:
    call Call_002_67f6
    ld a, [hl]
    or $20
    inc a
    ld [hl], a
    and $0f
    cp $02
    jr z, jr_002_64fd

    cp $08
    jr z, jr_002_6527

    cp $0c
    jr z, jr_002_654c

    cp $0f
    jp z, Jump_002_6571

    jp Jump_002_6625


jr_002_64fd:
    ld a, $16
    ld [$dd01], a
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    inc de
    inc de
    ld a, $6a
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    inc de
    inc de
    ld a, $6a
    ld [de], a
    inc de
    ld a, $22
    ld [de], a
    jp Jump_002_6625


jr_002_6527:
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    inc de
    inc de
    ld a, $6c
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    inc de
    inc de
    ld a, $6c
    ld [de], a
    inc de
    ld a, $22
    ld [de], a
    jp Jump_002_6625


jr_002_654c:
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    inc de
    inc de
    ld a, $6e
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    inc de
    inc de
    ld a, $6e
    ld [de], a
    inc de
    ld a, $22
    ld [de], a
    jp Jump_002_6625


Jump_002_6571:
    xor a
    ld [hl], a
    ld a, [$c264]
    ld de, $c53d
    call Call_000_07ed
    ld a, [de]
    ld b, a
    ld a, [$c264]
    ld de, $c255
    call Call_000_07ed
    ld a, b
    cp $ec
    jr z, jr_002_65bd

    and a
    jr nz, jr_002_65b5

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, $e0
    ld [de], a
    inc de
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, $e0
    ld [de], a
    inc de
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    jr jr_002_6625

jr_002_65b5:
    sub $70
    srl a
    srl a
    jr jr_002_65bf

jr_002_65bd:
    ld a, $08

jr_002_65bf:
    or $80
    ld [de], a
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    inc de
    inc de
    ld a, b
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    ld a, b
    add $02
    ld [de], a
    inc de
    ld a, b
    sub $70
    srl a
    srl a
    and a
    jr z, jr_002_6610

    cp $04
    jr z, jr_002_6610

    cp $06
    jr z, jr_002_6610

    cp $01
    jr z, jr_002_6606

    cp $07
    jr z, jr_002_6606

    cp $08
    jr z, jr_002_6606

    ld a, $16
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    ld [de], a
    jr jr_002_6618

jr_002_6606:
    ld a, $15
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    ld [de], a
    jr jr_002_6618

jr_002_6610:
    ld a, $12
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    ld [de], a

jr_002_6618:
    ld a, [$c264]
    ld de, $c25a
    call Call_000_07ed
    xor a
    ld [de], a
    jr jr_002_6625

Jump_002_6625:
jr_002_6625:
    jp Jump_002_668e


Jump_002_6628:
    ld a, [$c228]
    bit 7, a
    jr nz, jr_002_665a

    ld de, $c100
    ld a, d
    ld [$c52f], a
    ld a, e
    ld [$c530], a
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [$c228]
    call Call_002_66a2
    and a
    jr z, jr_002_665a

    ld b, a
    ld a, [$c228]
    or b
    ld [$c228], a

jr_002_665a:
    ld a, [$c234]
    bit 7, a
    jr nz, jr_002_668c

    ld de, $c108
    ld a, d
    ld [$c52f], a
    ld a, e
    ld [$c530], a
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [$c234]
    call Call_002_66a2
    and a
    jr z, jr_002_668c

    ld b, a
    ld a, [$c234]
    or b
    ld [$c234], a

jr_002_668c:
    jr jr_002_668e

Jump_002_668e:
jr_002_668e:
    inc hl
    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $05
    jp nz, Jump_002_5f85

    call Call_002_6958
    call Call_002_68c8
    ret


Call_002_66a2:
    and $03
    jr z, jr_002_66b3

    cp $01
    jp z, Jump_002_6721

    cp $02
    jp z, Jump_002_6791

    jp Jump_002_67c1


jr_002_66b3:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    ld a, [bc]
    ld b, a
    ld a, [de]
    ld c, a
    ld a, b
    sub c
    cp $0f
    jr c, jr_002_66cd

    cp $f1
    jr nc, jr_002_66cd

    xor a
    jp Jump_002_67f5


jr_002_66cd:
    inc de
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    inc bc
    ld a, [bc]
    ld b, a
    ld a, [de]
    ld c, a
    ld a, b
    sub c
    cp $f0
    jp nc, Jump_002_66e6

    xor a
    jp Jump_002_67f5


Jump_002_66e6:
    ld a, [de]
    cp $90
    jp c, Jump_002_6704

    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    ld a, [de]
    sub $10
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    add $08
    ld [bc], a
    xor a
    jp Jump_002_67f5


Jump_002_6704:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    inc bc
    ld a, [bc]
    add $10
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    add $08
    ld [de], a
    ld a, [hl]
    or $40
    ld [hl], a
    ld a, $10
    jp Jump_002_67f5


Jump_002_6721:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    ld a, [bc]
    ld b, a
    ld a, [de]
    ld c, a
    ld a, b
    sub c
    cp $0f
    jr c, jr_002_673b

    cp $f1
    jr nc, jr_002_673b

    xor a
    jp Jump_002_67f5


jr_002_673b:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    inc bc
    ld a, [bc]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, b
    sub c
    cp $11
    jr c, jr_002_6753

    xor a
    jp Jump_002_67f5


jr_002_6753:
    ld a, [de]
    cp $01
    jp nc, Jump_002_6775

    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    ld a, [de]
    add $10
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    add $08
    ld [bc], a
    ld a, [hl]
    and $bf
    ld [hl], a
    xor a
    jp Jump_002_67f5


Jump_002_6775:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    inc bc
    ld a, [bc]
    sub $10
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    add $08
    ld [de], a
    ld a, [hl]
    or $40
    ld [hl], a
    ld a, $10
    jr jr_002_67f5

Jump_002_6791:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    ld a, [bc]
    ld b, a
    ld a, [de]
    ld c, a
    ld a, b
    sub c
    cp $0f
    jr c, jr_002_67a6

    xor a
    jr jr_002_67f5

jr_002_67a6:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    inc bc
    ld a, [bc]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, b
    sub c
    cp $f8
    jr nc, jr_002_67f1

    cp $08
    jr c, jr_002_67f1

    xor a
    jr jr_002_67f5

Jump_002_67c1:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    ld a, [bc]
    ld b, a
    ld a, [de]
    ld c, a
    ld a, b
    sub c
    cp $f1
    jr nc, jr_002_67d6

    xor a
    jr jr_002_67f5

jr_002_67d6:
    ld a, [$c52f]
    ld b, a
    ld a, [$c530]
    ld c, a
    inc bc
    ld a, [bc]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, b
    sub c
    cp $f8
    jr nc, jr_002_67f1

    cp $08
    jr c, jr_002_67f1

    xor a
    jr jr_002_67f5

jr_002_67f1:
    ld a, $20
    jr jr_002_67f5

Jump_002_67f5:
jr_002_67f5:
    ret


Call_002_67f6:
    ld a, [hl]
    and $3f
    jp z, Jump_002_68c7

    ld c, $00
    ld b, $00

Jump_002_6800:
    ld de, $c265
    ld a, b
    sla a
    call Call_000_07ed
    ld a, [de]
    bit 3, a
    jr z, jr_002_6812

    and $fe
    ld [de], a
    inc c

jr_002_6812:
    inc b
    ld a, b
    cp $03
    jp nz, Jump_002_6800

    ld a, c
    and a
    jp z, Jump_002_68c7

    cp $01
    jr nz, jr_002_683c

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    call Call_002_4d59
    jp Jump_002_68c7


jr_002_683c:
    cp $02
    jr nz, jr_002_6859

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    call Call_002_4d3a
    jr jr_002_68c7

jr_002_6859:
    cp $03
    jr nz, jr_002_6876

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    call Call_002_4d1b
    jr jr_002_68c7

jr_002_6876:
    cp $04
    jr nz, jr_002_6893

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    call Call_002_4cfc
    jr jr_002_68c7

jr_002_6893:
    cp $06
    jr nz, jr_002_68b0

    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    call Call_002_4cdc
    jr jr_002_68c7

jr_002_68b0:
    ld de, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    call Call_002_4cb4

Jump_002_68c7:
jr_002_68c7:
    ret


Call_002_68c8:
    xor a
    ld [$c264], a

Jump_002_68cc:
    ld a, [$c264]
    ld hl, $c24b
    call Call_000_07e6
    ld a, [hl]
    bit 6, a
    jp z, Jump_002_694b

    xor a
    ld [$c52f], a

jr_002_68df:
    ld de, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07ed
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    ld c, a
    ld hl, $c17c
    ld a, [$c264]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    cp b
    jr nz, jr_002_6940

    ld a, [hl]
    sub c
    cp $0f
    jr c, jr_002_6929

    cp $f2
    jr nc, jr_002_6912

    jr jr_002_6940

jr_002_6912:
    ld a, c
    sub $20
    ld [$c101], a
    add $08
    ld [$c105], a
    add $08
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    add $08
    ld [hl], a
    jr jr_002_6957

jr_002_6929:
    ld a, c
    add $10
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    add $08
    ld [hl], a
    add $08
    ld [$c101], a
    add $08
    ld [$c105], a
    jr jr_002_6957

jr_002_6940:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_68df

Jump_002_694b:
    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $05
    jp nz, Jump_002_68cc

jr_002_6957:
    ret


Call_002_6958:
    xor a
    ld [$c264], a

Jump_002_695c:
    ld a, [$c264]
    ld hl, $c24b
    call Call_000_07e6
    ld a, [hl]
    bit 6, a
    jp z, Jump_002_6e79

    ld a, [$c264]
    and a
    jp z, Jump_002_6b23

    cp $01
    jp z, Jump_002_6ccf

    ld a, [$c18c]
    ld b, a
    ld a, [$c18d]
    ld c, a
    ld a, [$c17c]
    cp b
    jp nz, Jump_002_6a51

    ld a, [$c17d]
    sub c
    cp $10
    jr c, jr_002_69f3

    cp $f2
    jr nc, jr_002_6995

    jp Jump_002_6a51


jr_002_6995:
    ld a, [$c17d]
    cp $ef
    jr nc, jr_002_69d0

    xor a
    ld [$c52f], a

jr_002_69a0:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c17c]
    cp d
    jr nz, jr_002_69c3

    ld a, [$c17d]
    sub e
    cp $f1
    jr c, jr_002_69c3

    jr jr_002_69d0

jr_002_69c3:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_69a0

    jr jr_002_69e5

jr_002_69d0:
    ld a, $10
    ld c, a
    ld [$c18d], a
    add $08
    ld [$c191], a
    add $08
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_69e5:
    ld a, c
    sub $10
    ld [$c17d], a
    add $08
    ld [$c181], a
    jp Jump_002_6e85


jr_002_69f3:
    ld a, [$c17d]
    cp $90
    jr nc, jr_002_6a2e

    xor a
    ld [$c52f], a

jr_002_69fe:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c17c]
    cp d
    jr nz, jr_002_6a21

    ld a, [$c17d]
    sub e
    cp $10
    jr nc, jr_002_6a21

    jr jr_002_6a2e

jr_002_6a21:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_69fe

    jr jr_002_6a43

jr_002_6a2e:
    ld a, $80
    ld c, a
    ld [$c18d], a
    add $08
    ld [$c191], a
    ld a, $70
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6a43:
    ld a, c
    add $10
    ld [$c17d], a
    add $08
    ld [$c181], a
    jp Jump_002_6e85


Jump_002_6a51:
    ld a, [$c184]
    cp b
    jp nz, Jump_002_6e85

    ld a, [$c185]
    sub c
    cp $10
    jr c, jr_002_6ac5

    cp $f1
    jr nc, jr_002_6a67

    jp Jump_002_6e85


jr_002_6a67:
    ld a, [$c185]
    cp $ef
    jr nc, jr_002_6aa2

    xor a
    ld [$c52f], a

jr_002_6a72:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c184]
    cp d
    jr nz, jr_002_6a95

    ld a, [$c185]
    sub e
    cp $f1
    jr c, jr_002_6a95

    jr jr_002_6aa2

jr_002_6a95:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6a72

    jr jr_002_6ab7

jr_002_6aa2:
    ld a, $10
    ld c, a
    ld [$c18d], a
    add $08
    ld [$c191], a
    add $08
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6ab7:
    ld a, c
    sub $10
    ld [$c185], a
    add $08
    ld [$c189], a
    jp Jump_002_6e85


jr_002_6ac5:
    ld a, [$c185]
    cp $90
    jr nc, jr_002_6b00

    xor a
    ld [$c52f], a

jr_002_6ad0:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c184]
    cp d
    jr nz, jr_002_6af3

    ld a, [$c185]
    sub e
    cp $10
    jr nc, jr_002_6af3

    jr jr_002_6b00

jr_002_6af3:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6ad0

    jr jr_002_6b15

jr_002_6b00:
    ld a, $80
    ld c, a
    ld [$c18d], a
    add $08
    ld [$c191], a
    ld a, $70
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6b15:
    ld a, c
    add $10
    ld [$c185], a
    add $08
    ld [$c189], a
    jp Jump_002_6e85


Jump_002_6b23:
    ld a, [$c17c]
    ld b, a
    ld a, [$c17d]
    ld c, a
    ld a, [$c184]
    cp b
    jp nz, Jump_002_6bfd

    ld a, [$c185]
    sub c
    cp $10
    jr c, jr_002_6b9f

    cp $f1
    jr nc, jr_002_6b41

    jp Jump_002_6bfd


jr_002_6b41:
    ld a, [$c185]
    cp $ef
    jr nc, jr_002_6b7c

    xor a
    ld [$c52f], a

jr_002_6b4c:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c184]
    cp d
    jr nz, jr_002_6b6f

    ld a, [$c185]
    sub e
    cp $f1
    jr c, jr_002_6b6f

    jr jr_002_6b7c

jr_002_6b6f:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6b4c

    jr jr_002_6b91

jr_002_6b7c:
    ld a, $10
    ld c, a
    ld [$c17d], a
    add $08
    ld [$c181], a
    add $08
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6b91:
    ld a, c
    sub $10
    ld [$c185], a
    add $08
    ld [$c189], a
    jp Jump_002_6e85


jr_002_6b9f:
    ld a, [$c185]
    cp $90
    jr nc, jr_002_6bda

    xor a
    ld [$c52f], a

jr_002_6baa:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c184]
    cp d
    jr nz, jr_002_6bcd

    ld a, [$c185]
    sub e
    cp $10
    jr nc, jr_002_6bcd

    jr jr_002_6bda

jr_002_6bcd:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6baa

    jr jr_002_6bef

jr_002_6bda:
    ld a, $80
    ld c, a
    ld [$c17d], a
    add $08
    ld [$c181], a
    ld a, $70
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6bef:
    ld a, c
    add $10
    ld [$c185], a
    add $08
    ld [$c189], a
    jp Jump_002_6e85


Jump_002_6bfd:
    ld a, [$c18c]
    cp b
    jp nz, Jump_002_6e85

    ld a, [$c18d]
    sub c
    cp $10
    jr c, jr_002_6c71

    cp $f1
    jr nc, jr_002_6c13

    jp Jump_002_6e85


jr_002_6c13:
    ld a, [$c18d]
    cp $ef
    jr nc, jr_002_6c4e

    xor a
    ld [$c52f], a

jr_002_6c1e:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c18c]
    cp d
    jr nz, jr_002_6c41

    ld a, [$c18d]
    sub e
    cp $f1
    jr c, jr_002_6c41

    jr jr_002_6c4e

jr_002_6c41:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6c1e

    jr jr_002_6c63

jr_002_6c4e:
    ld a, $10
    ld c, a
    ld [$c17d], a
    add $08
    ld [$c181], a
    add $08
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6c63:
    ld a, c
    sub $10
    ld [$c18d], a
    add $08
    ld [$c191], a
    jp Jump_002_6e85


jr_002_6c71:
    ld a, [$c18d]
    cp $90
    jr nc, jr_002_6cac

    xor a
    ld [$c52f], a

jr_002_6c7c:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c18c]
    cp d
    jr nz, jr_002_6c9f

    ld a, [$c18d]
    sub e
    cp $10
    jr nc, jr_002_6c9f

    jr jr_002_6cac

jr_002_6c9f:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6c7c

    jr jr_002_6cc1

jr_002_6cac:
    ld a, $80
    ld c, a
    ld [$c17d], a
    add $08
    ld [$c181], a
    ld a, $70
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6cc1:
    ld a, c
    add $10
    ld [$c18d], a
    add $08
    ld [$c191], a
    jp Jump_002_6e85


Jump_002_6ccf:
    ld a, [$c184]
    ld b, a
    ld a, [$c185]
    ld c, a
    ld a, [$c17c]
    cp b
    jp nz, Jump_002_6da9

    ld a, [$c17d]
    sub c
    cp $10
    jr c, jr_002_6d4b

    cp $f1
    jr nc, jr_002_6ced

    jp Jump_002_6da9


jr_002_6ced:
    ld a, [$c17d]
    cp $ef
    jr nc, jr_002_6d28

    xor a
    ld [$c52f], a

jr_002_6cf8:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c17c]
    cp d
    jr nz, jr_002_6d1b

    ld a, [$c17d]
    sub e
    cp $f1
    jr c, jr_002_6d1b

    jr jr_002_6d28

jr_002_6d1b:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6cf8

    jr jr_002_6d3d

jr_002_6d28:
    ld a, $10
    ld c, a
    ld [$c185], a
    add $08
    ld [$c189], a
    add $08
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6d3d:
    ld a, c
    sub $10
    ld [$c17d], a
    add $08
    ld [$c181], a
    jp Jump_002_6e85


jr_002_6d4b:
    ld a, [$c17d]
    cp $90
    jr nc, jr_002_6d86

    xor a
    ld [$c52f], a

jr_002_6d56:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c17c]
    cp d
    jr nz, jr_002_6d79

    ld a, [$c17d]
    sub e
    cp $10
    jr nc, jr_002_6d79

    jr jr_002_6d86

jr_002_6d79:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6d56

    jr jr_002_6d9b

jr_002_6d86:
    ld a, $80
    ld c, a
    ld [$c185], a
    add $08
    ld [$c189], a
    ld a, $70
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6d9b:
    ld a, c
    add $10
    ld [$c17d], a
    add $08
    ld [$c181], a
    jp Jump_002_6e85


Jump_002_6da9:
    ld a, [$c18c]
    cp b
    jp nz, Jump_002_6e85

    ld a, [$c18d]
    sub c
    cp $10
    jr c, jr_002_6e1c

    cp $f1
    jr nc, jr_002_6dbf

    jp Jump_002_6e85


jr_002_6dbf:
    ld a, [$c18d]
    cp $ef
    jr nc, jr_002_6dfa

    xor a
    ld [$c52f], a

jr_002_6dca:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c18c]
    cp d
    jr nz, jr_002_6ded

    ld a, [$c18d]
    sub e
    cp $f1
    jr c, jr_002_6ded

    jr jr_002_6dfa

jr_002_6ded:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6dca

    jr jr_002_6e0f

jr_002_6dfa:
    ld a, $10
    ld c, a
    ld [$c185], a
    add $08
    ld [$c189], a
    add $08
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6e0f:
    ld a, c
    sub $10
    ld [$c18d], a
    add $08
    ld [$c191], a
    jr jr_002_6e85

jr_002_6e1c:
    ld a, [$c18d]
    cp $90
    jr nc, jr_002_6e57

    xor a
    ld [$c52f], a

jr_002_6e27:
    ld hl, $c144
    ld a, [$c52f]
    sla a
    sla a
    sla a
    call Call_000_07e6
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c18c]
    cp d
    jr nz, jr_002_6e4a

    ld a, [$c18d]
    sub e
    cp $10
    jr nc, jr_002_6e4a

    jr jr_002_6e57

jr_002_6e4a:
    ld a, [$c52f]
    inc a
    ld [$c52f], a
    cp $03
    jr nz, jr_002_6e27

    jr jr_002_6e6c

jr_002_6e57:
    ld a, $80
    ld c, a
    ld [$c185], a
    add $08
    ld [$c189], a
    ld a, $70
    ld [$c101], a
    add $08
    ld [$c105], a

jr_002_6e6c:
    ld a, c
    add $10
    ld [$c18d], a
    add $08
    ld [$c191], a
    jr jr_002_6e85

Jump_002_6e79:
    ld a, [$c264]
    inc a
    ld [$c264], a
    cp $05
    jp nz, Jump_002_695c

Jump_002_6e85:
jr_002_6e85:
    ld a, [$c24b]
    bit 7, a
    jp z, Jump_002_6ef0

    ld a, [$c24c]
    bit 7, a
    jr z, jr_002_6ef0

    ld a, [$c250]
    bit 0, a
    jr nz, jr_002_6ef0

    ld a, [$c251]
    bit 0, a
    jr nz, jr_002_6ef0

    ld a, [$c17d]
    ld b, a
    ld a, [$c185]
    sub b
    cp $10
    jr c, jr_002_6eb4

    cp $f1
    jr nc, jr_002_6eb4

    jr jr_002_6ef0

jr_002_6eb4:
    ld a, [$c17c]
    ld b, a
    ld a, [$c184]
    sub b
    cp $10
    jr c, jr_002_6ec6

    cp $f1
    jr nc, jr_002_6ed3

    jr jr_002_6ef0

jr_002_6ec6:
    ld a, [$c24b]
    bit 4, a
    jr z, jr_002_6ef0

    xor a
    ld [$c53d], a
    jr jr_002_6ee0

jr_002_6ed3:
    ld a, [$c24c]
    bit 4, a
    jr z, jr_002_6ef0

    xor a
    ld [$c53e], a
    jr jr_002_6ee0

jr_002_6ee0:
    ld a, $b1
    ld [$c24b], a
    ld [$c24c], a
    ld a, $01
    ld [$c251], a
    ld [$c250], a

Jump_002_6ef0:
jr_002_6ef0:
    ld a, [$c24b]
    bit 7, a
    jp z, Jump_002_6f5b

    ld a, [$c24d]
    bit 7, a
    jr z, jr_002_6f5b

    ld a, [$c250]
    bit 0, a
    jr nz, jr_002_6f5b

    ld a, [$c252]
    bit 0, a
    jr nz, jr_002_6f5b

    ld a, [$c17d]
    ld b, a
    ld a, [$c18d]
    sub b
    cp $10
    jr c, jr_002_6f1f

    cp $f1
    jr nc, jr_002_6f1f

    jr jr_002_6f5b

jr_002_6f1f:
    ld a, [$c17c]
    ld b, a
    ld a, [$c18c]
    sub b
    cp $10
    jr c, jr_002_6f31

    cp $f1
    jr nc, jr_002_6f3e

    jr jr_002_6f5b

jr_002_6f31:
    ld a, [$c24b]
    bit 4, a
    jr z, jr_002_6f5b

    xor a
    ld [$c53d], a
    jr jr_002_6f4b

jr_002_6f3e:
    ld a, [$c24d]
    bit 4, a
    jr z, jr_002_6f5b

    xor a
    ld [$c53f], a
    jr jr_002_6f4b

jr_002_6f4b:
    ld a, $b1
    ld [$c24b], a
    ld [$c24d], a
    ld a, $01
    ld [$c250], a
    ld [$c252], a

Jump_002_6f5b:
jr_002_6f5b:
    ld a, [$c24c]
    bit 7, a
    jp z, Jump_002_6fc6

    ld a, [$c24d]
    bit 7, a
    jr z, jr_002_6fc6

    ld a, [$c251]
    bit 0, a
    jr nz, jr_002_6fc6

    ld a, [$c252]
    bit 0, a
    jr nz, jr_002_6fc6

    ld a, [$c185]
    ld b, a
    ld a, [$c18d]
    sub b
    cp $10
    jr c, jr_002_6f8a

    cp $f1
    jr nc, jr_002_6f8a

    jr jr_002_6fc6

jr_002_6f8a:
    ld a, [$c184]
    ld b, a
    ld a, [$c18c]
    sub b
    cp $10
    jr c, jr_002_6f9c

    cp $f1
    jr nc, jr_002_6fa9

    jr jr_002_6fc6

jr_002_6f9c:
    ld a, [$c24c]
    bit 4, a
    jr z, jr_002_6fc6

    xor a
    ld [$c53e], a
    jr jr_002_6fb6

jr_002_6fa9:
    ld a, [$c24d]
    bit 4, a
    jr z, jr_002_6f5b

    xor a
    ld [$c53f], a
    jr jr_002_6fb6

jr_002_6fb6:
    ld a, $b1
    ld [$c24c], a
    ld [$c24d], a
    ld a, $01
    ld [$c251], a
    ld [$c252], a

Jump_002_6fc6:
jr_002_6fc6:
    ret


Call_002_6fc7:
    ld a, [$c534]
    and a
    jr z, jr_002_6fd2

    ld hl, $c236
    jr jr_002_6fd5

jr_002_6fd2:
    ld hl, $c22a

jr_002_6fd5:
    ld a, h
    ld [$c52f], a
    ld a, l
    ld [$c530], a
    call Call_002_71f5
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    ld c, a
    ld hl, $c271
    add hl, bc
    dec hl
    ld a, [$c100]
    cp $09
    jr c, jr_002_6ff9

    ld a, l
    sub $14
    ld l, a
    ld a, h
    sbc $00
    ld h, a

jr_002_6ff9:
    ld de, $c3f0
    ld c, $04

jr_002_6ffe:
    ld b, $04

jr_002_7000:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_7000

    ld a, $10
    call Call_000_07e6
    dec c
    jr nz, jr_002_6ffe

    call Call_002_71f5
    inc hl
    inc hl
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    ld c, a
    ld hl, $9840
    add hl, bc
    ld a, [$c100]
    cp $09
    jr c, jr_002_702b

    ld a, l
    sub $20
    ld l, a
    ld a, h
    sbc $00
    ld h, a

jr_002_702b:
    ld e, l
    ld d, h
    dec de
    ld hl, $c3ed
    call Call_000_0838
    ld a, [$c534]
    inc a
    and $01
    ld [$c534], a
    ret


Call_002_703e:
    ldh a, [$8c]
    and $f0
    ld b, a
    ldh a, [$8d]
    and $0f
    add b
    ld b, a
    and $30
    jr z, jr_002_7053

    ld a, b
    and $3f
    ld b, a
    jr jr_002_705c

jr_002_7053:
    ld a, b
    and $c0
    jr z, jr_002_705c

    ld a, b
    and $cf
    ld b, a

jr_002_705c:
    ld a, b
    and $30
    jr z, jr_002_70a4

    ld hl, $c100
    ld a, [hl]
    and $0f
    ld c, a
    jr z, jr_002_70a4

    cp $01
    jr nz, jr_002_707c

    ld a, [$c100]
    and $f0
    ld [$c100], a
    ld [$c104], a
    ld a, b
    jr jr_002_70ec

jr_002_707c:
    cp $0f
    jr nz, jr_002_7090

    ld a, [$c100]
    and $f0
    add $10
    ld [$c100], a
    ld [$c104], a
    ld a, b
    jr jr_002_70ec

jr_002_7090:
    ld a, c
    cp $08
    jr nc, jr_002_709c

    ld a, b
    or $40
    and $4f
    jr jr_002_70a1

jr_002_709c:
    ld a, b
    or $80
    and $8f

jr_002_70a1:
    ld b, a
    jr jr_002_70ec

jr_002_70a4:
    ld a, b
    and $c0
    jr z, jr_002_70ec

    ld hl, $c101
    ld a, [hl]
    and $0f
    ld c, a
    jr z, jr_002_70ec

    cp $01
    jr nz, jr_002_70c6

    ld a, [$c101]
    and $f0
    ld [$c101], a
    add $08
    ld [$c105], a
    ld a, b
    jr jr_002_70ec

jr_002_70c6:
    cp $0f
    jr nz, jr_002_70da

    ld a, [hl]
    and $f0
    add $10
    ld [$c101], a
    add $08
    ld [$c105], a
    ld a, b
    jr jr_002_70ec

jr_002_70da:
    ld a, c
    cp $08
    jr nc, jr_002_70e6

    ld a, b
    or $20
    and $2f
    jr jr_002_70eb

jr_002_70e6:
    ld a, b
    or $10
    and $1f

jr_002_70eb:
    ld b, a

jr_002_70ec:
    ld a, $08

jr_002_70ee:
    rl b
    jr c, jr_002_70f6

    dec a
    jr nz, jr_002_70ee

    ret


jr_002_70f6:
    dec a
    call Call_000_0775

    db $68, $77, $68, $77

    rrca
    ld [hl], c
    ld a, [bc]
    ld [hl], c

    db $f0, $77, $66, $78, $e0, $78, $4c, $79

    ld a, $01
    ld [$c203], a
    ret


Call_002_7110:
    ld [$c201], a
    and a
    jr z, jr_002_711f

    ld hl, $c108
    ld a, [$c234]
    ld b, a
    jr jr_002_7126

jr_002_711f:
    ld hl, $c100
    ld a, [$c228]
    ld b, a

jr_002_7126:
    ld a, h
    ld [$c52f], a
    ld a, l
    ld [$c530], a
    ld a, b
    ld [$c264], a
    call Call_002_71f5
    inc hl
    ld a, [hl]
    ld b, a
    ld a, [$c264]
    and $03
    jr nz, jr_002_7145

    ld c, a
    ld a, b
    add $0c
    ld b, a
    ld a, c

jr_002_7145:
    cp $01
    jr nz, jr_002_714f

    ld c, a
    ld a, b
    add $03
    ld b, a
    ld a, c

jr_002_714f:
    srl b
    srl b
    srl b
    call Call_002_71f5
    ld a, [hl]
    ld e, a
    ld a, [$c264]
    and $03
    cp $02
    jr nz, jr_002_7166

    inc e
    inc e
    inc e

jr_002_7166:
    cp $03
    jr nz, jr_002_7170

    ld c, a
    ld a, e
    add $0c
    ld e, a
    ld a, c

jr_002_7170:
    srl e
    srl e
    srl e
    ld h, e
    ld a, e
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
    ld a, b
    call Call_000_07ed
    ld a, [$c201]
    and a
    jr z, jr_002_71a4

    ld a, d
    ld [$c236], a
    ld a, e
    ld [$c237], a
    jr jr_002_71ac

jr_002_71a4:
    ld a, d
    ld [$c22a], a
    ld a, e
    ld [$c22b], a

jr_002_71ac:
    xor a
    ld c, h
    sla c
    adc $00
    sla c
    adc $00
    sla c
    adc $00
    sla c
    adc $00
    jr nz, jr_002_71c6

    sla c
    adc $00
    jr jr_002_71cc

jr_002_71c6:
    sla a
    sla c
    adc $00

jr_002_71cc:
    ld h, a
    ld a, [$c201]
    and a
    jr z, jr_002_71e2

    ld a, b
    add c
    ld c, a
    ld [$c239], a
    ld a, h
    adc $00
    ld b, a
    ld [$c238], a
    jr jr_002_71ef

jr_002_71e2:
    ld a, b
    add c
    ld c, a
    ld [$c22d], a
    ld a, h
    adc $00
    ld b, a
    ld [$c22c], a

jr_002_71ef:
    ld hl, $c271
    add hl, de
    ld a, [hl]
    ret


Call_002_71f5:
    ld a, [$c52f]
    ld h, a
    ld a, [$c530]
    ld l, a
    ret


Call_002_71fe:
    ld d, h
    ld e, l
    ld a, [hl]
    cp $1d
    jr c, jr_002_7206

    xor a

jr_002_7206:
    push de
    call Call_000_0775

    db $80, $72, $51, $72, $80, $72, $5c, $72, $4a, $72

    ld d, l
    ld [hl], d

    db $80, $72

    add b
    ld [hl], d

    db $62, $72

    ld h, [hl]
    ld [hl], d
    ld e, h
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d

    db $80, $72, $4e, $72

    add b
    ld [hl], d

    db $6a, $72

    add b
    ld [hl], d
    ld e, a
    ld [hl], d
    add b
    ld [hl], d

    db $46, $72

    add b
    ld [hl], d
    ld l, [hl]
    ld [hl], d
    add b
    ld [hl], d
    ld [hl], l
    ld [hl], d
    add b
    ld [hl], d
    ld e, c
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d

    ld a, $14
    jr jr_002_7279

    ld a, $04
    jr jr_002_7279

    call Call_002_4c87
    ld a, $04
    jr jr_002_728d

    ld a, $02
    jr jr_002_728d

    call Call_002_4c87

    xor a
    jr jr_002_728d

    call Call_002_4c87

    ld a, $06
    jr jr_002_728d

    ld a, $0c
    jr jr_002_728d

    ld a, $14
    jr jr_002_728d

    call Call_002_4c87
    ld a, $02
    jr jr_002_728d

    ld a, $1c
    jr jr_002_728d

jr_002_7279:
    ld hl, $c228
    bit 3, [hl]
    jr nz, jr_002_728d

    pop de
    ld a, [$c228]
    and $f7
    ld [$c228], a
    ld h, d
    ld l, e
    jr jr_002_729b

jr_002_728d:
    pop de
    ld h, d
    ld l, e
    ld [hl], a
    ld a, [$c228]
    or $08
    ld [$c228], a
    ld h, d
    ld l, e

jr_002_729b:
    inc hl
    ld a, [hl]
    push de
    push hl
    cp $1d
    jr c, jr_002_72a4

    xor a

jr_002_72a4:
    call Call_000_0775

    db $12, $73, $e3, $72, $12, $73, $e9, $72

    xor $72

    db $12, $73, $12, $73, $12, $73, $f4, $72, $fa, $72

    ld [de], a
    ld [hl], e
    jp hl


    ld [hl], d

    db $12, $73, $12, $73

    ld [de], a
    ld [hl], e

    db $e3, $72

    ld [de], a
    ld [hl], e

    db $00, $73

    ld [de], a
    ld [hl], e
    ld a, [$1272]
    ld [hl], e

    db $12, $73

    ld [de], a
    ld [hl], e
    xor $72
    ld [de], a
    ld [hl], e
    inc c
    ld [hl], e
    ld [de], a
    ld [hl], e
    jp hl


    ld [hl], d
    ld [de], a
    ld [hl], e
    ld [de], a
    ld [hl], e

    pop hl
    pop de
    ld a, $05
    jr jr_002_7316

    pop hl
    pop de
    xor a
    jr jr_002_7316

    pop hl
    pop de
    ld a, $02
    jr jr_002_7316

    pop hl
    pop de
    ld a, $0d
    jr jr_002_7316

    pop hl
    pop de
    ld a, $07
    jr jr_002_7316

    pop hl
    pop de
    ld a, $15
    jr jr_002_7316

    pop hl
    pop de
    ld a, $1d
    jr jr_002_7316

    pop hl
    pop de
    ld a, $1d
    jr jr_002_7316

    pop hl
    pop de
    jr jr_002_7317

jr_002_7316:
    ld [hl], a

jr_002_7317:
    ld h, d
    ld l, e
    ld a, $14
    call Call_000_07e6
    ld a, [hl]
    cp $02
    jr z, jr_002_7335

    cp $0c
    jr z, jr_002_7335

    cp $1c
    jr z, jr_002_7335

    cp $04
    jr z, jr_002_7338

    cp $14
    jr z, jr_002_7338

    jr jr_002_733d

jr_002_7335:
    xor a
    jr jr_002_733c

jr_002_7338:
    ld a, $06
    jr jr_002_733c

jr_002_733c:
    ld [hl], a

jr_002_733d:
    inc hl
    ld a, [hl]
    cp $02
    jr z, jr_002_7355

    cp $0d
    jr z, jr_002_7355

    cp $1d
    jr z, jr_002_7355

    cp $05
    jr z, jr_002_7358

    cp $15
    jr z, jr_002_7358

    jr jr_002_735b

jr_002_7355:
    xor a
    jr jr_002_735a

jr_002_7358:
    ld a, $07

jr_002_735a:
    ld [hl], a

jr_002_735b:
    ret


Call_002_735c:
    ld d, h
    ld e, l
    ld a, [hl]
    push de
    cp $1e
    jr c, jr_002_7365

    xor a

jr_002_7365:
    call Call_000_0775

    db $de, $73, $a7, $73, $b9, $73, $de, $73

    or d
    ld [hl], e
    db $c3
    ld [hl], e

    db $de, $73

    sbc $73

    db $ab, $73

    cp a
    ld [hl], e
    sbc $73
    sbc $73
    cp c
    ld [hl], e

    db $de, $73, $c7, $73

    sbc $73

    db $a4, $73

    sbc $73

    db $cb, $73

    sbc $73
    xor a
    ld [hl], e
    sbc $73
    db $d3
    ld [hl], e
    sbc $73
    cp h
    ld [hl], e
    sbc $73
    sbc $73
    sbc $73
    or [hl]
    ld [hl], e
    cp c
    ld [hl], e

    call Call_002_4c87
    ld a, $08
    jr jr_002_73eb

    ld a, $08
    jr jr_002_73d7

    call Call_002_4c87
    ld a, $06
    jr jr_002_73eb

    call Call_002_4c87

    xor a
    jr jr_002_73eb

    call Call_002_4c87
    ld a, $03
    jr jr_002_73eb

    ld a, $0a
    jr jr_002_73eb

    ld a, $12
    jr jr_002_73eb

    ld a, $12
    jr jr_002_73d7

    ld a, $1a
    jr jr_002_73eb

    ld a, $1a
    jr jr_002_73eb

jr_002_73d7:
    ld hl, $c228
    bit 3, [hl]
    jr nz, jr_002_73eb

    ld a, [$c228]
    and $f7
    ld [$c228], a
    pop de
    ld h, d
    ld l, e
    jr jr_002_73f9

jr_002_73eb:
    pop de
    ld h, d
    ld l, e
    ld [hl], a
    ld a, [$c228]
    or $08
    ld [$c228], a
    ld h, d
    ld l, e

jr_002_73f9:
    inc hl
    ld a, [hl]
    push de
    push hl
    cp $1e
    jr c, jr_002_7402

    xor a

jr_002_7402:
    call Call_000_0775

    db $6a, $74, $41, $74, $47, $74, $6a, $74

    ld c, h
    ld [hl], h

    db $52, $74

    ld l, d
    ld [hl], h

    db $6a, $74

    ld e, b
    ld [hl], h

    db $6a, $74

    ld l, d
    ld [hl], h
    ld l, d
    ld [hl], h
    ld l, d
    ld [hl], h
    ld b, a
    ld [hl], h
    ld l, d
    ld [hl], h

    db $5e, $74

    ld l, d
    ld [hl], h

    db $41, $74

    ld l, d
    ld [hl], h

    db $6a, $74

    ld l, d
    ld [hl], h
    ld d, d
    ld [hl], h
    ld l, d
    ld [hl], h
    ld h, h
    ld [hl], h
    ld l, d
    ld [hl], h
    ld e, b
    ld [hl], h
    ld l, d
    ld [hl], h
    ld l, d
    ld [hl], h
    ld b, a
    ld [hl], h
    ld b, a
    ld [hl], h

    pop hl
    pop de
    ld a, $09
    jr jr_002_746e

    pop hl
    pop de
    xor a
    jr jr_002_746e

    pop hl
    pop de
    ld a, $0b
    jr jr_002_746e

    pop hl
    pop de
    ld a, $07
    jr jr_002_746e

    pop hl
    pop de
    ld a, $03
    jr jr_002_746e

    pop hl
    pop de
    ld a, $13
    jr jr_002_746e

    pop hl
    pop de
    ld a, $1b
    jr jr_002_746e

    pop hl
    pop de
    jr jr_002_746f

jr_002_746e:
    ld [hl], a

jr_002_746f:
    ld h, d
    ld l, e
    ld a, l
    sub $14
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, [hl]
    cp $03
    jr z, jr_002_7490

    cp $0a
    jr z, jr_002_7490

    cp $1a
    jr z, jr_002_7490

    cp $08
    jr z, jr_002_7493

    cp $12
    jr z, jr_002_7493

    jr jr_002_7498

jr_002_7490:
    xor a
    jr jr_002_7497

jr_002_7493:
    ld a, $06
    jr jr_002_7497

jr_002_7497:
    ld [hl], a

jr_002_7498:
    inc hl
    ld a, [hl]
    cp $03
    jr z, jr_002_74b0

    cp $0b
    jr z, jr_002_74b0

    cp $1b
    jr z, jr_002_74b0

    cp $09
    jr z, jr_002_74b3

    cp $13
    jr z, jr_002_74b3

    jr jr_002_74b6

jr_002_74b0:
    xor a
    jr jr_002_74b5

jr_002_74b3:
    ld a, $07

jr_002_74b5:
    ld [hl], a

jr_002_74b6:
    ret


Call_002_74b7:
    ld d, h
    ld e, l
    ld a, [hl]
    push de
    cp $1d
    jr c, jr_002_74c0

    xor a

jr_002_74c0:
    call Call_000_0775

    db $35, $75, $02, $75, $35, $75

    dec [hl]
    ld [hl], l

    db $06, $75, $0d, $75, $35, $75, $14, $75

    ld e, $75
    rla
    ld [hl], l
    inc d
    ld [hl], l
    dec [hl]
    ld [hl], l

    db $35, $75, $35, $75, $ff, $74, $22, $75

    dec [hl]
    ld [hl], l
    dec [hl]
    ld [hl], l
    dec de
    ld [hl], l
    ld a, [hl+]
    ld [hl], l
    dec [hl]
    ld [hl], l
    dec [hl]
    ld [hl], l
    ld a, [bc]
    ld [hl], l

    db $26, $75

    dec [hl]
    ld [hl], l
    dec [hl]
    ld [hl], l
    ld de, $3575
    ld [hl], l
    dec [hl]
    ld [hl], l
    dec [hl]
    ld [hl], l

    call Call_002_4c87
    ld a, $04
    jr jr_002_7542

    ld a, $04
    jr jr_002_752e

    call Call_002_4c87

    ld a, $02
    jr jr_002_7542

    call Call_002_4c87

    xor a
    jr jr_002_7542

    ld a, $0b
    jr jr_002_7542

    call Call_002_4c87
    ld a, $06
    jr jr_002_7542

    ld a, $17
    jr jr_002_7542

    ld a, $17
    jr jr_002_752e

    ld a, $1b
    jr jr_002_7542

jr_002_752e:
    ld hl, $c228
    bit 3, [hl]
    jr nz, jr_002_7542

    ld a, [$c228]
    and $f7
    ld [$c228], a
    pop de
    ld h, d
    ld l, e
    jr jr_002_7550

jr_002_7542:
    pop de
    ld h, d
    ld l, e
    ld [hl], a
    ld a, [$c228]
    or $08
    ld [$c228], a
    ld h, d
    ld l, e

jr_002_7550:
    ld a, $14
    call Call_000_07e6
    ld a, [hl]
    push de
    push hl
    cp $1d
    jr c, jr_002_755d

    xor a

jr_002_755d:
    call Call_000_0775

    db $c5, $75, $a8, $75

    push bc
    ld [hl], l

    db $c5, $75

    xor [hl]
    ld [hl], l
    cp a
    ld [hl], l

    db $c5, $75, $ba, $75, $c5, $75, $b4, $75

    push bc
    ld [hl], l

    db $c5, $75

    cp d
    ld [hl], l
    push bc
    ld [hl], l
    push bc
    ld [hl], l
    push bc
    ld [hl], l

    db $a8, $75, $9c, $75

    push bc
    ld [hl], l
    push bc
    ld [hl], l
    xor [hl]
    ld [hl], l
    and d
    ld [hl], l
    push bc
    ld [hl], l
    push bc
    ld [hl], l
    or h
    ld [hl], l

    db $c5, $75

    push bc
    ld [hl], l
    push bc
    ld [hl], l
    cp d
    ld [hl], l
    push bc
    ld [hl], l

    pop hl
    pop de
    ld a, $19
    jr jr_002_75c9

    pop hl
    pop de
    ld a, $1d
    jr jr_002_75c9

    pop hl
    pop de
    ld a, $08
    jr jr_002_75c9

    pop hl
    pop de
    ld a, $06
    jr jr_002_75c9

    pop hl
    pop de
    ld a, $03
    jr jr_002_75c9

    pop hl
    pop de
    xor a
    jr jr_002_75c9

    pop hl
    pop de
    ld a, $0d
    jr jr_002_75c9

    pop hl
    pop de
    jr jr_002_75ca

jr_002_75c9:
    ld [hl], a

jr_002_75ca:
    ld h, d
    ld l, e
    inc hl
    ld a, [hl]
    cp $06
    jr z, jr_002_75e4

    cp $0b
    jr z, jr_002_75e4

    cp $1b
    jr z, jr_002_75e4

    cp $04
    jr z, jr_002_75e7

    cp $17
    jr z, jr_002_75e7

    jr jr_002_75ec

jr_002_75e4:
    xor a
    jr jr_002_75eb

jr_002_75e7:
    ld a, $02
    jr jr_002_75eb

jr_002_75eb:
    ld [hl], a

jr_002_75ec:
    ld a, $14
    call Call_000_07e6
    ld a, [hl]
    cp $06
    jr z, jr_002_7608

    cp $0d
    jr z, jr_002_7608

    cp $1d
    jr z, jr_002_7608

    cp $08
    jr z, jr_002_760b

    cp $19
    jr z, jr_002_760b

    jr jr_002_760e

jr_002_7608:
    xor a
    jr jr_002_760d

jr_002_760b:
    ld a, $03

jr_002_760d:
    ld [hl], a

jr_002_760e:
    ret


Call_002_760f:
    ld d, h
    ld e, l
    ld a, [hl]
    push de
    cp $1e
    jr c, jr_002_7618

    xor a

jr_002_7618:
    call Call_000_0775

    db $8d, $76, $5a, $76, $8d, $76

    adc l
    db $76

    db $65, $76, $5e, $76, $6c, $76, $8d, $76

    ld l, a
    db $76
    db $76
    db $76
    adc l
    db $76
    ld l, h
    db $76

    db $8d, $76

    adc l
    db $76

    db $7a, $76, $57, $76

    adc l
    db $76
    adc l
    db $76
    add d
    db $76
    ld [hl], e
    db $76
    adc l
    db $76
    adc l
    db $76

    db $7a, $76

    ld h, d
    db $76
    adc l
    db $76
    adc l
    db $76
    adc l
    db $76
    ld l, c
    db $76
    adc l
    db $76
    ld l, h
    db $76

    call Call_002_4c87
    ld a, $05
    jr jr_002_769a

    ld a, $05
    jr jr_002_7686

    call Call_002_4c87

    ld a, $02
    jr jr_002_769a

    call Call_002_4c87

    xor a
    jr jr_002_769a

    ld a, $0a
    jr jr_002_769a

    call Call_002_4c87
    ld a, $07
    jr jr_002_769a

    ld a, $16
    jr jr_002_769a

    ld a, $16
    jr jr_002_7686

    ld a, $1a
    jr jr_002_769a

jr_002_7686:
    ld hl, $c228
    bit 3, [hl]
    jr nz, jr_002_769a

    ld a, [$c228]
    and $f7
    ld [$c228], a
    pop de
    ld h, d
    ld l, e
    jr jr_002_76a8

jr_002_769a:
    pop de
    ld h, d
    ld l, e
    ld [hl], a
    ld a, [$c228]
    or $08
    ld [$c228], a
    ld h, d
    ld l, e

jr_002_76a8:
    ld a, $14
    call Call_000_07e6
    ld a, [hl]
    push de
    push hl
    cp $1e
    jr c, jr_002_76b5

    xor a

jr_002_76b5:
    call Call_000_0775

    db $1d, $77, $00, $77

    dec e
    ld [hl], a

    db $1d, $77

    rla
    ld [hl], a
    ld b, $77

    db $12, $77, $1d, $77, $0c, $77, $1d, $77, $1d, $77

    dec e
    ld [hl], a
    dec e
    ld [hl], a
    ld [de], a
    ld [hl], a
    dec e
    ld [hl], a
    dec e
    ld [hl], a

    db $f4, $76, $00, $77

    dec e
    ld [hl], a
    dec e
    ld [hl], a
    ld a, [$0676]
    ld [hl], a
    dec e
    ld [hl], a
    dec e
    ld [hl], a

    db $1d, $77

    inc c
    ld [hl], a
    dec e
    ld [hl], a
    dec e
    ld [hl], a
    dec e
    ld [hl], a
    ld [de], a
    ld [hl], a

    pop hl
    pop de
    ld a, $18
    jr jr_002_7721

    pop hl
    pop de
    ld a, $1c
    jr jr_002_7721

    pop hl
    pop de
    ld a, $09
    jr jr_002_7721

    pop hl
    pop de
    ld a, $07
    jr jr_002_7721

    pop hl
    pop de
    ld a, $03
    jr jr_002_7721

    pop hl
    pop de
    xor a
    jr jr_002_7721

    pop hl
    pop de
    ld a, $0c
    jr jr_002_7721

    pop hl
    pop de
    jr jr_002_7722

jr_002_7721:
    ld [hl], a

jr_002_7722:
    ld h, d
    ld l, e
    dec hl
    ld a, [hl]
    cp $07
    jr z, jr_002_773c

    cp $0a
    jr z, jr_002_773c

    cp $1a
    jr z, jr_002_773c

    cp $05
    jr z, jr_002_773f

    cp $16
    jr z, jr_002_773f

    jr jr_002_7744

jr_002_773c:
    xor a
    jr jr_002_7743

jr_002_773f:
    ld a, $02
    jr jr_002_7743

jr_002_7743:
    ld [hl], a

jr_002_7744:
    ld a, $14
    call Call_000_07e6
    ld a, [hl]
    cp $07
    jr z, jr_002_7760

    cp $0c
    jr z, jr_002_7760

    cp $1c
    jr z, jr_002_7760

    cp $09
    jr z, jr_002_7763

    cp $18
    jr z, jr_002_7763

    jr jr_002_7766

jr_002_7760:
    xor a
    jr jr_002_7765

jr_002_7763:
    ld a, $03

jr_002_7765:
    ld [hl], a

jr_002_7766:
    ret


    ret


    ld a, [$c228]
    bit 2, a
    jr nz, jr_002_77ed

    ld a, [$c100]
    ld [$c138], a
    ld a, [$c242]
    srl a
    srl a
    srl a
    srl a
    and $03
    call Call_000_0775

    db $8d, $77

    sbc c
    ld [hl], a

    db $a5, $77, $b1, $77

    ld a, $19
    ld [$dd01], a
    ld a, $94
    ld [$c13a], a
    jr jr_002_77bb

    ld a, $18
    ld [$dd01], a
    ld a, $96
    ld [$c13a], a
    jr jr_002_77bb

    ld a, $1a
    ld [$dd01], a
    ld a, $98
    ld [$c13a], a
    jr jr_002_77bb

    ld a, $1a
    ld [$dd01], a
    ld a, $9a
    ld [$c13a], a

jr_002_77bb:
    sla a
    xor a
    ld [$c243], a
    ld a, [$c228]
    or $04
    ld [$c228], a
    and $03
    sla a
    ld b, a
    ld a, [$c242]
    and $b1
    or $01
    add b
    ld [$c242], a
    bit 2, a
    jr z, jr_002_77e7

    ld a, [$c101]
    add $06
    ld [$c139], a
    jr jr_002_77ed

jr_002_77e7:
    ld a, [$c101]
    ld [$c139], a

jr_002_77ed:
    ret


    ret


    ret


    ld a, [$c229]
    inc a
    and $0f
    ld [$c229], a
    ld a, [$c228]
    and $fc
    ld [$c228], a
    xor a
    call Call_002_7110
    call Call_002_760f
    ld a, [$c228]
    and $18
    jr z, jr_002_781d

    and $10
    jr z, jr_002_7827

    ld a, [$c23e]
    add $40
    ld [$c23e], a
    jr jr_002_782f

jr_002_781d:
    ld a, [$c23e]
    add $ff
    ld [$c23e], a
    jr jr_002_782f

jr_002_7827:
    ld a, [$c23e]
    add $c0
    ld [$c23e], a

jr_002_782f:
    ld hl, $c101
    ld a, [hl]
    adc $00
    ld c, a
    ld a, [$c22e]
    bit 0, a
    jr z, jr_002_7849

    ld a, [$c23e]
    add $c0
    ld [$c23e], a
    ld a, c
    adc $00
    ld c, a

jr_002_7849:
    ld a, c
    cp $c8
    jr c, jr_002_7851

    xor a
    jr jr_002_7857

jr_002_7851:
    cp $90
    jr c, jr_002_7857

    ld a, $90

jr_002_7857:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    add $08
    ld [hl+], a
    xor a
    ld [$c103], a
    ld [$c107], a
    ret


    ld a, [$c229]
    inc a
    and $0f
    ld [$c229], a
    ld a, [$c228]
    and $fc
    or $01
    ld [$c228], a
    xor a
    call Call_002_7110
    call Call_002_74b7
    ld a, [$c228]
    and $18
    jr z, jr_002_7895

    and $10
    jr z, jr_002_789f

    ld a, [$c23e]
    sub $40
    ld [$c23e], a
    jr jr_002_78a7

jr_002_7895:
    ld a, [$c23e]
    sub $ff
    ld [$c23e], a
    jr jr_002_78a7

jr_002_789f:
    ld a, [$c23e]
    sub $c0
    ld [$c23e], a

jr_002_78a7:
    ld hl, $c101
    ld a, [hl]
    sbc $00
    cp $c8
    jr c, jr_002_78b5

    xor a
    ld c, a
    jr jr_002_78cf

jr_002_78b5:
    ld c, a
    ld a, [$c22e]
    bit 0, a
    jr z, jr_002_78cf

    ld a, [$c23e]
    sub $c0
    ld [$c23e], a
    ld a, c
    sbc $00
    ld c, a
    cp $c8
    jr c, jr_002_78cf

    xor a
    ld c, a

jr_002_78cf:
    ld a, c
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    add $08
    ld [hl], a
    ld a, $20
    ld [$c103], a
    ld [$c107], a
    ret


    ld a, [$c229]
    inc a
    and $0f
    ld [$c229], a
    ld a, [$c228]
    and $fc
    or $02
    ld [$c228], a
    xor a
    call Call_002_7110
    call Call_002_71fe
    ld a, [$c228]
    and $20
    jr nz, jr_002_7944

    ld a, [$c228]
    and $08
    jr nz, jr_002_7912

    ld a, [$c240]
    sub $ff
    ld [$c240], a
    jr jr_002_791a

jr_002_7912:
    ld a, [$c240]
    sub $c0
    ld [$c240], a

jr_002_791a:
    ld hl, $c100
    ld a, [hl]
    sbc $00
    jr nc, jr_002_7926

    xor a
    ld c, a
    jr jr_002_793e

jr_002_7926:
    ld c, a
    ld a, [$c22e]
    bit 0, a
    jr z, jr_002_793e

    ld a, [$c240]
    sub $c0
    ld [$c240], a
    ld a, c
    sbc $00
    ld c, a
    jr nc, jr_002_793e

    xor a
    ld c, a

jr_002_793e:
    ld a, c
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl], a

jr_002_7944:
    xor a
    ld [$c103], a
    ld [$c107], a
    ret


    ld a, [$c229]
    inc a
    and $0f
    ld [$c229], a
    ld a, [$c228]
    and $fc
    or $03
    ld [$c228], a
    xor a
    call Call_002_7110
    call Call_002_735c
    ld a, [$c228]
    and $20
    jr nz, jr_002_79b1

    ld a, [$c228]
    and $08
    jr nz, jr_002_797e

    ld a, [$c240]
    add $ff
    ld [$c240], a
    jr jr_002_7986

jr_002_797e:
    ld a, [$c240]
    add $c0
    ld [$c240], a

jr_002_7986:
    ld hl, $c100
    ld a, [hl]
    adc $00
    ld c, a
    ld a, [$c22e]
    bit 0, a
    jr z, jr_002_79a0

    ld a, [$c240]
    add $c0
    ld [$c240], a
    ld a, c
    adc $00
    ld c, a

jr_002_79a0:
    ld a, [$c100]
    cp $81
    jr c, jr_002_79aa

    ld a, $81
    ld c, a

jr_002_79aa:
    ld a, c
    ld [$c100], a
    ld [$c104], a

jr_002_79b1:
    ld a, $40
    ld [$c103], a
    ld [$c107], a
    ret


    db $80, $40, $02, $00, $80, $48, $04, $00, $06, $06, $07, $07, $07, $08, $08, $08
    db $09

    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

    db $50, $20, $60, $70, $30, $60, $30, $20, $00, $80, $60, $50, $00, $10, $40, $60
    db $60, $20, $30, $20, $00, $80, $50, $60, $50, $70, $10, $50, $40, $10, $10, $80
    db $40, $70, $20, $20, $20, $80, $50, $30, $50, $70, $20, $60, $20, $20, $50, $50
    db $10, $20, $20, $70, $50, $60

    db $10
    jr nz, @+$52

    ld b, b
    jr nc, @+$72

    db $f0, $f0, $f0, $f0, $f0, $f0, $02, $06, $0a, $06, $0e, $12, $16, $12, $1a, $1e
    db $22, $1e, $26, $2a, $2e, $2a, $32, $36, $3a, $36

    xor b
    xor h
    or b
    xor h
    or h
    cp b
    cp h
    cp b

    db $42, $42, $42, $42, $42, $46, $46, $46, $46, $46, $4a, $4a, $4a, $4a, $4a, $4e
    db $4e, $4e, $4e, $4e

    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    add d
    add d
    add d
    add d

    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $e1, $ef, $d1, $ff, $d9, $ff, $d9, $ff, $9f, $ff, $9f
    db $ff, $9f, $ff, $81, $ff, $99, $ff, $d9, $ff, $d9, $ef, $d1, $fb, $e5, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $cf, $ff, $cf, $ff, $cf, $f7, $cf, $ff, $c7, $bf, $c7
    db $ff, $a7, $fb, $a7, $ff, $83, $ff, $a3, $ff, $b3, $ff, $b3, $ff, $01, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $b9, $ff, $bb, $d7, $bb, $ff, $93, $ff, $93, $ff, $83
    db $ff, $83, $ff, $83, $ff, $83, $ff, $ab, $ff, $ab, $ff, $bb, $ff, $b9, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $81, $ff, $d9, $ff, $d9, $ff, $df, $ff, $d3, $ff, $d3
    db $ff, $c3, $ff, $d3, $ff, $d3, $ff, $df, $ff, $d9, $ff, $d9, $ff, $81, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $e3, $ed, $d3, $ff, $d9, $bf, $d9, $ff, $99, $ff, $99
    db $ff, $99, $ff, $99, $ff, $99, $bf, $d9, $ff, $d9, $ed, $d3, $ff, $e3, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $81, $ff, $b3, $ff, $b3, $ff, $b3, $ff, $b3, $fb, $a7
    db $ff, $a7, $bf, $c7, $ff, $c7, $f7, $cf, $ff, $cf, $ff, $cf, $ff, $cf, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $83, $fd, $d3, $ff, $d9, $ff, $d9, $ff, $d9, $fd, $d3
    db $ff, $c3, $ff, $c7, $ff, $d3, $ff, $d3, $ff, $d3, $ff, $d3, $ff, $89, $ff, $ff
    db $b0, $7b, $f0, $7b, $30, $7c, $70, $7c, $b0, $7c, $f0, $7c, $30, $7d, $70, $7d
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $00, $08, $07, $10, $0f, $00, $1f

    INCBIN "gfx/image_002_7bc0.2bpp"

    INCBIN "gfx/image_002_7cc0.2bpp"

    db $05, $05, $05, $05, $05, $04, $04, $04, $03, $03, $03, $02, $02, $01, $00, $00
    db $00, $00, $01, $02, $02, $03, $03, $03, $04, $04, $04, $05, $05, $05, $05, $05

    ld a, h
    nop

    db $ec, $00, $00

    ld [hl], h
    nop
    nop
    adc h
    nop
    nop
    db $ec
    ld a, h
    nop
    db $ec
    ld a, b
    ld a, h
    nop
    nop
    ld a, h

    db $90, $00, $80

    nop
    adc h
    nop
    adc h
    ld a, h
    nop
    ld [hl], h
    nop
    nop
    add b
    ld a, b
    nop
    ld a, h
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    add b
    nop
    nop
    sub b
    nop
    add b

    db $00, $7c, $ec

    nop
    nop
    ld a, b
    nop
    ld [hl], h
    nop
    nop
    adc b
    nop
    sub b
    ld a, b

    db $00, $80, $8c

    adc b
    nop
    ld a, h
    nop
    adc h
    nop
    ld [hl], h
    nop
    add b
    adc h
    nop

    db $00, $8c, $00

    nop
    add b
    nop
    nop
    add b
    nop
    add b

    db $00, $00, $00

    add b
    sub b
    nop
    nop
    adc b
    nop
    nop

    db $88, $00, $00

    ld a, h
    nop
    nop
    ld a, h
    add b
    adc h
    nop
    sub b
    nop
    nop
    ld a, h
    nop
    nop
    ld a, b
    add b
    nop
    nop
    ld a, h
    nop
    nop
    nop
    add b
    nop
    sub b

    db $00, $00, $7c

    nop
    nop
    nop
    adc b
    nop
    sub b
    ld a, h
    nop
    nop
    adc b
    adc h
    nop
    nop
    adc b

    db $00, $80, $00

    nop
    nop
    sub b
    nop
    nop
    db $ec
    nop
    add b
    nop
    nop
    add b

    db $00, $ec, $78

    nop
    adc h
    nop
    nop
    sub b
    nop
    ld a, b
    adc b
    nop
    nop
    adc b
    ld a, b
    nop
    adc b
    nop
    adc b
    add b
    nop
    adc h
    nop
    add b
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
