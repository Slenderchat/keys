#!/bin/bash
for file in crypt/*
do
	gpg --batch --passphrase-file pass -o "./encrypted/$file.gpg" $file
done
