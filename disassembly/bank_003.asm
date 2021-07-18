; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ld a, [$c200]
    and a
    jr z, jr_003_4028

jr_003_4006:
    cp $14
    jr c, jr_003_400e

    sub $14
    jr jr_003_4006

jr_003_400e:
    and a
    jr nz, jr_003_4028

    ld a, $08
    ld hl, $4000
    call Call_000_0061
    ld a, [$c200]
    cp $64
    jr c, jr_003_4028

    ld a, $05
    ld hl, $4000
    jp Jump_000_0077


jr_003_4028:
    xor a
    ld [$dd00], a
    ld b, $28
    ld hl, $c100
    ld a, $e0

jr_003_4033:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_003_4033

    call Call_000_0616
    call Call_000_0389
    call Call_000_0783
    ld hl, $4275
    call Call_000_0d52
    ld hl, $42c5
    ld de, $9800
    ld a, $01
    call Call_000_080b
    ld hl, $442f
    ld de, $9c00
    ld a, $01
    call Call_000_080b
    ld hl, $472b
    ld de, $9800
    xor a
    call Call_000_080b
    ld hl, $4599
    ld de, $9c00
    ld a, $00
    call Call_000_080b
    ld a, [$c206]
    bit 0, a
    jr z, jr_003_4082

    ld hl, $c51b
    ld [hl], $3b
    jr jr_003_4087

jr_003_4082:
    ld hl, $c51b
    ld [hl], $36

jr_003_4087:
    inc hl
    ld [hl], $36
    ld a, [$c206]
    srl a
    ld e, a
    call Call_003_41a3
    ld hl, $c519
    ld a, $36
    add c
    ld [hl+], a
    ld a, $36
    add b
    ld [hl], a
    ld a, [$c207]
    ld e, a
    call Call_003_41a3
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
    ld de, $9dea
    xor a
    call Call_000_080b
    ld a, [$d3d0]
    and a
    jr z, jr_003_40c9

    ld hl, $7191
    jr jr_003_40e1

jr_003_40c9:
    ld a, [$c200]

jr_003_40cc:
    cp $0a
    jr c, jr_003_40d4

    sub $0a
    jr jr_003_40cc

jr_003_40d4:
    ld de, $4703
    sla a
    call Call_000_07ed
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a

jr_003_40e1:
    ld de, $9840
    ld a, $00
    call Call_000_080b
    ld a, [$d3d0]
    and a
    jr z, jr_003_40f4

    ld hl, $7191
    jr jr_003_410c

jr_003_40f4:
    ld a, [$c200]

jr_003_40f7:
    cp $0a
    jr c, jr_003_40ff

    sub $0a
    jr jr_003_40f7

jr_003_40ff:
    ld de, $4703
    sla a
    call Call_000_07ed
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a

jr_003_410c:
    inc hl
    inc hl
    ld de, $c271
    ld bc, $017c
    xor a
    call Call_000_07ce
    ld a, [$c200]

jr_003_411b:
    cp $0a
    jr c, jr_003_4123

    sub $0a
    jr jr_003_411b

jr_003_4123:
    ld de, $4717
    sla a
    call Call_000_07ed
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    xor a
    ldh [rVBK], a
    ld de, $9000
    ld bc, $0220
    call Call_000_07ce
    ld hl, $5641
    ld de, $9220
    ld bc, $05d0
    xor a
    call Call_000_07ce
    ldh a, [$8b]
    cp $01
    jr z, jr_003_415c

    ld hl, $7151
    ld de, $9590
    ld bc, $0040
    xor a
    call Call_000_07ce

jr_003_415c:
    ld hl, $c265
    ld a, $00
    ld c, $03

jr_003_4163:
    ld [hl], $01
    inc hl
    ld [hl+], a
    dec c
    jr nz, jr_003_4163

    ld a, [$c200]

jr_003_416d:
    cp $0a
    jr c, jr_003_4175

    sub $0a
    jr jr_003_416d

jr_003_4175:
    sla a
    sla a
    sla a
    ld hl, $4225
    call Call_000_07e6
    ld c, $08
    ld de, $d640

jr_003_4186:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_003_4186

    ld a, $80
    ldh [rBCPS], a
    ld hl, $d640
    ld c, $08

jr_003_4195:
    ld a, [hl+]
    ldh [rBCPD], a
    dec c
    jr nz, jr_003_4195

    ld a, $07
    ld hl, $4000
    jp Jump_000_0077


Call_003_41a3:
    ld b, $00
    ld c, $00
    ld d, $00
    bit 0, e
    jr z, jr_003_41ae

    inc b

jr_003_41ae:
    bit 1, e
    jr z, jr_003_41b4

    inc b
    inc b

jr_003_41b4:
    bit 2, e
    jr z, jr_003_41bc

    inc b
    inc b
    inc b
    inc b

jr_003_41bc:
    bit 3, e
    jr z, jr_003_41cc

    ld a, b
    add $08
    cp $0a
    jr c, jr_003_41cb

    sub $0a
    ld c, $01

jr_003_41cb:
    ld b, a

jr_003_41cc:
    bit 4, e
    jr z, jr_003_41dc

    ld a, b
    add $06
    cp $0a
    jr c, jr_003_41da

    sub $0a
    inc c

jr_003_41da:
    ld b, a
    inc c

jr_003_41dc:
    bit 5, e
    jr z, jr_003_41ef

    ld a, b
    add $02
    cp $0a
    jr c, jr_003_41ea

    sub $0a
    inc c

jr_003_41ea:
    ld b, a
    ld a, c
    add $03
    ld c, a

jr_003_41ef:
    bit 6, e
    jr z, jr_003_4209

    ld a, b
    add $04
    cp $0a
    jr c, jr_003_41fd

    sub $0a

Call_003_41fc:
    inc c

jr_003_41fd:
    ld b, a
    ld a, c
    add $06
    cp $0a
    jr c, jr_003_4208

    sub $0a
    inc d

jr_003_4208:
    ld c, a

jr_003_4209:
    bit 7, e
    jr z, jr_003_4224

    ld a, b
    add $08
    cp $0a
    jr c, jr_003_4217

    sub $0a
    inc c

jr_003_4217:
    ld b, a
    ld a, c
    add $02
    cp $0a
    jr c, jr_003_4222

    sub $0a
    inc d

jr_003_4222:
    ld c, a
    inc d

jr_003_4224:
    ret


    nop
    nop
    rra
    nop
    ld c, d
    ld [hl], l
    rst $30
    ld a, [hl]
    nop
    nop
    rra
    nop
    rra
    ld [bc], a
    cp a
    ld h, a
    nop
    nop
    rra
    nop
    rra
    add hl, sp
    ccf
    ld a, a
    nop
    nop
    rra
    nop
    add b
    ld [hl+], a
    rst $28
    ccf
    nop
    nop
    rra
    nop
    nop
    ld a, h
    add b
    ld a, a
    nop
    nop
    rra
    nop
    rst $28
    ld l, l
    inc a
    ld a, a
    nop
    nop
    rra
    nop
    db $f4
    ld bc, $3b3f
    nop
    nop
    rra
    nop
    sbc c
    ld d, d
    rst $38
    ld [hl], e
    nop
    nop
    rra
    nop
    ldh [$75], a
    or [hl]
    ld a, a
    nop
    nop
    rra
    nop
    ld e, a
    add hl, de
    sbc a
    ld d, d
    nop
    nop
    ld [$f771], sp
    ld a, [hl]
    rra
    nop
    nop
    nop
    sbc a
    ld [bc], a
    rst $38
    dec hl
    rst $38
    ld a, a
    nop
    nop
    rra
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld a, a
    nop
    nop
    sbc a
    ld d, e
    add b
    ld a, c
    rst $18
    jr nc, jr_003_4296

