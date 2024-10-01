#!/bin/bash

cat <<EOF > README.md
![Github Actions](https://raster.shields.io/endpoint.png?url=https%3A%2F%2Factions-badge.atrox.dev%2Fsigma%2Fsigmapack%2Fbadge&style=flat)

# README

This contains @sigma's personal favorite extensions:

EOF
jq -r '.extensionPack[] | "* [\(.)](https://marketplace.visualstudio.com/items?itemName=\(.))"' package.json >> README.md
