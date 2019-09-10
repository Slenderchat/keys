#!/bin/bash
mkdir -p "$HOME/keys/decrypted"
for file in $HOME/keys/encrypted/*;
do
	gpg --batch --yes --passphrase-file $HOME/keys/pass -o "$HOME/keys/decrypted/$(basename ${file%.gpg})" -d $file
done