jr_003_4296:
    nop
    ld [$f771], sp
    ld a, [hl]
    rra
    nop
    nop
    nop
    sbc a
    ld [bc], a
    rst $38
    dec hl
    rst $38
    ld a, a
    nop
    nop
    ld [$f771], sp
    ld a, [hl]
    rra
    nop
    nop
    nop
    sbc a
    ld [bc], a
    rst $38
    dec hl
    rst $38
    ld a, a
    nop
    nop
    ld [$f771], sp
    ld a, [hl]
    rra
    nop
    nop
    nop
    sbc a
    ld [bc], a
    rst $38
    dec hl
    rst $38
    ld a, a
    inc d
    ld [de], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    ld b, b
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, d
    nop
    nop
    nop
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
    ld e, e
    ld e, h
    nop
    ld l, c
    nop
    ld c, a
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, d
    ld b, e
    ld b, h
    nop
    ld [hl], $36
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld e, l
    ld l, b
    nop
    nop
    nop
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld b, a
    db $d3
    ld c, b
    ld d, c
    ld c, d
    rst $08
    ld c, e
    ld c, l
    ld c, l
    bit 1, [hl]
    ld c, c
    ld d, b
    rst $00
    ld d, c
    ld b, l
    ld d, e
    jp Jump_000_1154


    ld l, l
    ld sp, $116f
    ld e, h
    ld sp, $515e
    ld h, b
    ld [hl], c
    ld h, d
    sub c
    ld h, h
    or c
    ld h, [hl]
    pop de
    ld l, b
    pop af
    ld l, d
    inc d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_003_4763

    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_003_477d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    inc d
    inc de
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0401
    dec b

jr_003_4763:
    ld bc, $0e01
    rrca
    ld c, $0f
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld bc, $0601
    rlca
    ld bc, $1001
    ld de, $1110

