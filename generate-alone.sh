#!/bin/bash -eux
cd $(dirname $0)/src
make html
../serve.sh build/html/html
