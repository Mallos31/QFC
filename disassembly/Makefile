IMAGE_DEPS = gfx/image_001_4ccb.2bpp gfx/image_001_4dcb.2bpp gfx/image_001_5260.2bpp gfx/image_001_5660.2bpp gfx/image_001_59c4.2bpp gfx/image_001_66c4.2bpp gfx/image_002_7bc0.2bpp gfx/image_002_7cc0.2bpp gfx/image_003_5641.2bpp gfx/image_003_6a41.2bpp gfx/image_003_6d11.2bpp gfx/image_003_7111.2bpp gfx/image_004_5c3a.2bpp gfx/image_004_613a.2bpp gfx/image_005_48dc.2bpp gfx/image_005_57dc.2bpp gfx/image_006_4a6a.2bpp gfx/image_006_4b6a.2bpp gfx/image_006_66e6.2bpp gfx/image_006_7034.2bpp gfx/image_006_7534.2bpp gfx/image_007_4753.2bpp gfx/image_007_4b53.2bpp gfx/image_007_4f53.2bpp gfx/image_007_7553.2bpp gfx/image_007_764c.2bpp gfx/image_007_7a0c.2bpp gfx/image_007_7b0c.2bpp gfx/image_008_56ee.2bpp gfx/image_008_58ee.2bpp gfx/image_009_7129.2bpp gfx/image_009_7d29.2bpp gfx/image_009_7f29.2bpp

all: game.gbc

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

game.o: game.asm bank_*.asm $(IMAGE_DEPS)
	rgbasm  -o game.o game.asm

game.gbc: game.o
	rgblink -n game.sym -m game.map -o $@ $<
	rgbfix -v -p 255 $@

	md5 $@

clean:
	rm -f game.o game.gbc game.sym game.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +