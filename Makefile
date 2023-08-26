.DELETE_ON_ERROR:

ASM = hack.asm
HACK = hack.sfc
ROM = fzerofinal.sfc
AS = asar
ASFLAGS = --symbols=wla

$(HACK): $(ASM)
	cp $(ROM) $(HACK)
	$(AS) $(ASFLAGS) $(ASM) $(HACK)

.PHONY:
clean:
	rm -rf $(HACK)