jr_003_477d:
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0f0e
    ld c, $0f
    db $10
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld bc, $0101
    ld bc, $1110
    db $10
    ld de, $0f0e
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0e01
    rrca
    db $10
    ld de, $0101
    ld b, $0a
    inc bc
    inc bc
    dec bc
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    rlca
    ld bc, $1001
    ld de, $0f0e
    inc b
    ld [bc], a
    dec c
    rlca
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0c06
    ld [bc], a
    dec b
    ld c, $0f
    db $10
    ld de, $0a06
    inc bc
    add hl, bc
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0308
    dec bc
    rlca
    db $10
    ld de, $0f0e
    ld b, $07
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld c, $0f
    db $10
    ld de, $0706
    ld bc, $0101
    ld bc, $0908
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    db $10
    ld de, $0101
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld c, $0f
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    db $10
    ld de, $0101
    ld b, $07
    ld bc, $0101
    ld bc, $0f0e
    ld c, $0f
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $1110
    db $10
    ld de, $0101
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0706
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld b, $07
    ld bc, $0101
    ld bc, $0706
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    ld b, $07
    ld bc, $0101
    ld bc, $0c06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld bc, $0101
    ld bc, $0308
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1314
    ld bc, $0401
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    dec b
    ld bc, $0101
    ld bc, $0f0e
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $1110
    ld c, $0f
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld b, $07
    ld bc, $0e01
    rrca
    ld c, $0f
    db $10
    ld de, $0706
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    ld b, $07
    ld bc, $1001
    ld de, $1110
    ld c, $0f
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0601
    rlca
    ld bc, $0e01
    rrca
    ld c, $0f
    db $10
    ld de, $0706
    db $10
    ld de, $1110
    db $10
    ld de, $0101
    ld b, $07
    ld bc, $1001
    ld de, $1110
    ld c, $0f
    ld b, $07
    ld bc, $0101
    ld bc, $0f0e
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0f0e
    db $10
    ld de, $0706
    ld bc, $0101
    ld bc, $1110
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $1110
    ld c, $0f
    ld b, $07
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $07
    ld bc, $0101
    ld bc, $0f0e
    db $10
    ld de, $0706
    ld bc, $0601
    ld a, [bc]
    inc bc
    inc bc
    dec bc
    rlca
    ld b, $07
    ld bc, $0101
    ld bc, $1110
    ld c, $0f
    ld b, $07
    inc b
    ld [bc], a
    dec c
    rlca
    ld bc, $0601
    inc c
    dec c
    rlca
    ld bc, $0101
    ld bc, $0f0e
    db $10
    ld de, $0706
    ld b, $0a
    inc bc
    add hl, bc
    ld bc, $0801
    inc bc
    dec bc
    rlca
    ld bc, $0101
    ld bc, $1110
    ld c, $0f
    ld b, $0c
    dec c
    rlca
    ld bc, $0101
    ld bc, $0101
    ld b, $0c
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $1110
    ld b, $0a
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld b, $0a
    dec bc
    rlca
    ld bc, $0101
    ld bc, $0f0e
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld b, $0c
    ld [bc], a
    dec b
    ld bc, $1001
    ld de, $0706
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld [$0b03], sp
    rlca
    ld bc, $0e01
    rrca
    ld b, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld bc, $0601
    inc c
    ld [bc], a
    dec b
    db $10
    ld de, $0308
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0801
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    inc de
    inc b
    dec b
    ld bc, $0101
    ld bc, $0204
    ld [bc], a
    dec b
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    inc b
    dec b
    ld b, $07
    ld bc, $0101
    ld bc, $0a06
    dec bc
    rlca
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    ld b, $07
    ld b, $07
    ld bc, $0401
    ld [bc], a
    dec c
    rlca
    ld b, $07
    ld c, $0f
    ld bc, $0101
    ld bc, $0f0e
    ld b, $07
    ld b, $07
    ld bc, $0601
    ld a, [bc]
    inc bc
    add hl, bc
    ld b, $07
    db $10
    ld de, $0101
    ld bc, $1001
    ld de, $0706
    ld b, $07
    ld bc, $0601
    rlca
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld c, $0f
    ld b, $07
    ld b, $07
    ld bc, $0801
    add hl, bc
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $0706
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld c, $0f
    ld b, $07
    ld b, $07
    db $10
    ld de, $1110
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $0706
    ld b, $07
    ld c, $0f
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld b, $07
    db $10
    ld de, $0101
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld b, $07
    ld c, $0f
    ld bc, $0101
    ld bc, $0706
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld b, $07
    ld b, $07
    db $10
    ld de, $0101
    ld bc, $0601
    rlca
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $0706
    ld b, $07
    ld c, $0f
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0101
    ld c, $0f
    ld b, $07
    ld b, $07
    db $10
    ld de, $0101
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $0706
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld b, $07
    ld b, $07
    db $10
    ld de, $1110
    db $10
    ld de, $0706
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    ld b, $07
    ld b, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    inc de
    inc b
    dec b
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0401
    dec b
    ld b, $07
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    ld bc, $0601
    rlca
    ld b, $07
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld bc, $0601
    rlca
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $0101
    ld b, $07
    ld b, $0c
    ld [bc], a
    dec b
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0204
    dec c
    rlca
    ld [$0b03], sp
    rlca
    ld bc, $0801
    inc bc
    inc bc
    inc bc
    dec bc
    rlca
    ld bc, $0101
    ld bc, $0a06
    inc bc
    add hl, bc
    ld c, $0f
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld bc, $0101
    ld bc, $0706
    ld c, $0f
    db $10
    ld de, $0706
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld bc, $0101
    ld bc, $0706
    db $10
    ld de, $0f0e
    ld b, $07
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld bc, $0101
    ld bc, $0706
    ld c, $0f
    db $10
    ld de, $0706
    ld bc, $0601
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0706
    db $10
    ld de, $0f0e
    ld b, $07
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld c, $0f
    db $10
    ld de, $0706
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    db $10
    ld de, $0f0e
    ld b, $0c
    ld [bc], a
    ld [bc], a
    dec c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0401
    ld [bc], a
    dec c
    rlca
    ld c, $0f
    db $10
    ld de, $0308
    dec bc
    nop
    nop
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0601
    ld a, [bc]
    inc bc
    add hl, bc
    db $10
    ld de, $0f0e
    ld c, $0f
    ld b, $00
    nop
    rlca
    ld bc, $0101
    ld bc, $0204
    dec c
    rlca
    ld bc, $0e01
    rrca
    db $10
    ld de, $1110
    ld [$0b03], sp
    rlca
    ld bc, $0101
    ld bc, $0a06
    inc bc
    add hl, bc
    ld bc, $1001
    ld de, $0101
    ld c, $0f
    ld c, $0f
    ld b, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $1001
    ld de, $1110
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    db $10
    ld de, $1110
    db $10
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc d
    inc de
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $0a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld b, $07
    ld bc, $0e01
    rrca
    ld bc, $0601
    rlca
    ld bc, $0e01
    rrca
    ld c, $0f
    ld bc, $0101
    ld bc, $0706
    ld bc, $1001
    ld de, $0101
    ld b, $07
    ld bc, $1001
    ld de, $1110
    ld bc, $0101
    ld bc, $0706
    ld bc, $0e01
    rrca
    ld bc, $0601
    rlca
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld b, $07
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld b, $07
    ld bc, $0e01
    rrca
    ld bc, $0601
    rlca
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0f0e
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld bc, $1001
    ld de, $0706
    ld bc, $0e01
    rrca
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0706
    ld bc, $1001
    ld de, $0101
    ld [$0109], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0101
    ld bc, $0f0e
    ld c, $0f
    ld b, $07
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld bc, $0101
    ld bc, $1110
    db $10
    ld de, $0706
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld c, $0f
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    ld de, $1110
    ld b, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld c, $0f
    ld c, $0f
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
    rlca
    db $10
    ld de, $1110
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
    rlca
    ld c, $0f
    ld c, $0f
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    db $10
    ld de, $1110
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    inc de
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0e01
    rrca
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
    rlca
    ld bc, $1001
    ld de, $0006
    nop
    nop
    nop
    nop
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
    ld bc, $0e01
    rrca
    ld b, $0a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $1001
    ld de, $0706
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld c, $0f
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    ld de, $1110
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0101
    ld bc, $0f0e
    ld bc, $0e01
    rrca
    ld c, $0f
    ld b, $07
    db $10
    ld de, $1110
    db $10
    ld de, $0101
    ld bc, $1001
    ld de, $0101
    db $10
    ld de, $1110
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld bc, $0401
    dec b
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0f0e
    ld b, $07
    db $10
    ld de, $1110
    ld bc, $0601
    rlca
    ld bc, $1001
    ld de, $0101
    ld bc, $1001
    ld de, $0706
    ld bc, $0e01
    rrca
    ld bc, $0601
    rlca
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0f0e
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld bc, $1001
    ld de, $0706
    ld bc, $0e01
    rrca
    ld bc, $0601
    rlca
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld bc, $0101
    ld bc, $0706
    ld bc, $0e01
    rrca
    ld bc, $0601
    rlca
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld b, $07
    ld bc, $1001
    ld de, $0101
    ld b, $07
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld b, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    inc de
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld c, $0f
    ld b, $00
    nop
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    db $10
    ld de, $0006
    nop
    rlca
    ld bc, $0e01
    rrca
    ld c, $0f
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld b, $00
    nop
    rlca
    ld bc, $1001
    ld de, $1110
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    ld de, $0006
    nop
    rlca
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0101
    ld bc, $0f0e
    ld b, $00
    nop
    rlca
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld bc, $0101
    ld bc, $1110
    ld b, $00
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld c, $0f
    ld c, $0f
    ld bc, $0e01
    rrca
    ld c, $0f
    ld b, $00
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $1110
    ld bc, $1001
    ld de, $1110
    ld b, $00
    nop
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld c, $0f
    ld bc, $0601
    nop
    nop
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $0101
    ld b, $00
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld c, $0f
    ld c, $0f
    ld bc, $0e01
    rrca
    ld bc, $0601
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $1110
    ld bc, $1001
    ld de, $0101
    ld b, $00
    nop
    rlca
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0e01
    rrca
    ld bc, $0601
    nop
    nop
    rlca
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld bc, $1001
    ld de, $0101
    ld b, $00
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld c, $0f
    ld c, $0f
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $1110
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    nop
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    inc de
    inc b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0e
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1110
    ld b, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0e01
    rrca
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    rlca
    ld bc, $1001
    ld de, $0101
    ld bc, $0101
    ld bc, $0f0e
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $0101
    ld bc, $0101
    ld bc, $0706
    ld bc, $1001
    ld de, $0101
    ld c, $0f
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0101
    ld b, $0c
    ld [bc], a
    dec b
    ld c, $0f
    ld bc, $1001
    ld de, $0101
    db $10
    ld de, $0101
    ld bc, $0101
    ld bc, $0006
    nop
    rlca
    db $10
    ld de, $0f0e
    ld c, $0f
    ld bc, $0e01
    rrca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    nop
    nop
    rlca
    ld c, $0f
    db $10
    ld de, $1110
    ld bc, $1001
    ld de, $0308
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    nop
    nop
    rlca
    db $10
    ld de, $0f0e
    ld c, $0f
    ld bc, $0e01
    rrca
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    nop
    rlca
    ld c, $0f
    db $10
    ld de, $1110
    ld bc, $1001
    ld de, $0101
    ld bc, $0101
    ld bc, $0006
    nop
    rlca
    db $10
    ld de, $0f0e
    ld c, $0f
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld b, $00
    nop
    rlca
    ld c, $0f
    db $10
    ld de, $1110
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld b, $0a
    inc bc
    add hl, bc
    db $10
    ld de, $0f0e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld bc, $0e01
    rrca
    db $10
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0706
    ld bc, $1001
    ld de, $0101
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc d
    inc de
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $0a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    rlca
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld b, $07
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld b, $07
    ld b, $07
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld b, $07
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $1110
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0706
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0706
    ld b, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1110
    db $10
    ld de, $1110
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0e
    ld c, $0f
    ld c, $0f
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0f0e
    ld c, $0f
    ld bc, $1001
    ld de, $1110
    db $10
    ld de, $0101
    ld b, $07
    ld bc, $0101
    ld bc, $1110
    db $10
    ld de, $0101
    ld c, $0f
    ld c, $0f
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0f0e
    ld c, $0f
    ld c, $0f
    db $10
    ld de, $1110
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $1110
    db $10
    ld de, $1110
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0f0e
    ld c, $0f
    ld c, $0f
    ld bc, $0101
    ld bc, $0101
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld bc, $1110
    db $10
    ld de, $1110
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    inc de
    ld bc, $0e01
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld bc, $0101
    ld bc, $1110
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    db $10
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $0a
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    rlca
    ld bc, $0101
    ld bc, $0101
    ld c, $0f
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0f0e
    db $10
    ld de, $0101
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $1110
    ld c, $0f
    ld bc, $0101
    ld bc, $0c06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld bc, $0101
    ld bc, $0f0e
    db $10
    ld de, $0101
    ld bc, $0601
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    rlca
    ld bc, $0101
    ld bc, $1110
    ld c, $0f
    ld c, $0f
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0706
    ld bc, $0e01
    rrca
    ld c, $0f
    db $10
    ld de, $1110
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0706
    ld bc, $1001
    ld de, $1110
    ld c, $0f
    ld c, $0f
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0706
    ld bc, $0e01
    rrca
    ld c, $0f
    db $10
    ld de, $1110
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0706
    ld bc, $1001
    ld de, $1110
    ld c, $0f
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $0f0e
    db $10
    ld de, $0101
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0706
    ld bc, $0101
    ld bc, $1110
    ld c, $0f
    ld bc, $0101
    ld bc, $0c06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    rlca
    ld bc, $0101
    ld bc, $0f0e
    db $10
    ld de, $0101
    ld bc, $0801
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $1110
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $6601
    sbc c
    nop
    rst $38
    ccf
    nop
    ld c, $31
    ld c, $31
    ld sp, $310e
    ld c, $31
    ld c, $66
    sbc c
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld b, $06
    inc bc
    inc bc
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    jr jr_003_56c9

    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld b, $06
    inc b
    inc b
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    nop
    nop
    nop

