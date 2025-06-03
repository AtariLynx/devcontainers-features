#!/bin/sh
set -e

echo "Activating feature 'sprpck'"
SOURCE_DIR=/usr/src

mkdir -p ${SOURCE_DIR}
cd ${SOURCE_DIR}
git clone https://github.com/42Bastian/sprpck.git

cd sprpck/src
make
install sprpck /usr/bin
rm -r ${SOURCE_DIR}/sprpck