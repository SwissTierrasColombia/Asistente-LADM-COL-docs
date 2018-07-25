#!/bin/bash -eux
cd $(dirname $0)/src
make gettext
sphinx-intl update -p build/html/gettext -l es
sphinx-intl update -p build/html/gettext
