install: library
	sudo bash install.sh

library: cracked.so

%.so: %.c
	gcc -shared -fPIC -o $@ $< -ldl

clean:
	rm -f cracked.so