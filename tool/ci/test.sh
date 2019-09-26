#!/bin/sh

set -ex

autoconf
./configure --disable-install-doc --prefix=/tmp/ruby-prefix
make -s -j install
make -s test
make -s test-all
make -s test-spec

exit 0
