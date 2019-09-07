#!/bin/bash
mkdir -p "./decrypted"
for file in encrypted/*;
do
	gpg --batch --passphrase-file pass -o "./decrypted/$(basename ${file%.gpg})" -d $file
done
