#!/bin/bash

# copy tree resources
rm -fd ./resources/tree/config.properties
cp ./sources/tree/config.properties ./resources/tree/

# copy ldes resources
rm -fd ./resources/ldes/config.properties
cp ./sources/ldes/config.properties ./resources/ldes/

# minify banner and append to config
TREE_BANNER=$(./build/minify-file.sh ./sources/tree/banner.html)
echo "validator.bannerHtml=$TREE_BANNER" >> ./resources/tree/config.properties

# minify banner and append to config
LDES_BANNER=$(./build/minify-file.sh ./sources/ldes/banner.html)
echo "validator.bannerHtml=$LDES_BANNER" >> ./resources/ldes/config.properties
