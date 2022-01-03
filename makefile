SHCFLAGS = -vrS
DEBUGEXPIRE = $(shell date --date='72 hours' +%d\/%m\/%Y)
DEBUGFLAGS = -vSD -m 'This debug build has expired, please recompile to continue debugging.'
TARGETS = power-mgmt

main:
	mkdir -p build
	shc -f main.sh $(SHCFLAGS) -o build/power-mgmt

debug:
	mkdir -p build
	shc -f main.sh -e $(DEBUGEXPIRE) $(DEBUGFLAGS) -o build/power-mgmt-debug

clean:
	cd build
	rm power-mgmt
	rm power-mgmt-debug
