#!/bin/bash
export TAG=v0.5.3-alpha
export FILE=tree-shapes.zip
export RESOURCES=./resources/tree/shapes

rm $RESOURCES/* > /dev/null 2>&1
mkdir -p $RESOURCES
curl -sL "https://github.com/rorlic/tree-shacl/releases/download/$TAG/$FILE" -o $RESOURCES/$FILE
unzip -q $RESOURCES/$FILE -d $RESOURCES
rm $RESOURCES/$FILE