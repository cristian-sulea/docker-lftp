#!/bin/sh

lftp -u "$USERNAME","$PASSWORD" $REMOTE_SERVER <<EOF

set ssl:verify-certificate false;
set cmd:fail-exit yes;


mirror --parallel=10 --no-perms          $REMOTE_PATH /files/;

exit;
EOF
