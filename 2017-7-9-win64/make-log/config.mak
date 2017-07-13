SRCPATH=.
prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
SYS_ARCH=X86_64
SYS=WINDOWS
CC=gcc
CFLAGS=-Wno-maybe-uninitialized -Wshadow -O3 -ffast-math -m64  -Wall -I. -I$(SRCPATH) -D_POSIX_C_SOURCE=200112L -std=gnu99 -D_GNU_SOURCE -fomit-frame-pointer -fno-tree-vectorize
COMPILER=GNU
COMPILER_STYLE=GNU
DEPMM=-MM -g0
DEPMT=-MT
LD=gcc -o 
LDFLAGS=-m64  -Wl,--output-def=libx264.def -static-libgcc  -Wl,--high-entropy-va -Wl,--dynamicbase,--nxcompat,--tsaware 
LIBX264=libx264.a
AR=gcc-ar rc 
RANLIB=gcc-ranlib
STRIP=strip
INSTALL=install
AS=
ASFLAGS= -I. -I$(SRCPATH) -DARCH_X86_64=1 -I$(SRCPATH)/common/x86/ -f win64 -DSTACK_ALIGNMENT=16 -DPIC -DHIGH_BIT_DEPTH=0 -DBIT_DEPTH=8
RC=windres
RCFLAGS=--target=pe-x86-64  -I. -o 
EXE=.exe
HAVE_GETOPT_LONG=1
DEVNULL=NUL
PROF_GEN_CC=-fprofile-generate
PROF_GEN_LD=-fprofile-generate
PROF_USE_CC=-fprofile-use
PROF_USE_LD=-fprofile-use
HAVE_OPENCL=yes
default: cli
install: install-cli
SONAME=libx264-152.dll
IMPLIBNAME=libx264.dll.a
SOFLAGS=-shared -Wl,--out-implib,$(IMPLIBNAME)  -Wl,--image-base,0x180000000 -Wl,-Bsymbolic
default: lib-shared
install: install-lib-shared
LDFLAGSCLI =  -lshell32 -Wl,--image-base,0x140000000
CLI_LIBX264 = $(LIBX264)