jr_003_56c9:
    nop
    nop
    ldh a, [$f0]
    or b
    or b
    sub b
    sub b
    ld h, [hl]
    sbc c
    nop
    rst $38
    db $fc
    nop
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    ld c, $31
    ld c, $31
    ld c, $11
    ld bc, $010e
    ld b, $01
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ldh [$e0], a
    ld h, b
    ld h, b
    ret nc

    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld a, $3e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, $06
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    db $10
    db $10
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld b, $06
    ld h, e
    ld h, e
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
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
    rst $38
    nop
    nop
    rst $38
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
    rst $38
    nop
    nop
    rst $38
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc b
    add b
    ld [hl], b
    add b
    ld h, b
    add b
    ld b, b
    ret nz

    nop
    nop
    ret nz

    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
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
    ld [$1808], sp
    jr jr_003_57a0

    ld [$0808], sp
    ld [$1c08], sp
    inc e
    nop

jr_003_57a0:
    nop
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    inc bc
    inc bc
    ld a, $3e
    ld b, b
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    inc bc
    inc bc
    ld e, $1e
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    nop
    nop
    ld c, $0e
    ld a, [de]
    ld a, [de]
    ld [hl-], a
    ld [hl-], a
    ld h, d
    ld h, d
    ld a, a
    ld a, a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, b
    ld b, b
    ld a, [hl]
    ld a, [hl]
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    nop
    nop
    ld a, $3e
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld b, e
    ld b, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    inc bc
    inc bc
    ld b, $06
    inc c
    inc c
    jr jr_003_5815

    jr nc, jr_003_582f

    nop
    nop
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    nop
    nop
    ld a, $3e

jr_003_5815:
    ld h, e
    ld h, e
    ld h, c
    ld h, c
    ccf
    ccf
    inc bc
    inc bc
    ld a, $3e
    nop
    nop
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    jr c, jr_003_5861

    ld c, $0e
    ld h, e
    ld h, e
    ld a, $3e

jr_003_582f:
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    inc e
    inc e
    ld [hl], $36
    ld h, e
    ld h, e
    ld b, c
    ld b, c
    ld a, a
    ld a, a
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld b, b
    ld b, b
    ld b, a
    ld b, a
    ld h, c
    ld h, c
    ccf
    ccf
    nop
    nop

jr_003_5861:
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
    nop
    nop
    jr jr_003_588f

    inc h
    inc h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    jr jr_003_589f

    ld a, b
    ld a, b
    jr jr_003_58a3

    jr jr_003_58a5

    jr jr_003_58a7

jr_003_588f:
    jr jr_003_58a9

    nop
    nop
    nop
    nop
    inc a
    inc a
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld b, $06

jr_003_589f:
    inc c
    inc c
    nop
    nop

jr_003_58a3:
    nop
    nop

jr_003_58a5:
    inc a
    inc a

jr_003_58a7:
    ld l, [hl]
    ld l, [hl]

jr_003_58a9:
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    ld b, $06
    inc c
    inc c
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    inc e
    inc e
    inc e
    inc e
    inc a
    inc a
    inc l
    inc l
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    inc e
    inc e
    jr c, jr_003_5911

    jr nc, jr_003_590b

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld a, $3e
    ld [hl], $36
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    ld c, $0e
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]

jr_003_590b:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_003_5911:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc h
    inc h
    jr jr_003_5937

    nop
    nop
    jr jr_003_593b

    jr jr_003_593d

    jr jr_003_593f

    jr jr_003_5941

    jr jr_003_5943

    jr jr_003_5945

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc c
    inc c
    jr jr_003_594d

    jr nc, jr_003_5967

jr_003_5937:
    ld h, b
    ld h, b
    ld h, [hl]
    ld h, [hl]

jr_003_593b:
    ld h, [hl]
    ld h, [hl]

jr_003_593d:
    ld a, [hl]
    ld a, [hl]

jr_003_593f:
    nop
    nop

jr_003_5941:
    inc a
    inc a

jr_003_5943:
    inc c
    inc c

jr_003_5945:
    ld b, $06
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld l, h
    ld l, h

