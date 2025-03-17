savedcmd_interfacek.mod := printf '%s\n'   interfacek.o | awk '!x[$$0]++ { print("./"$$0) }' > interfacek.mod
