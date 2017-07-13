1.win32

./configure --disable-asm  --enable-shared --extra-ldflags=-Wl,--output-def=libx264.def --extra-ldflags="-static-libgcc"

LIB /machine:x86 /def:libx264.def  生成libx264.lib文件(LIB在C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin目录下)



2. win64:

./configure --prefix=/usr/local/x86_64-w64-mingw32 --cross-prefix=x86_64-w64-mingw32- --host=x86_64-w64-mingw32 --disable-asm  --enable-shared --extra-ldflags=-Wl,--output-def=libx264.def --extra-ldflags="-static-libgcc"

LIB /machine:x64 /def:libx264.def(或者直接使用C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\amd64\目录下的lib.exe)