#!/usr/bin/env bash

arch="x86_64"

wget --continue "https://github.com/proot-me/proot-static-build/raw/master/static/proot-$arch"
chmod +x "proot-$arch"

mirror="https://mirrors.kernel.org"
version="2015.06.01"

wget --continue "$mirror/archlinux/iso/$version/archlinux-bootstrap-$version-$arch.tar.gz"

tar xvf "archlinux-bootstrap-$version-$arch.tar.gz" -C straps/ --strip-components=1

./proot-$arch -S straps/