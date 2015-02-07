PRG = messymonitor

all: $(PRG).rom

$(PRG).rom: $(PRG).ass
	 zasm -vw2 $(PRG).ass
	 
program: $(PRG).rom
	../utils/simple_eeprom_programme/eeprom_program -p /dev/ttyUSB0 -i $(PRG).rom
