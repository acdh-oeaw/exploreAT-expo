#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

cd "$TEMPDIR/$NAME"
yarn install
cp -r "$TEMPDIR/$NAME/." "$WEBDIR/$NAME"

#rm -fr "$TEMPDIR/$NAME"
echo "$NAME" deployed
