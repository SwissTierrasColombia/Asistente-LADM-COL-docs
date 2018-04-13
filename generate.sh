#!/bin/bash -eux

cd src
sphinx-intl update -p locale
make -e SPHINXOPTS="-D language='en'" LANG='en' html
make -e SPHINXOPTS="-D language='en'" LANG='en' qthelp
qcollectiongenerator build/en/qthelp/*.qhcp
#assistant -collectionFile build/en/qthelp/ladm_a_docs.qhc

make -e SPHINXOPTS="-D language='es'" LANG='es' html
make -e SPHINXOPTS="-D language='es'" LANG='es' qthelp
qcollectiongenerator build/es/qthelp/*.qhcp
#assistant -collectionFile build/es/qthelp/ladm_a_docs.qhc
