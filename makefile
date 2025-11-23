WIN=win
MAC=macos
UBUNTU=ubuntu

CPM2_FILES = cpm2/cpm22b23-56k.dsk cpm2/wordstar.dsk cpm2/blank.dsk cpm2/zork.dsk cpm2/cpm2.ini

all: altair8800$(WIN)

altair8800$(WIN) : $(WIN)/altair8800$(WIN).zip $(MAC)/altair8800$(MAC).zip $(UBUNTU)/altair8800$(UBUNTU).zip

$(WIN)/altair8800$(WIN).zip : $(WIN)/Altair8800.exe $(CPM2_FILES)
	zip -j $(WIN)/altair8800$(WIN).zip $(WIN)/Altair8800.exe $(CPM2_FILES)

altair8800$(MAC) : $(MAC)/altair8800$(MAC).zip 

$(MAC)/altair8800$(MAC).zip : $(MAC)/altair8800 $(CPM2_FILES)
	zip -j $(MAC)/altair8800$(MAC).zip $(MAC)/altair8800 $(CPM2_FILES)

altair8800$(UBUNTU) : $(UBUNTU)/altair8800$(UBUNTU).zip 

$(UBUNTU)/altair8800$(UBUNTU).zip : $(UBUNTU)/altair8800 $(CPM2_FILES)
	zip -j $(UBUNTU)/altair8800$(UBUNTU).zip $(UBUNTU)/altair8800 $(CPM2_FILES)

