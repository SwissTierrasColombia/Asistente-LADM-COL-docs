#!/bin/bash -eux

cd src
make -e SPHINXOPTS="-D language='en'" LANG='en' html
make -e SPHINXOPTS="-D language='en'" LANG='en' qthelp
qcollectiongenerator build/en/qthelp/*.qhcp
#assistant -collectionFile build/en/qthelp/LADM_COLAssistant.qhc

make -e SPHINXOPTS="-D language='es'" LANG='es' html
make -e SPHINXOPTS="-D language='es'" LANG='es' qthelp
qcollectiongenerator build/es/qthelp/*.qhcp
#assistant -collectionFile build/es/qthelp/LADM_COLAssistant.qhc
