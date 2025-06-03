#!/bin/sh
set -e

echo "Activating feature 'cc65'"

SOURCE_DIR=/usr/src
mkdir -p ${SOURCE_DIR}
cd ${SOURCE_DIR}
git clone https://github.com/cc65/cc65.git
cd cc65
if [ "${VERSION}" != "latest" ]; then
    git checkout tags/V${VERSION} -b "tag-${VERSION}"
fi
nice make -j2
make install PREFIX=/usr prefix=/usr
rm -rf ${SOURCE_DIR}/cc65