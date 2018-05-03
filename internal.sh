#!/bin/bash -eux
cd src && make gettext
sphinx-intl update -p build/html/gettext -l es
