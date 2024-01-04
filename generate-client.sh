#!/bin/bash -eu

SPEC_PATH=lib/openapi

for i in $(ls $SPEC_PATH/*.yaml); do openapi-generator-cli generate -i $i  -g python -o ./lib/geoserver; done