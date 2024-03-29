#! /bin/sh

lftp -u "$USERNAME","$PASSWORD" $REMOTE_SERVER <<EOF

set ssl:verify-certificate false;
set cmd:fail-exit yes;

mkdir -p -f $REMOTE_PATH;
mirror --parallel=10 --no-perms          /files/ $REMOTE_PATH --reverse;

exit;
EOF
