#!/bin/bash
export TAG=v0.3.0-alpha
export FILE=ldes-shapes.zip
export RESOURCES=./resources/ldes/shapes

rm $RESOURCES/* > /dev/null 2>&1
mkdir -p $RESOURCES
curl -sL "https://github.com/rorlic/ldes-shacl/releases/download/$TAG/$FILE" -o $RESOURCES/$FILE
unzip -q $RESOURCES/$FILE -d $RESOURCES
rm $RESOURCES/$FILE