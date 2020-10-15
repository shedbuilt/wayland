#!/bin/bash
mkdir build &&
cd build &&
meson --prefix=/usr \
      -Ddocumentation=false &&
NINJAJOBS=$SHED_NUM_JOBS ninja &&
DESTDIR="$SHED_FAKE_ROOT" ninja install
