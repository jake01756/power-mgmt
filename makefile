SHCFLAGS = "-vrS 
DEBUGEXPIRE = (shell date --date='72 hours' +%d\/%m\/%Y)
DEBUGFLAGS = "-vSD -m 'This debug build has expired, please recompile to continue debugging.'
TARGETS = output
NAME="power-mgmt"
DEBUGNAME = "power-mgmt-debug"

output: power-mgmt
	shc -f "power-mgmt.sh" $< $(SHCFLAGS) -o "power-mgmt" -l

debug: power-mgmt-debug
	shc -f "power-mgmt.sh" $< $(DEBUGFLAGS) -e $(DEBUGEXPIRE) -o "power-mgmt-debug" -l

clean:
	rm $(TARGETS)

