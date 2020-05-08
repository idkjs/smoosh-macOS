# [Smoosh](https://github.com/mgree/smoosh)

# Building Smoosh on MacOS 

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

On `macOS` these are the homebrew installed scripts used: `brew install autoconf libtool pkg-config libffi opam`.

You can omit `opam` if you already have it installed or installed it through some method other than `homebrew`.

`brew` will sometimes automatically symlink `glibtoolize` to `libtoolize`. Just to be sure, the script does it with: 

```sh
# tldr - Overwrite an existing symbolic to point to a different file:
ln -sf "$(command -v glibtoolize)" /usr/local/bin/libtoolize
```

## Build Smoosh

Run: `chmod + x ./build.sh` then `./build.sh`

Check the [`build.sh`](./build.sh) script to see the steps.

## NoteToSelf

These scripts would not work until I move the `LEMLIB` export to after `LEMBLIB` was built.

```sh
cd "$ROOT/lem/ocaml-lib" || return

...
make install

## now that its built, export it

export LEMLIB=$ROOT/lem/library

...
```