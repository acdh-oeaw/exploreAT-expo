#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

cd "$TEMPDIR/$NAME"
yarn install
yarn build

cp -r "dist/." "$WEBDIR/$NAME"
sed -i -e 's/main.bundle.js.*\"/main.bundle.js\"/g' "$WEBDIR/$NAME/index.html"

#rm -fr "$TEMPDIR/$NAME"
echo exploreAT-rdf-explorer.sh deployed
