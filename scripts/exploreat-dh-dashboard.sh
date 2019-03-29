#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

cd "$TEMPDIR/$NAME/client"
yarn install
yarn build

cp -r "dist/." "$WEBDIR/$NAME"
cp -r "public" "$WEBDIR/$NAME"
sed -i -e 's/=\"\//=\"/g' "$WEBDIR/$NAME/index.html"
sed -i -e 's/src:"\//src:\"/g' "$WEBDIR/$NAME/javascript.js"

#rm -fr "$TEMPDIR/$NAME"
echo exploreat-dh-dashboard.sh deployed
