
#!/bin/bash 
WEBDIR="$1" 
TEMPDIR="$2" 
NAME="$3"

cd "$TEMPDIR/$NAME"
cp -r
"$TEMPDIR/$NAME/public/exploreat-v3/data/*" "$WEBDIR/data"
"$TEMPDIR/$NAME/public/seriousgames/data/*" "$WEBDIR/data"

#rm -fr "$TEMPDIR/$NAME"
echo "$NAME" deployed
