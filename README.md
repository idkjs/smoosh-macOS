# Build Smoosh on MacOS 

## My Env

```sh
~/Github/smoosh-macOS
❯ getsys
ProductName:    Mac OS X
ProductVersion: 10.15.4
BuildVersion:   19E287

# check ocaml is installed
~/Github/smoosh-macOS
❯ which ocaml
/Users/mandalarian/.opam/4.07.0/bin/ocaml
```

## Install Smoosh, it submodules, dependencies

Run: `./install.sh`
Check the [`install.sh`](./install.sh) script to see what is being installed.

This script updates all the submodules.

## Build Smoosh

Run: `chmod + x ./build.sh` then `./build.sh`

Check the [`build.sh`](./build.sh) script to see the steps.

## NoteToSelf

These scripts would not work until I move the `LEMLIB` export to after `LEMBLIB` was built.

```sh
cd "$ROOT/lem/ocaml-lib" || return

make install_dependencies
make
make install

## now that its built, export it

export LEMLIB=$ROOT/lem/library

echo "checking if LEMLIB exported"
echo "$LEMLIB"
```