jr_003_594d:
    inc a
    inc a
    nop
    nop
    inc l
    inc l
    ld l, h
    ld l, h
    ld a, [hl]
    ld a, [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld e, $1e
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06

jr_003_5967:
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld l, h
    ld l, h
    inc a
    inc a
    nop
    nop
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, h
    ld l, h
    inc a
    inc a
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc e
    inc e
    jr jr_003_59a3

    jr jr_003_59a5

    jr jr_003_59a7

    nop
    nop
    inc a
    inc a
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    inc a
    inc a
    nop
    nop
    ld l, [hl]
    ld l, [hl]

jr_003_59a3:
    ld a, $3e

jr_003_59a5:
    ld b, $06

jr_003_59a7:
    inc c
    inc c
    inc c
    inc c
    jr jr_003_59c5

    jr nc, jr_003_59df

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
    nop
    nop
    nop
    nop

jr_003_59c5:
    nop
    nop
    ret nz

    ret nz

jr_003_59c9:
    ldh [$e0], a
    ldh a, [rSVBK]
    ld h, b
    jr nz, jr_003_5a36

    nop
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
    add c

jr_003_59df:
    nop
    nop
    rst $08
    nop
    rra
    db $10
    ld [hl], $b0
    jr nz, jr_003_59c9

    nop
    ret nz

    ret nz

    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld a, $00
    ld h, e
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    ld [$1800], sp
    nop
    ld [$0800], sp
    nop
    ld [$1c00], sp
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld h, e
    nop
    inc bc
    nop
    ld a, $00
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    inc bc
    nop
    ld e, $00
    inc bc
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    ld c, $00
    ld a, [de]

jr_003_5a36:
    nop
    ld [hl-], a
    nop
    ld h, d
    nop
    ld a, a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld b, b
    nop
    ld a, [hl]
    nop
    inc bc
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    ld a, $00
    ld h, b
    nop
    ld a, [hl]
    nop
    ld b, e
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    ld a, a
    nop
    inc bc
    nop
    ld b, $00
    inc c
    nop
    jr jr_003_5a6d

jr_003_5a6d:
    jr nc, jr_003_5a6f

jr_003_5a6f:
    nop
    nop
    nop
    nop
    ld a, $00
    ld h, e
    nop
    ld a, $00
    ld h, e
    nop
    ld h, e
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    ld a, $00
    ld h, e
    nop
    ld h, c
    nop
    ccf
    nop
    inc bc
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld a, [hl]
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, d
    inc h
    inc h
    jr jr_003_5ad1

    jr @+$1a

    inc h
    inc h
    ld b, d
    ld b, d
    nop
    nop
    dec b
    inc bc
    ld d, $ef
    ld l, a
    sbc [hl]
    sub a
    ld a, [hl-]
    ld a, e
    or d
    and e
    ld [hl], d
    di
    ld h, d
    di
    ld h, d

jr_003_5ad1:
    db $f4
    ld hl, sp-$13
    ld e, $16
    rrca
    dec bc
    rlca
    rlca
    inc bc
    ld [hl], a
    inc hl
    rst $38
    ld [hl], l
    db $fd
    ld sp, hl
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ld a, [hl+]
    sub c
    push de
    cp e
    cp e
    rst $38
    cp a
    reti


    sbc l
    reti


    nop
    nop
    nop

jr_003_5af4:
    rst $38
    rst $38
    nop
    adc d
    inc b
    ld d, l
    adc [hl]
    ld [$dfdf], a
    sbc e
    rst $18
    sbc d
    nop
    nop
    rlca
    ld a, [$0ff7]
    dec bc
    rlca
    ld c, $1b
    dec e
    ld a, $ba
    ld l, h
    ld a, h
    ld h, b
    nop
    nop
    jr nz, jr_003_5af4

    sbc $21
    ld sp, $f060
    ld h, c
    ld [hl], c
    ldh [$fb], a
    db $fc
    ld a, l
    ldh [$f3], a
    ld h, e
    db $e3
    ld [hl], d
    ei
    ld [hl], d
    or a
    ld a, d
    ld a, e
    ld a, $bf
    ld e, $16
    adc a
    ld c, l
    and e
    ld sp, hl
    ld [hl], c
    ld [hl], c
    ld hl, $092d
    rra
    dec e
    ccf
    cpl
    cpl
    rlca
    rrca
    rra
    push af
    ei
    sbc l
    reti


    sbc l
    reti


    db $dd
    cp c
    dec sp
    cp l
    cp a
    rra
    ld e, e
    adc l
    ret


    ldh a, [$fa]
    db $fc
    sbc $9c
    call c, $9c98
    ret c

    db $dd
    ei
    rst $28
    sbc [hl]
    sub [hl]
    dec c
    inc c
    ld bc, $0100
    db $ec
    ld a, [hl]
    ld a, [hl]
    scf
    inc sp
    rlca
    ld h, d
    rst $20
    rst $30
    or $db
    cp h
    db $e4
    sbc b
    add b
    nop
    ld [hl], c
    ld h, b
    ld [hl], c
    ld h, b
    pop af
    ld h, b
    pop hl
    ld [hl], b
    cp $fe
    push af
    ld a, b
    ld [hl], b
    ld hl, $0502
    nop
    nop
    nop
    ld hl, sp-$48
    ld b, c
    nop
    ld b, e
    ld [bc], a
    ld [hl], l
    jr nc, jr_003_5bd2

    ld b, b
    add a
    add a
    nop
    add e
    ld h, b
    nop
    ld bc, $5b00
    ld d, d
    add hl, hl
    jr nz, jr_003_5be4

    add hl, bc
    ld d, d
    nop
    ld e, e
    ld e, e
    nop
    ld sp, hl
    nop
    nop
    nop
    nop
    sub e
    add e
    inc [hl]
    inc h
    ld d, d
    ld [bc], a
    ld d, c
    ld bc, $7676
    nop
    ld l, b
    ldh a, [rP1]
    ld bc, $5201
    ld [bc], a
    ld d, h
    ld d, b
    inc h
    jr nz, jr_003_5c01

    ld b, h
    add e
    add e
    nop
    nop
    nop
    nop
    and b
    nop
    and b
    add b
    add hl, sp
    ld sp, $084a
    ld d, d
    nop
    ld e, e
    ld e, e
    nop
    nop

jr_003_5bd2:
    nop
    nop
    ld [de], a
    nop
    sub d
    nop
    sub d
    nop
    sub d
    ld [de], a
    and h
    nop
    or [hl]
    or [hl]
    nop
    ld bc, $0006

jr_003_5be4:
    nop
    nop
    ld c, e
    ld c, d
    and l
    inc h
    ret


    ld b, c
    adc d
    add b
    ld l, e
    ld l, e
    nop
    nop
    nop
    nop
    jr nc, jr_003_5c16

    ld d, d
    ld [de], a
    ld h, l
    ld b, c
    ld [hl], $22
    ld d, h
    inc d
    ld h, e
    ld h, e
    nop

jr_003_5c01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_5c16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e3
    rst $38
    pop bc
    rst $38
    adc b
    rst $38
    inc d
    rst $38
    ld [hl+], a
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    add b
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, l
    rst $30
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    db $e3
    rst $38
    pop bc
    rst $38
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    nop
    add b
    nop
    ret nz

jr_003_5c7b:
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    inc bc
    inc bc
    ld bc, $0001
    inc bc
    nop
    inc bc
    nop
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $c001
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    nop
    ret nz

    jr nz, jr_003_5c7b

    ret nz

    ldh a, [$e3]
    rst $38
    rst $30
    rst $38
    inc bc
    inc bc
    ld bc, $0003
    inc bc
    nop
    inc bc
    ld [bc], a
    rlca
    ld bc, $e30f
    rst $38
    rst $30
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
    ld bc, $0301
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
    add b
    add b
    ret nz

    ret nz

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
    nop
    db $e3
    rst $38
    pop bc
    rst $38
    adc b
    cp $14
    db $fc
    ld hl, $c3f9
    di
    rst $20
    rst $20
    rst $08
    rst $08
    db $e3
    rst $38
    pop bc
    rst $38
    ld [$147f], sp
    ccf
    add d

jr_003_5d0a:
    rra
    pop bc
    rrca
    db $e3
    rlca
    di
    add e
    rst $08
    pop bc
    rst $00
    ldh [$83], a
    ldh a, [rNR11]
    ld hl, sp+$20
    db $fc
    ret nz

    cp $e3
    rst $38
    rst $30
    rst $38
    di
    add e
    pop hl
    rlca
    ret z

    rrca
    sub h
    rra
    ld [hl+], a
    ccf
    ld b, c
    ld a, a
    db $e3
    rst $38
    rst $30
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    nop
    ret nz

    ld hl, $c3e1
    di
    rst $20
    rst $20
    rst $08
    rst $08
    inc bc
    inc bc
    ld bc, $0003
    inc bc
    nop
    inc bc
    add d
    rlca
    pop bc
    rrca
    db $e3
    rlca
    di
    add e
    rst $08
    pop bc
    rst $00
    ldh [$83], a
    ldh a, [rSB]
    ldh [rP1], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    di
    add e
    pop hl
    rlca
    ret z

    rrca
    add h
    rlca
    ld [bc], a
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    db $e3
    rst $38
    pop bc
    rst $38
    ld [$040e], sp
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    db $e3
    rst $38
    pop bc
    rst $38
    nop
    ld [hl], b
    nop
    jr nz, jr_003_5d0a

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0000
    inc b
    nop
    ld c, $e3
    rst $38
    rst $30
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    jr nz, jr_003_5dcb

    ld b, b
    ld [hl], b
    db $e3
    rst $38
    rst $30
    rst $38
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

jr_003_5dcb:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_5dea:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_5dea

    nop
    ret nz

    nop
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
    ld [hl], a
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    adc b
    rst $38
    ld [hl], a
    rst $38
    ld a, $ff
    inc e
    rst $38
    adc b
    rst $38
    ld [hl], a
    rst $38
    and d
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, l
    adc b
    rst $38
    ld [hl], a
    rst $38
    db $e3
    rst $38
    ret nz

    ldh a, [$80]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    ld [hl], a
    rst $38
    db $e3
    rst $38
    ld bc, $000f
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    add b
    add b
    ret nz

    inc bc
    inc bc
    ld bc, $0101
    inc bc
    nop
    inc bc
    ld bc, $0001
    ld bc, $0300
    nop
    ld bc, $c040
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR32]
    rst $38
    adc b
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    inc bc
    rlca
    rlca
    ld c, $0f
    inc e
    rst $38
    adc b
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
    ld bc, $0300
    nop
    nop
    nop
    nop
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
    ld [hl], a
    rst $38
    db $e3
    rst $38
    ret nz

    cp $88
    db $fc
    ld [hl], c
    ld sp, hl
    inc sp
    di
    rlca
    rst $20
    adc a
    rst $08
    ld [hl], a
    rst $38
    db $e3
    rst $38
    ld b, c
    ld a, a
    ld [$973f], sp

