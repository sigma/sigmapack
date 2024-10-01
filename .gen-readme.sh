#!/bin/bash

cat <<EOF > README.md
![Github Actions](https://github.com/sigma/sigmapack/actions/workflows/release.yml/badge.svg)

# README

This contains @sigma's personal extensions pack v0.2.1

EOF
jq -r '.extensionPack[] | "* [\(.)](https://marketplace.visualstudio.com/items?itemName=\(.))"' package.json >> README.md

# Make sure README.md is added to git
git add README.md
