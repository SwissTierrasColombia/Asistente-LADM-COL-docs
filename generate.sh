#!/bin/bash -eux

cd en/
make html
make qthelp
qcollectiongenerator build/qthelp/*.qhcp
#assistant -collectionFile build/qthelp/ladm_a_docs.qhc
cd ..

cd es/
make html
make qthelp
qcollectiongenerator build/qthelp/*.qhcp
#assistant -collectionFile build/qthelp/ladm_a_docs.qhc
cd ..
