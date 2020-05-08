#!/bin/sh
ROOT=$(pwd)/smoosh
echo "$ROOT"

cd "$ROOT/lem/ocaml-lib" || return

make install_dependencies
make
make install

export LEMLIB=$ROOT/lem/library

echo "checking if LEMLIB exported"
echo "$LEMLIB"

cd "$ROOT/libdash" || return

opam pin add .

# cd back to smoosh and build it
cd "$ROOT" || return
make -C src all all.byte
