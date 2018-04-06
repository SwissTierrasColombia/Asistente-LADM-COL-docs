#!/bin/bash -e -u -x 

cd en/
make html
make qthelp
qcollectiongenerator _build/qthelp/*.qhcp
#assistant -collectionFile _build/qthelp/ladm_a_docs.qhc
cd ..

cd es/
make html
make qthelp
qcollectiongenerator _build/qthelp/*.qhcp
#assistant -collectionFile _build/qthelp/ladm_a_docs.qhc
cd ..
