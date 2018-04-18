#!/bin/bash -eux

cd src
make -e SPHINXOPTS="-D language='en'" LANG='en' VERSION='0.0' html
make -e SPHINXOPTS="-D language='en'" LANG='en' VERSION='0.0' qthelp
qcollectiongenerator build/en/0.0/qthelp/*.qhcp
#assistant -collectionFile build/en/qthelp/LADM_COLAssistant.qhc

make -e SPHINXOPTS="-D language='es'" LANG='es' VERSION='0.0' html
make -e SPHINXOPTS="-D language='es'" LANG='es' VERSION='0.0' qthelp
qcollectiongenerator build/es/0.0/qthelp/*.qhcp
#assistant -collectionFile build/es/qthelp/LADM_COLAssistant.qhc
