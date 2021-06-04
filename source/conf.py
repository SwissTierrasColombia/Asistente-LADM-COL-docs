# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
# import os
# import sys
# sys.path.insert(0, os.path.abspath('.'))


# -- Project information -----------------------------------------------------

project = 'Asistente LADM-COL'
# We overwrite the copyright note using a custom CSS,
# since we want a custom license note.
# copyright = '2017-hoy, SwissTierras Colombia'
author = 'SwissTierras Colombia (2017-hoy)'


# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinx_markdown_tables',
    'sphinx.ext.githubpages',
    'sphinx.ext.todo',
    'sphinxcontrib.images',
    'sphinx.ext.viewcode',
    'sphinx.ext.autodoc',
    'recommonmark'
]


# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
# https://stackoverflow.com/questions/2471804/using-sphinx-with-markdown-instead-of-rst
source_suffix = ['.rst', '.md']

# The master toctree document.
master_doc = 'index'

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
language = 'es'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
html_theme = 'sphinx_rtd_theme'

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a lhtml_theme = "classic"
# documentation.
html_theme_options = {
    'display_version': 'true',
    'sticky_navigation': 'true'
}

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']
html_css_files = ["custom.css"]

html_logo = '_static/logo_asistente_ladm_col_96x100.png'

# -- Extension configuration -------------------------------------------------
import sys,os
sys.path.insert(0, os.path.abspath(".."))

images_config = {
    'override_image_directive': True,
    'default_image_width': '100%',
    'show_caption': True,
    'download': True
    }

gettext_compact = False
gettext_enables = ['index']
gettext_ignore_index = False

