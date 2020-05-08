#!/bin/sh

brew install autoconf libtool pkg-config libffi

# alias glibtoolize to libtoolize 
ln -sf "$(command -v glibtoolize)" /usr/local/bin/libtoolize
opam init

opam switch 4.07.0

eval `opam config env`

opam install ocamlfind ocamlbuild

opam pin add ctypes 0.11.5

opam install ctypes-foreign num extunix

git clone --recurse-submodules https://github.com/mgree/smoosh.git

# get latest version of master for lem, libdash, modernish and oil
cd smoosh && git submodule foreach git pull origin master; cd ..

# build smoosh

# source ./build.sh
