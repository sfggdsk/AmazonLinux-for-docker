vi /entrypoint.sh

#!/bin/bash
env > /tmp/env.txt
env | grep AWS_ >> /root/.ssh/environment
root_pw=${ROOT_PW:-123123}
# generate host keys if not present
ssh-keygen -A
echo "root:$root_pw" | chpasswd
# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd -d -D -e "$@"
