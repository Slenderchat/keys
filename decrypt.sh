#!/bin/bash
mkdir -p decrypted
for file in encrypted/*;
do
	gpg --batch --yes --passphrase-file pass -o decrypted/$(basename ${file%.gpg}) -d $file
done

