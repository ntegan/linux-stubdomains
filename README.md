

## Goal
The goal for this repo is to create a Docker container
(probably Fedora initially, then CentOS) for building
Marmarek or Jason's stubdom branches.

Search the xen-devel mailing list for `linux stubdom`
for more information.  
https://marc.info/?l=xen-devel&m=158922840426790&w=2

## Status
Why does it fail to make /lib directories in the rootfs?
```
+ [[ -e /root/stubdom/build/rootfs/dir//etc/qemu-ifup ]]
+ /usr/lib/dracut/dracut-install -D /root/stubdom/build/rootfs/dir -l rootfs/qemu-ifup /etc/qemu-ifup
+ inst rootfs/qemu-ifdown /etc/qemu-ifdown
+ [[ -e /root/stubdom/build/rootfs/dir//etc/qemu-ifdown ]]
+ /usr/lib/dracut/dracut-install -D /root/stubdom/build/rootfs/dir -l rootfs/qemu-ifdown /etc/qemu-ifdown
+ inst rootfs/init /init
+ [[ -e /root/stubdom/build/rootfs/dir//init ]]
+ /usr/lib/dracut/dracut-install -D /root/stubdom/build/rootfs/dir -l rootfs/init /init
+ mkdir /root/stubdom/build/rootfs/dir/lib.new
+ find /root/stubdom/build/rootfs/dir/lib /root/stubdom/build/rootfs/dir/lib64 /root/stubdom/build/rootfs/dir/usr/lib /root/stubdom/build/rootfs/dir/usr/lib64 /root/stubdom/build/rootfs/dir/usr/local/lib /root/stubdom/build/rootfs/dir/usr/local/lib64 -type f -print0
+ xargs -0r mv -t /root/stubdom/build/rootfs/dir/lib.new/
find: '/root/stubdom/build/rootfs/dir/lib': No such file or directory
find: '/root/stubdom/build/rootfs/dir/usr/lib': No such file or directory
find: '/root/stubdom/build/rootfs/dir/usr/local/lib': No such file or directory
find: '/root/stubdom/build/rootfs/dir/usr/local/lib64': No such file or directory
+ true
+ rm -rf /root/stubdom/build/rootfs/dir/lib /root/stubdom/build/rootfs/dir/lib64 /root/stubdom/build/rootfs/dir/usr/lib /root/stubdom/build/rootfs/dir/usr/lib64 /root/stubdom/build/rootfs/dir/usr/local/lib /root/stubdom/build/rootfs/dir/usr/local/lib64
+ IFS=:
+ unset IFS
+ mv /root/stubdom/build/rootfs/dir/lib.new /root/stubdom/build/rootfs/dir/lib
+ rm -rf /root/stubdom/build/rootfs/dir/home
+ touch /root/stubdom/build/rootfs/dir/etc/ld.so.conf
+ /sbin/ldconfig -r /root/stubdom/build/rootfs/dir /lib
+ ln -s lib /root/stubdom/build/rootfs/dir/lib64
+ find /root/stubdom/build/rootfs/dir -print0
+ xargs -0 touch -ch -d @0
+ cd /root/stubdom/build/rootfs/dir
+ gzip -n -9
+ find . -print0
+ LC_ALL=C
+ sort -z
+ cpio --null -R 0:0 -H newc -o
47163 blocks

```

## Usage
#### To Just Build Container from Dockerfile
`make`

#### To Build stubdom (from outside the container)
`make build`

