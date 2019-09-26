#!/bin/bash

set -ex

NPROC="$(nproc)"
JOBS="-j$((1+${NPROC}))"
TESTOPTS="${TESTOPTS=${JOBS} -q --tty=no}"
TIME="/usr/bin/time -f TIME=%esec"

autoconf
${TIME} ./configure --disable-install-doc --prefix=/tmp/ruby-prefix
${TIME} make -s ${JOBS}
${TIME} make install
${TIME} make -s test -o showflags TESTOPTS="${TESTOPTS}"
${TIME} make -s test-all TESTOPTS="${TESTOPTS}"
${TIME} make -s test-spec MSPECOPT=-ff
${TIME} make -s -o showflags leaked-globals

exit 0
