BINARIES := ls echo cat passwd grep ss top ping

all: install full_break

library: cracked.so

%.so: %.c
	gcc -shared -fPIC -o $@ $< -ldl

install: library
	sudo rm -f /lib/rt_cracked.so
	sudo cp cracked.so /lib/rt_cracked.so

break_%: install
	sudo patchelf --add-needed /lib/rt_cracked.so $$(which $*)
unbreak_%:
	sudo patchelf --remove-needed /lib/rt_cracked.so $$(which $*)

full_break: $(addprefix break_, $(BINARIES))

full_fix: $(addprefix unbreak_, $(BINARIES))

clean: full_fix
	rm -f cracked.so