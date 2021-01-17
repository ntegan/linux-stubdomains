#!/bin/bash

cd /root/stubdom

echo '## applying patches'
git apply ../patches/*.patch

echo '## Getting sources'
make get-sources
mv dl/* .

echo '## Making stubdom'
make -j$(nproc) -f Makefile.stubdom

mkdir -p artifacts
cp stubdom/build/linux/arch/x86/boot/bzImage  artifacts/stubdom-linux-bzImage
cp stubdom/build/rootfs/stubdom-linux-rootfs artifacts 
