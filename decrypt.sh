#!/bin/bash
mkdir -p decrypted
for file in encrypted/*;
do
	gpg --batch --yes -o decrypted/$(basename ${file%.gpg}) -d $file
done
pushd decrypted
tar xf pki.tar.xz
rm pki.tar.xz
popd
