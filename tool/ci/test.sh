#!/bin/sh

set -ex

autoconf
./configure --disable-install-doc --prefix=/tmp/ruby-prefix
make -j install
make -s test
make -s test-all
make -s test-spec

exit 0