jr_003_5f2a:
    rra
    adc $0f
    db $e4
    rlca
    ldh a, [$83]
    ld c, a
    pop bc
    rst $20
    ldh [$c3], a
    ldh a, [$89]
    ld hl, sp+$74
    db $fc
    ld a, $fe
    inc e
    rst $38
    adc b
    rst $38
    di
    add e
    db $e3
    rlca
    pop bc
    rrca
    adc b
    rra
    scf
    ccf
    ld a, $7f
    inc e
    rst $38
    adc b
    rst $38
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ld h, c
    pop hl
    inc sp
    di
    rlca
    rst $20
    adc a
    rst $08
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    inc bc
    add a
    rlca
    adc $0f
    db $e4
    rlca
    ldh a, [$83]
    ld c, a
    pop bc
    rst $20
    ldh [$c3], a
    ldh a, [$81]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    di
    add e
    db $e3
    rlca
    pop bc
    rrca
    add b
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [hl], a
    rst $38
    db $e3
    rst $38
    nop
    ld c, $00
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld [hl], a
    rst $38
    db $e3
    rst $38
    ld b, b
    ld [hl], b
    nop
    jr nz, jr_003_5f2a

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0400
    inc b
    ld c, $0e
    inc e
    rst $38
    adc b
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    jr nz, jr_003_5feb

    jr nc, jr_003_603d

    inc e
    rst $38
    adc b
    rst $38
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

jr_003_5feb:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_600a:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]

jr_003_603d:
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_600a

    nop
    ret nz

    nop
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
    add c
    rst $38
    jr @+$01

    jr @+$01

    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    jr @+$01

    jr @+$01

    add c
    rst $38
    add c
    rst $38
    db $10
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$814d], sp
    rst $38
    add c
    rst $38
    jr @+$01

    db $10
    ldh a, [$60]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    add c
    rst $38
    jr @+$01

    ld [$060f], sp
    rlca
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $8003
    add b
    nop
    ret nz

    nop
    add b
    nop
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    add b
    add b
    ret nz

    ld bc, $0003
    ld bc, $0300
    ld [bc], a
    inc bc
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $8001
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [rNR23]
    rst $38
    add c
    rst $38
    ld bc, $0003
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    ld b, $07
    ld [$180f], sp
    rst $38
    add c
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
    ld bc, $0301
    nop
    nop
    nop
    nop
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

    ld bc, $0003
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
    nop
    add c
    rst $38
    jr @+$01

jr_003_6135:
    jr jr_003_6135

    ld h, h
    db $fc
    ld h, c
    ld sp, hl
    inc de
    di
    rlca
    rst $20
    adc a
    rst $08
    add c
    rst $38
    jr @+$01

    jr jr_003_61c6

    ld h, $3f
    add [hl]
    rra
    ret z

    rrca
    ldh [rTAC], a
    pop af
    add e
    adc a
    pop bc
    rlca
    ldh [rNR13], a
    ldh a, [$61]
    ld hl, sp+$64
    db $fc

jr_003_615b:
    jr jr_003_615b

    jr @+$01

    add c
    rst $38
    pop af
    add e
    ldh [rTAC], a
    ret z

    rrca
    add [hl]
    rra
    ld h, $3f
    jr jr_003_61ec

    jr @+$01

    add c
    rst $38
    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld h, c
    pop hl
    inc de
    di
    rlca
    rst $20
    adc a
    rst $08
    ld bc, $0003
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    add [hl]
    rlca
    ret z

    rrca
    ldh [rTAC], a
    pop af
    add e
    adc a
    pop bc
    rlca
    ldh [rNR13], a
    ldh a, [$61]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    pop af
    add e
    ldh [rTAC], a
    ret z

    rrca
    add [hl]
    rlca
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $8103
    rst $38
    jr @+$01

    ld [$040e], sp
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    add c
    rst $38
    jr @+$01

    db $10

jr_003_61c6:
    ld [hl], b
    jr nz, jr_003_61e9

    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0400
    inc b
    ld [$180e], sp
    rst $38
    add c
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop

jr_003_61e9:
    jr nz, jr_003_620b

    db $10

jr_003_61ec:
    ld [hl], b
    jr @+$01

    add c
    rst $38
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

jr_003_620b:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_622a:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_622a

    nop
    ret nz

    nop
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
    add e
    rst $38
    db $10
    rst $38
    jr c, @+$01

    ld l, h
    rst $38
    jr c, @+$01

    ld bc, $83ff
    rst $38
    add $ff
    add e
    rst $38
    db $10
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_62a7:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c64d
    rst $38
    add e
    rst $38
    db $10
    rst $38
    jr nc, jr_003_62a7

    ld h, b
    ldh [rP1], a
    ret nz

    nop
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    add e
    rst $38
    db $10
    rst $38
    ld [$040f], sp
    rlca
    nop
    inc bc
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    add b
    add b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ret nz

jr_003_62db:
    nop
    ret nz

    add b
    add b
    ret nz

    ret nz

    inc bc
    inc bc
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld bc, $0101
    inc bc
    inc bc
    nop
    ld bc, $c080
    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    jr nz, jr_003_62db

    nop
    ldh a, [$83]
    rst $38
    add $ff
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    ld bc, $830f
    rst $38
    add $ff
    nop
    nop
    nop
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
    add b
    add b
    ret nz

    ret nz

    inc bc
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
    nop
    add e
    rst $38
    db $10
    rst $38

jr_003_6355:
    jr c, jr_003_6355

    ld l, h
    db $fc
    add hl, sp
    ld sp, hl
    inc bc
    di
    add a
    rst $20
    rst $08
    rst $08
    add e
    rst $38
    db $10
    rst $38
    jr c, @+$81

    inc l
    ccf
    sbc b
    rra
    pop bc
    rrca
    db $e3
    rlca
    ld a, [c]
    add e
    adc a
    pop bc
    rlca
    ldh [$33], a
    ldh a, [rBCPD]
    ld hl, sp+$38
    db $fc
    nop
    cp $83
    rst $38
    add $ff
    di
    add e
    ldh [rTAC], a
    ret z

    rrca
    adc h
    rra
    jr c, jr_003_63ca

    ld bc, $837f
    rst $38
    add $ff
    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld hl, $03e1
    di
    add a
    rst $20
    rst $08
    rst $08
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    add b
    rlca
    pop bc
    rrca
    db $e3
    rlca
    ld a, [c]
    add e
    adc a
    pop bc
    rlca
    ldh [rNR13], a
    ldh a, [$61]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    pop af
    add e
    ldh [rTAC], a
    ret z

    rrca
    add [hl]
    rlca
    ld [bc], a

jr_003_63ca:
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $8303
    rst $38
    db $10
    rst $38
    ld [$040e], sp
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    add e
    rst $38
    db $10
    rst $38
    jr nc, @+$72

    jr nz, jr_003_6409

    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0000
    inc b
    nop
    ld c, $83
    rst $38
    add $ff
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop

jr_003_6409:
    jr nz, jr_003_642b

    nop
    ld [hl], b
    add e
    rst $38
    add $ff
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

jr_003_642b:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_644a:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_644a

    nop
    ret nz

    nop
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
    ld e, $ff
    ld d, b
    rst $38
    jp $c9ff


    rst $38
    pop hl
    rst $38
    dec b
    rst $38
    inc a
    rst $38
    sbc h
    rst $38
    ld e, $ff
    db $10
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, l
    sbc h
    rst $38
    ld e, $ff
    ld d, b
    rst $38
    ret nz

    ldh a, [$c0]
    ldh [$c0], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    ld e, $ff
    ld d, b
    rst $38
    inc bc
    rrca
    ld bc, $0107
    inc bc
    ld bc, $0003
    inc bc
    nop
    inc bc
    nop
    add b
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    nop
    ret nz

    nop
    add b
    add b
    ret nz

    ld [bc], a
    inc bc
    nop
    ld bc, $0303
    ld bc, $0103
    ld bc, $0101
    nop
    inc bc
    nop
    ld bc, $c000
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    nop
    ldh a, [$3c]
    rst $38
    sbc h
    rst $38
    ld [bc], a
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    rlca
    dec b
    rrca
    inc a
    rst $38
    sbc h
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
    ld bc, $0300
    nop
    nop
    nop
    nop
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

    ld [bc], a
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
    ld e, $ff
    ld d, b
    rst $38
    jp nz, $c8fe

    db $fc
    pop hl
    ld sp, hl
    inc bc
    di
    daa
    rst $20
    adc a
    rst $08
    ld e, $ff
    ld d, b
    rst $38
    ld b, e
    ld a, a
    add hl, bc
    ccf
    add c

