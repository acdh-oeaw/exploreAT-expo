#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

cd "$TEMPDIR/$NAME"
yarn install
yarn build

mkdir "$WEBDIR/$NAME/build"
cp -r "build/index.html" "$WEBDIR/$NAME"
cp -r "build/app.js" "$WEBDIR/$NAME/build/app.js"
cp -r "data" "$WEBDIR/$NAME"

#rm -fr "$TEMPDIR/$NAME"
echo exploreAT-conceptlights.sh deployed
