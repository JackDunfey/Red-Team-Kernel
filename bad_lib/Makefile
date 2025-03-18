library: cracked.so

install: library
	sudo bash install.sh

%.so: %.c
	gcc -shared -fPIC -o $@ $< -lcrypt -ldl

clean:
	rm -f cracked.so