jr_003_658a:
    rra
    push bc
    rrca
    db $e4
    rlca
    ldh a, [$83]
    rrca
    pop bc
    ld b, a
    ldh [$c3], a
    ldh a, [$c9]
    ld hl, sp-$20
    db $fc
    inc b
    cp $3c
    rst $38
    sbc h
    rst $38
    ld a, [c]
    add e
    ldh [rTAC], a
    jp $890f


    rra
    ld hl, $053f
    ld a, a
    inc a
    rst $38
    sbc h
    rst $38
    nop
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    pop hl
    pop hl
    inc bc
    di
    daa
    rst $20
    adc a
    rst $08
    ld [bc], a
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $8103
    rlca
    push bc
    rrca
    db $e4
    rlca
    ldh a, [$83]
    rrca
    pop bc
    ld b, a
    ldh [$c3], a
    ldh a, [$c1]
    ldh [$c0], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    ld a, [c]
    add e
    ldh [rTAC], a
    jp $810f


    rlca
    ld bc, $0103
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld e, $ff
    ld d, b
    rst $38
    ld [bc], a
    ld c, $00
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld e, $ff
    ld d, b
    rst $38
    ld b, b
    ld [hl], b
    nop
    jr nz, jr_003_658a

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0000
    inc b
    inc b
    ld c, $3c
    rst $38
    sbc h
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    jr nz, jr_003_664b

    nop
    ld [hl], b
    inc a
    rst $38
    sbc h
    rst $38
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

jr_003_664b:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_666a:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_6687:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_666a

    nop
    ret nz

    nop
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
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ret


    rst $38
    nop
    rst $38
    ld b, $ff
    rrca
    rst $38
    sbc h
    rst $38
    nop
    rst $38
    jr nz, jr_003_6687

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, l
    sbc h
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [$f0]
    ret nz

    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    rst $38
    ld h, b
    rst $38
    nop
    rrca
    ld bc, $0007
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    add b
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    add b
    ret nz

    nop
    inc bc
    nop
    ld bc, $0300
    ld bc, $0003
    ld bc, $0100
    inc bc
    inc bc
    nop
    ld bc, $c000
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ldh [rP1], a
    ldh a, [rIF]
    rst $38
    sbc h
    rst $38
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $0003
    rlca
    ld b, $0f
    rrca
    rst $38
    sbc h
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
    ld bc, $0001
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
    add b
    add b
    ret nz

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
    rst $38
    ld h, b
    rst $38
    ldh a, [$fe]
    ret z

    db $fc
    ld bc, $03f9
    di
    rlca
    rst $20
    adc a
    rst $08
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    ld a, a
    add hl, bc
    ccf
    add b

jr_003_67aa:
    rra
    add $0f
    rst $20
    rlca
    ldh a, [$83]
    rrca
    pop bc
    ld h, a
    ldh [$f3], a
    ldh a, [$c9]
    ld hl, sp+$00
    db $fc
    ld b, $fe
    rrca
    rst $38
    sbc h
    rst $38
    ldh a, [$83]
    ldh [rTAC], a
    ret nz

    rrca
    adc c
    rra
    nop
    ccf
    ld b, $7f
    rrca
    rst $38
    sbc h
    rst $38
    nop
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld bc, $03e1
    di
    rlca
    rst $20
    adc a
    rst $08
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $8003
    rlca
    add $0f
    rst $20
    rlca
    ldh a, [$83]
    rrca
    pop bc
    ld h, a
    ldh [$f3], a
    ldh a, [$c1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    ldh a, [$83]
    ldh [rTAC], a
    ret nz

    rrca
    add c
    rlca
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    rst $38
    ld h, b
    rst $38
    nop
    ld c, $00
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    ld [hl], b
    nop
    jr nz, jr_003_67aa

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0000
    inc b
    ld b, $0e
    rrca
    rst $38
    sbc h
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    jr nz, jr_003_684c

jr_003_684c:
    ld [hl], b
    rrca
    rst $38
    sbc h
    rst $38
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
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_688a:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_688a

    nop
    ret nz

    nop
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
    ld a, [hl]
    rst $38
    ld [$a8ff], sp
    rst $38
    ret z

    rst $38
    rst $20
    rst $38
    inc de
    rst $38
    dec d
    rst $38
    db $10
    rst $38
    ld a, [hl]
    rst $38
    nop
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, l
    db $10
    rst $38
    ld a, [hl]
    rst $38
    ld [$a0ff], sp
    ldh a, [$c0]
    ldh [$c0], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld a, [hl]
    rst $38
    ld [$08ff], sp
    rrca
    nop
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    inc bc
    nop
    add b
    nop
    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ret nz

    ld [bc], a
    inc bc
    nop
    ld bc, $0300
    nop
    inc bc
    ld bc, $0101
    ld bc, $0301
    nop
    ld bc, $c040
    nop
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    db $10
    ldh a, [$15]
    rst $38
    db $10
    rst $38
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    rlca
    rlca
    inc bc
    rrca
    dec d
    rst $38
    db $10
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
    ld bc, $0001
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
    add b
    nop
    ret nz

    ld [bc], a
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
    ld b, b
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
    ld a, [hl]
    rst $38
    ld [$a8ff], sp
    cp $c8
    db $fc
    pop hl
    ld sp, hl
    inc de
    di
    rlca
    rst $20
    rrca
    rst $08
    ld a, [hl]
    rst $38
    ld [$28ff], sp
    ld a, a
    ld [$873f], sp

jr_003_69ca:
    rra
    jp $e50f


    rlca
    ldh a, [$83]
    ld c, a
    pop bc
    rlca
    ldh [$a3], a
    ldh a, [$c9]
    ld hl, sp-$1c
    db $fc
    ld [de], a
    cp $15
    rst $38
    db $10
    rst $38
    ld a, [c]
    add e
    ldh [rTAC], a
    ret z

    rrca
    adc b
    rra
    daa
    ccf
    inc de
    ld a, a
    dec d
    rst $38
    db $10
    rst $38
    ld b, b
    ret nz

    nop
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    pop hl
    pop hl
    inc de
    di
    rlca
    rst $20
    rrca
    rst $08
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    add a
    rlca
    jp $e50f


    rlca
    ldh a, [$83]
    ld c, a
    pop bc
    rlca
    ldh [$a3], a
    ldh a, [$c1]
    ldh [$c0], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld a, [c]
    add e
    ldh [rTAC], a
    ret z

    rrca
    add b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    inc bc
    ld a, [hl]
    rst $38
    ld [$08ff], sp
    ld c, $00
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld a, [hl]
    rst $38
    ld [$20ff], sp
    ld [hl], b
    nop
    jr nz, jr_003_69ca

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0400
    inc b
    ld [bc], a
    ld c, $15
    rst $38
    db $10
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    jr nz, jr_003_6a8b

    db $10
    ld [hl], b
    dec d
    rst $38
    db $10
    rst $38
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

jr_003_6a8b:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_6aaa:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_6aaa

    nop
    ret nz

    nop
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
    ld de, $11ff
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ld b, h
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    ld de, $11ff
    rst $38
    db $10
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld c, l
    ld de, $11ff
    rst $38
    ld de, $f0ff
    ldh a, [$c0]
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ret nz

    ld de, $11ff
    rst $38
    rrca
    rrca
    rlca
    rlca
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    add b
    nop
    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    ret nz

    ld bc, $0103
    ld bc, $0303
    inc bc
    inc bc
    nop
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0001
    ret nz

    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$c0], a
    ldh a, [rIE]
    rst $38
    ld de, $01ff
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    rlca
    rrca
    rst $38
    rst $38
    ld de, $00ff
    nop
    nop
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
    add b
    add b
    nop
    ret nz

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
    ld de, $11ff
    rst $38
    cp $fe
    call nz, Call_003_41fc
    ld sp, hl
    jp $e7f3


    rst $20
    rrca
    rst $08
    ld de, $11ff
    rst $38
    ld a, a
    ld a, a
    rlca
    ccf
    add h

