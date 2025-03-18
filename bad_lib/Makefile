install: library
	sudo bash install.sh

library: cracked.so

%.so: %.c
	gcc -shared -fPIC -o $@ $< -lcrypt -ldl

clean:
	rm -f cracked.so