#!/bin/bash -eux

cd $(dirname $0)/src

sphinx-versioning build src build/en/html --show-banner --banner-recent-tag -- -D language='en'
make -e SPHINXOPTS="-D language='en'" LANG='en' FORMAT='' qthelp
qcollectiongenerator build/en/qthelp/*.qhcp
#assistant -collectionFile build/en/qthelp/LADM_COLAssistant.qhc

sphinx-versioning build src build/es/html --show-banner --banner-recent-tag -- -D language='es'
make -e SPHINXOPTS="-D language='es'" LANG='es' FORMAT='' qthelp
qcollectiongenerator build/es/qthelp/*.qhcp
#assistant -collectionFile build/es/qthelp/LADM_COLAssistant.qhc
