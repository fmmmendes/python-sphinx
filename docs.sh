#!/bin/bash

echo clean build
rm -rf docs/build

echo copy README.md to docs/source
cp README.md docs/source

echo genereate docs my_package
sphinx-apidoc -f -o  docs/source my_package

# sphinx-apidoc -f -o  docs/source README.md

echo build html
sphinx-build -b html docs/source/ docs/build/html
