PRG = ram_prg_test

all: $(PRG).rom

$(PRG).rom: $(PRG).ass
	 zasm -vw2 $(PRG).ass
	 
script: $(PRG).rom
	../ram_prg/ram_prg -s 8200 -i $(PRG).rom > script.txt

labels: label_imports
	../utils/export_labels/export_labels.sh ./label_imports ../messymonitor/messymonitor.log > labels.ass