jr_003_6bea:
    rra
    rst $00
    rrca
    rst $20
    rlca
    pop af
    add e
    rrca
    pop bc
    rlca
    ldh [$f3], a
    ldh a, [$c1]
    ld hl, sp+$44
    db $fc
    add $fe
    rst $38
    rst $38
    ld de, $f1ff
    add e
    pop hl
    rlca
    rst $08
    rrca
    add a
    rra
    inc b
    ccf
    ld b, a
    ld a, a
    rst $38
    rst $38
    ld de, $00ff
    ret nz

    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, c
    pop hl
    jp $e7f3


    rst $20
    rrca
    rst $08
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add h
    rlca
    rst $00
    rrca
    rst $20
    rlca
    pop af
    add e
    rrca
    pop bc
    rlca
    ldh [$f3], a
    ldh a, [$c1]
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ret nz

    pop af
    add e
    pop hl
    rlca
    rst $08
    rrca
    add a
    rlca
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $1103
    rst $38
    ld de, $0eff
    ld c, $04
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld de, $11ff
    rst $38
    ld [hl], b
    ld [hl], b
    nop
    jr nz, jr_003_6bea

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    inc bc
    ld [bc], a
    inc b
    rlca
    rlca
    rrca
    rst $38
    rst $38
    ld de, $f0ff
    add b
    ldh [rP1], a
    ret nz

    nop
    ret nz

    ld b, b
    ld b, b
    ldh [$c0], a
    ldh a, [rIE]
    rst $38
    ld de, $00ff
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
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_6cca:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_6cca

    nop
    ret nz

    nop
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
    db $db
    rst $38
    jr @+$01

    add c
    rst $38
    cp l
    rst $38
    add c
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $10
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, l
    db $db
    rst $38
    db $db
    rst $38
    jr @+$01

    add b
    ldh a, [$a0]
    ldh [$80], a
    ret nz

    nop
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    db $db
    rst $38
    jr @+$01

    ld bc, $050f
    rlca
    ld bc, $0003
    inc bc
    ld bc, $0303
    inc bc
    add b
    add b
    nop
    ret nz

    add b
    add b
    add b
    add b
    add b
    ret nz

    nop
    ret nz

    add b
    add b
    ret nz

    ret nz

    inc bc
    inc bc
    nop
    ld bc, $0301
    ld bc, $0103
    ld bc, $0100
    ld bc, $0103
    ld bc, $c0c0
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ldh [rP1], a
    ldh a, [$99]
    rst $38
    db $db
    rst $38
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0007
    rrca
    sbc c
    rst $38
    db $db
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
    ld bc, $0301
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
    add b
    add b
    ret nz

    ret nz

    inc bc
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
    ret nz

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
    db $db
    rst $38
    jr @+$01

    add b
    cp $bc
    db $fc
    add c
    ld sp, hl
    inc bc
    di
    add a
    rst $20
    rst $08
    rst $08
    db $db
    rst $38
    jr @+$01

    ld bc, $3d7f
    ccf
    add c
    rra
    ret nz

    rrca
    pop hl
    rlca
    di
    add e
    rst $08
    pop bc
    rlca
    ldh [$83], a
    ldh a, [$b9]
    ld hl, sp-$80
    db $fc
    nop
    cp $99
    rst $38
    db $db
    rst $38
    di
    add e
    ldh [rTAC], a
    pop bc
    rrca
    sbc l
    rra
    ld bc, $003f
    ld a, a
    sbc c
    rst $38
    db $db
    rst $38
    ret nz

    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add c
    pop hl
    inc bc
    di
    add a
    rst $20
    rst $08
    rst $08
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0103
    inc bc
    add c
    rlca
    ret nz

    rrca
    pop hl
    rlca
    di
    add e
    rst $08
    pop bc
    rlca
    ldh [$83], a
    ldh a, [$a1]
    ldh [$80], a
    ret nz

    nop
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    di
    add e
    ldh [rTAC], a
    pop bc
    rrca
    add l
    rlca
    ld bc, $0003
    inc bc
    ld bc, $0303
    inc bc
    db $db
    rst $38
    jr @+$01

    nop
    ld c, $04
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    db $db
    rst $38
    jr @+$01

    nop
    ld [hl], b
    jr nz, jr_003_6ea9

    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0000
    inc b
    nop
    ld c, $99
    rst $38
    db $db
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop

jr_003_6ea9:
    nop
    jr nz, jr_003_6eac

jr_003_6eac:
    ld [hl], b
    sbc c
    rst $38
    db $db
    rst $38
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
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_6eea:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_6eea

    nop
    ret nz

    nop
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
    rst $10
    rst $38
    ld de, $29ff
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld de, $92ff
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    db $10
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    rst $10
    rst $38
    rst $10
    rst $38
    ld de, $20ff
    ldh a, [$60]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    rst $10
    rst $38
    ld de, $09ff
    rrca
    dec b
    rlca
    ld bc, $0103
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    add b
    add b
    nop
    ret nz

    nop
    add b
    nop
    add b
    ld b, b
    ret nz

    nop
    ret nz

    add b
    add b
    ret nz

    ret nz

    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld [bc], a
    inc bc
    ld bc, $c001
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [$92]
    rst $38
    rst $10
    rst $38
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    rlca
    ld bc, $920f
    rst $38
    rst $10
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
    ld bc, $0303
    nop
    nop
    nop
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
    ret nz

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
    rst $10
    rst $38
    ld de, $28ff
    cp $7c
    db $fc
    ld a, c
    ld sp, hl
    inc de
    di
    add a
    rst $20
    rst $08
    rst $08
    rst $10
    rst $38
    ld de, $29ff
    ld a, a
    dec a
    ccf
    sbc l
    rra
    pop bc
    rrca
    ld [c], a
    rlca
    di
    add e
    rst $08
    pop bc
    rlca
    ldh [rNR44], a
    ldh a, [$79]
    ld hl, sp+$7c
    db $fc
    db $10
    cp $92
    rst $38
    rst $10
    rst $38
    di
    add e
    pop hl
    rlca
    ret


    rrca
    sbc l
    rra
    dec a
    ccf
    ld de, $927f
    rst $38
    rst $10
    rst $38
    ret nz

    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld h, c
    pop hl
    inc de
    di
    add a
    rst $20
    rst $08
    rst $08
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $8503
    rlca
    pop bc
    rrca
    ld [c], a
    rlca
    di
    add e
    rst $08
    pop bc
    rlca
    ldh [rNR44], a
    ldh a, [$61]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    di
    add e
    pop hl
    rlca
    ret


    rrca
    add l
    rlca
    ld bc, $0103
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rst $10
    rst $38
    ld de, $08ff
    ld c, $04
    inc b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rst $10
    rst $38
    ld de, $20ff
    ld [hl], b
    jr nz, jr_003_70c9

    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0400
    inc b
    nop
    ld c, $92
    rst $38
    rst $10
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop

jr_003_70c9:
    jr nz, jr_003_70eb

    db $10
    ld [hl], b
    sub d
    rst $38
    rst $10
    rst $38
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

jr_003_70eb:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    rrca
    ld bc, $0007
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
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop

jr_003_710a:
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
    ld bc, $0700
    nop
    rrca
    nop
    inc de
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_710a

jr_003_714a:
    nop
    ret nz

    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    inc c
    rra
    ld bc, $030f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld h, b
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld bc, $000f
    rra
    ld a, a
    ld a, h
    rst $38
    db $fd
    ld a, a
    ld a, [$b037]
    inc bc
    add b
    nop
    nop
    rst $08
    rst $08
    rrca
    rra
    add [hl]
    ld [hl], $c0
    jr nz, jr_003_714a

    nop
    ret nz

    nop
    nop
    ldh a, [rP1]
    nop
    inc d
    inc de
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0308
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0308
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
