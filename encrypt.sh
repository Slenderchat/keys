#!/bin/bash
for file in crypt/*
do
	gpg --batch --yes -o "encrypted/$(basename $file).gpg" -r steeplike@gmail.com -se $file &&
	mv -f $file -t decrypted
done
