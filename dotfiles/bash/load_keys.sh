# Iván Jaimes <ivan.iver@gmail.com>
# File: load_keys.sh
# --
# (c) Iver!
#
# This will start up ssh-agent for each Cygwin shell you have open.
# See bash_rc or bash_profile for more information.

SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
	eval `$SSHAGENT $SSHAGENTARGS`
	trap "kill $SSH_AGENT_PID" 0
fi
FILE_KEYS="$HOME/.ssh/load_keys"

while read line; do
  /usr/bin/ssh-add $line
done < $FILE_KEYS
