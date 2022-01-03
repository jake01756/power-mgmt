SHCFLAGS = -vrS
DEBUGEXPIRE = (shell date --date='72 hours' +%d\/%m\/%Y)
DEBUGFLAGS = "-vSD -m 'This debug build has expired, please recompile to continue debugging.'"
TARGETS = power-mgmt
NAME="power-mgmt"
DEBUGNAME = "power-mgmt-debug"

output: power-mgmt
	mkdir -p build
	shc -f power-mgmt.sh $(SHCFLAGS) -o build/$<

debug: 
	mkdir -p build
	shc -f power-mgmt.sh $(DEBUGFLAGS) -e $(DEBUGEXPIRE) -o build/$<

clean:
	cd build
	rm power-mgmt*

