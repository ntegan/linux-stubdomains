#!/bin/bash

cd /root/stubdom

make get-sources
mv dl/* .

make -j$(nproc) -f Makefile.stubdom

