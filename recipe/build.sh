set -ev
if [ $(uname) == Linux ]; then
    CFLAGS="${CFLAGS} -lrt"
fi

autoconf
# ./configure --disable-static --disable-udev --prefix=$PREFIX
./configure --disable-static --prefix=$PREFIX
make install
