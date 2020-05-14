#!/bin/bash -eux

cd $(dirname $0)/source
BUILD_DIR=_build
rm -rf $BUILD_DIR
make -e SPHINXOPTS="-D language='es'" LANG='es' FORMAT='' html
firefox _build/es/html/index.html 
