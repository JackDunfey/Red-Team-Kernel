savedcmd_lockdownk.mod := printf '%s\n'   lockdownk.o | awk '!x[$$0]++ { print("./"$$0) }' > lockdownk.mod
