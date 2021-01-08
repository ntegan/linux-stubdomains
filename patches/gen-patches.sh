#!/bin/bash

set -euxo pipefail

my_dir="$(cd $(dirname $0) && pwd)"

my_fork=qubes-vmm-xen-stubdom-linux

git clone --recursive https://github.com/ntegan/${my_fork}
cd ${my_fork}
git format-patch -2
cd ${my_dir}
mv ${my_fork}/*.patch .
rm -rf ${my_fork}
