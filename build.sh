#!/bin/bash

cd /root/stubdom

echo '## applying patches'
git apply ../patches/*.patch

echo '## Getting sources'
make get-sources
mv dl/* .

echo '## Making stubdom'
make -j$(nproc) -f Makefile.stubdom

