# -*- coding: utf-8 -*-
"""
    not used for now
"""
try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'description': 'dicf experimental study',
    'author': 'remy bin',
    'url': 'https://github.com/ottoMatt/dcif',
    'download_url': 'https://github.com/ottoMatt/dcif/archive/master.zip',
    'author_email': 'remy.bin@gmail.com',
    'version': '0.1',
    'install_requires': ['nose'],
    'packages': ['etude','etude/problems','etude/utils'],
    'scripts': [],#'bin/singlerun'],
    'name': 'dicf study'
}

setup(**config)
