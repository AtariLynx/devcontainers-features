#!/bin/sh
set -e

echo "Activating feature 'lyxass'"
SOURCE_DIR=/usr/src
mkdir -p ${SOURCE_DIR}
cd ${SOURCE_DIR}
git clone https://github.com/42Bastian/lyxass.git
cd lyxass
make
install lyxass /usr/bin

rm -rf ${SOURCE_DIR}/lyxass
