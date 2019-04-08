#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

echo "deploying $NAME"

mkdir "$WEBDIR/data"
cp -r "$TEMPDIR/$NAME/." "$WEBDIR/data"
rm -fr "$TEMPDIR/$NAME"

#rm -fr "$TEMPDIR/$NAME"
echo "exploreAT-data deployed"
