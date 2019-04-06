#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

echo "deploying $NAME"

cp -r "$TEMPDIR/$NAME/." "$WEBDIR/$NAME"
cd "$WEBDIR/$NAME"
yarn install

#rm -fr "$TEMPDIR/$NAME"
echo "$NAME" deployed
