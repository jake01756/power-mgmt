SHCFLAGS = -vrS
BSYSHCFLAGS = -vrSB
DEBUGEXPIRE = $(shell date --date='72 hours' +%d\/%m\/%Y)
DEBUGFLAGS = -vSD -m 'This debug build has expired, please recompile to continue debugging.'
TARGETS = power-mgmt

main:
	mkdir -p build
	shc -f main.sh $(SHCFLAGS) -o build/power-mgmt

debug:
	mkdir -p build
	shc -f main.sh -e $(DEBUGEXPIRE) $(DEBUGFLAGS) -o build/power-mgmt-debug
	
busybox:
	mkdir -p build
	shc -f main.sh $(BSYSHCFLAGS) -o build/power-mgmt-busybox

clean:
	cd build
	rm power-mgmt
	rm power-mgmt-debug
