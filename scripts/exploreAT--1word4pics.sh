#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

cp -r "$TEMPDIR/$NAME/." "$WEBDIR/$NAME"
mv "$WEBDIR/$NAME/plant-game-three.html" "$WEBDIR/$NAME/index.html"

#rm -fr "$TEMPDIR/$NAME"
echo exploreAT--1word4pics.sh deployed
