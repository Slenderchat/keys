#!/bin/bash
FIFO=.decrypt.sh.temp
mkfifo $FIFO
mkdir -p decrypted
gpg --batch --yes -q -o $FIFO -d keychain.tar.gpg &
tar -x -C decrypted -f $FIFO
rm $FIFO
