#!/bin/sh -eu
# Run the `tool/test-annocheck.sh [binary files]` to check security issues.
# E.g. `tool/test-annocheck.sh ruby libruby.so.3.2.0`.
#
# Use annocheck.
# https://sourceware.org/annobin/

set -x

DOCKER="$(command -v docker || command -v podman)"
TAG=ruby-fedora-annocheck
TOOL_DIR=$(dirname "${0}")

file=${1}
"${DOCKER}" build --rm -t "${TAG}" ${TOOL_DIR}/annocheck/
"${DOCKER}" run --rm -t -v $(pwd):/work "${TAG}" bash -cx "cd /work; annocheck --verbose ${*}"
