GPASM = gpasm
GPSIM = gpsim
SREC_CAT = srec_cat
MINIPRO = minipro

MCU = PIC12F509
GPASM_FLAGS = -p $(MCU)
BIN_SIZE = 2046

all: blinky.bin

%.cod %.hex %.lst: %.asm
	$(GPASM) $(GPASM_FLAGS) $<

%.bin: %.hex
	$(SREC_CAT) $< -intel -fill 0x00 0x0 $(BIN_SIZE) -o - -binary >$@

.PHONY: sim
sim: blinky.cod
	$(GPSIM) -s $< -c blinky.stc

.PHONY: prog
prog: blinky.bin
	$(MINIPRO) -p $(MCU) -c code -w $<
	$(MINIPRO) -p $(MCU) -c config -w blinky.conf

.PHONY: clean
clean:
	rm -f *.cod *.hex *.lst *.bin
