#!/bin/bash
./configure --prefix=/usr \
            --disable-static \
	    --disable-documentation &&
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install
