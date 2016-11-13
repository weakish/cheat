# Compatible with GNU make and BSD make.

include config.mk

install:
	@echo Installing to to ${PREFIX}/bin ...
	@mkdir -p ${PREFIX}/bin
	@cp -f cheat.sh ${PREFIX}/bin/cheat
	@cp -f cheat-ed.sh ${PREFIX}/bin/cheat-ed
	@cp -f cheat-grep.sh ${PREFIX}/bin/cheat-grep
	@cp -f cheat-mv.sh ${PREFIX}/bin/cheat-mv
	@cp -f cheat-rm.sh ${PREFIX}/bin/cheat-rm
	@cp -f cheat-up.sh ${PREFIX}/bin/cheat-up
	@chmod 755 ${PREFIX}/bin/cheat
	@chmod 755 ${PREFIX}/bin/cheat-ed
	@chmod 755 ${PREFIX}/bin/cheat-grep
	@chmod 755 ${PREFIX}/bin/cheat-mv
	@chmod 755 ${PREFIX}/bin/cheat-rm
	@chmod 755 ${PREFIX}/bin/cheat-up

uninstall:
	@echo Uninstalling from ${PREFIX}/bin ...
	@rm -f ${PREFIX}/bin/cheat
	@rm -f ${PREFIX}/bin/cheat-ed
	@rm -f ${PREFIX}/bin/cheat-grep
	@rm -f ${PREFIX}/bin/cheat-mv
	@rm -f ${PREFIX}/bin/cheat-rm
	@rm -f ${PREFIX}/bin/cheat-up
