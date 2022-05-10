#!/bin/sh -eu
# Run the `tool/test-annocheck.sh [binary files]` to check security issues.
# E.g. `tool/test-annocheck.sh ruby libruby.so.3.2.0`.

# https://sourceware.org/annobin/
DOCKER="$(command -v docker || command -v podman)"
TAG=ruby-fedora-annocheck

file=${1}
"${DOCKER}" build --rm -t "${TAG}" tool/annocheck/
"${DOCKER}" run --rm -t -v $(pwd):/work "${TAG}" bash -cx "cd /work; annocheck --verbose ${*}"
