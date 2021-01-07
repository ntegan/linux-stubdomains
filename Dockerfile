FROM fedora:32

RUN yum -y update
RUN yum -y upgrade

## Marmarek stubdom dependencies
RUN yum -y install \
    python \
    zlib-devel \
    xen-devel \
    glib2-devel \
    autoconf \
    automake \
    edk2-tools \
    libtool \
    libseccomp-devel \
    pixman-devel \
    xen-devel \
    bc \
    gcc-plugin-devel \
    gcc-c++ \
    quilt \
    xen-runtime \
    busybox \
    dracut \
    inotify-tools 
## TODO Why these dependencies?
    #qubes-gui-common-devel \
    #qubes-libvchan-xen-devel \
