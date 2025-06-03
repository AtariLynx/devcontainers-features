#!/bin/sh
set -e

echo "Activating feature 'make_lnx'"
SOURCE_DIR=/usr/src
mkdir -p ${SOURCE_DIR}
cp make_lnx.c ${SOURCE_DIR}
cd ${SOURCE_DIR}

gcc make_lnx.c -o make_lnx && install make_lnx /usr/bin
rm ${SOURCE_DIR}/make_lnx.c