

## Goal
The goal for this repo is to create a Docker container
(probably Fedora initially, then CentOS) for building
Marmarek or Jason's stubdom branches.

Search the xen-devel mailing list for `linux stubdom`
for more information.  
https://marc.info/?l=xen-devel&m=158922840426790&w=2

## Status
Lots of qubes dependencies.
Added most of them to Dockerfile.
Current one is libuf2m or something, can't find it.

## Usage

#### Make container
run `make`

#### Enter container
run `make containerize`

#### Get sources
run `make -j$(nproc) -C qubes-linux-stubdom get-sources`  
run `mv qubes-linux-stubdom/dl/* qubes-linux-stubdom/`

#### Make
run `make -j$(nproc) -C qubes-linux-stubdom -f Makefile.stubdom`  
