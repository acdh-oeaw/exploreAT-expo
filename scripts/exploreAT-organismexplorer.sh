#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

cp -r "$TEMPDIR/$NAME/." "$WEBDIR/$NAME"
mv "$WEBDIR/$NAME/ex_rdf_plants.html" "$WEBDIR/$NAME/index.html"

#rm -fr "$TEMPDIR/$NAME"
echo exploreAT-organismexplorer.sh deployed
