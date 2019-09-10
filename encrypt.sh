#!/bin/bash
for file in crypt/*
do
	gpg --batch --yes --passphrase-file pass -o "encrypted/$(basename $file).gpg" -c $file &&
	mv -f $file -t decrypted
done

