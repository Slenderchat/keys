#!/bin/bash
for file in crypt/*
do
	gpg --batch --passphrase-file pass -o "./encrypted/$(basename $file).gpg" -c $file
	rm -f $file
done
