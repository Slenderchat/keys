#!/bin/bash
FIFO=.encrypt.sh.temp
mkfifo $FIFO
tar -c -C decrypted -f $FIFO . &
gpg --batch --yes -q -r steeplike@gmail.com -o keychain.tar.gpg -se $FIFO
rm $FIFO
