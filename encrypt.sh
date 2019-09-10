#!/bin/bash
for file in $HOME/keys/crypt/*
do
	gpg --batch --yes --passphrase-file $HOME/keys/pass -o "$HOME/keys/encrypted/$(basename $file).gpg" -c $file &&
	rm -f $file
done

