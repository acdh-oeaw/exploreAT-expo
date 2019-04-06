#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

echo "deploying $NAME"

cp -r "$TEMPDIR/$NAME/." "$WEBDIR/$NAME"
mv "$WEBDIR/$NAME/plant-game-one.html" "$WEBDIR/$NAME/index.html"

#rm -fr "$TEMPDIR/$NAME"
echo exploreAT-plantwordguruI.sh deployed
