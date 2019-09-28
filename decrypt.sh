#!/bin/bash
mkdir -p decrypted
for file in encrypted/*;
do
	gpg --batch --yes -o decrypted/$(basename ${file%.gpg}) -d $file
done

