#!/bin/bash

# copy tree resources
rm -d ./resources/tree/config.properties
cp ./sources/tree/config.properties ./resources/tree/

# copy ldes resources
rm -d ./resources/ldes/config.properties
cp ./sources/ldes/config.properties ./resources/ldes/

# minify banner and append to config
BANNER=$(./build/minify-file.sh ./sources/ldes/banner.html)
echo "validator.bannerHtml=$BANNER" >> ./resources/ldes/config.properties
