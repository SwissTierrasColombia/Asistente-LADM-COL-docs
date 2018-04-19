#!/bin/bash -eux

cd src
sphinx-versioning build src build/en --show-banner -- -D language='en'
make -e SPHINXOPTS="-D language='en'" LANG='en' qthelp
qcollectiongenerator build/en/qthelp/*.qhcp
#assistant -collectionFile build/en/qthelp/LADM_COLAssistant.qhc

sphinx-versioning build src build/es --show-banner -- -D language='es'
make -e SPHINXOPTS="-D language='es'" LANG='es' qthelp
qcollectiongenerator build/es/qthelp/*.qhcp
#assistant -collectionFile build/es/qthelp/LADM_COLAssistant.qhc
