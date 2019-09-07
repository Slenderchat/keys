#!/bin/bash
for file in encrypted/*;
do
	gpg --batch --passphrase-file pass -o "./decrypted/$(basename ${file%.gpg})" $file
done
