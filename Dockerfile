FROM fedora:32

RUN yum -y update
RUN yum -y upgrade

## Marmarek stubdom dependencies
RUN yum -y install \
    flex \
    elfutils-libelf-devel \
    libtool-ltdl-devel \
    libsndfile-devel \
    bison \
    git \
    wget \
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
RUN wget \
    https://ftp.qubes-os.org/repo/yum/r4.1/current/vm/fc32/rpm/qubes-libvchan-xen-devel-4.1.6-1.fc32.x86_64.rpm \
    https://ftp.qubes-os.org/repo/yum/r4.1/current/vm/fc32/rpm/qubes-libvchan-xen-4.1.6-1.fc32.x86_64.rpm \
    https://ftp.qubes-os.org/repo/yum/r4.1/current/vm/fc32/rpm/qubes-gui-common-devel-4.1.1-1.fc32.x86_64.rpm \
    https://ftp.qubes-os.org/repo/yum/r4.1/current/vm/fc32/rpm/python3-u2flib-host-3.0.3-7.fc32.noarch.rpm
RUN yum -y install qubes-*rpm python*rpm
RUN rm -f qubes-*rpm python*rpm
