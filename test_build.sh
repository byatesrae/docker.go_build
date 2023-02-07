#!/bin/bash

# Builds image as test/go_build, just to validate it builds, the rm's it.

set -e

echo " * Validating build ..."
echo

docker build -t test/go_build .

docker image rm test/go_build

echo
echo " * Done."
