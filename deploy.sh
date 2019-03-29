#!/bin/bash

WEBDIR="$(pwd)/www"
TEMPDIR="$(pwd)/temp"
SCRIPTSDIR="$(pwd)/scripts"

if [[ ! -d $WEBDIR ]]; then
    mkdir $WEBDIR
    mkdir "$WEBDIR/data"
    mkdir "$WEBDIR/www"
else
    rm -fr $WEBDIR/*
fi

if [[ ! -e $TEMPDIR ]]; then
    mkdir $TEMPDIR
else
    rm -fr $TEMPDIR/*
fi

cp -R "static/." "$WEBDIR"

cat "PROJECTS.txt" | while read line; do
    GOOD=${line##* }
    NAME=`echo ${line##*/} | awk '{print $1 " "}' | tr -d '[:space:]'`
    REPO=`echo $line | awk '{print $1 " "}' | tr -d '[:space:]'`

    if [[ $GOOD =~ "yes" ]]; then
        git clone $REPO
        mv "$NAME" "$TEMPDIR"
        mkdir "$WEBDIR/$NAME"
    fi
done

ls "$SCRIPTSDIR" | while read script; do
    NAME=${script%.sh}
    bash "$SCRIPTSDIR/$script" "$WEBDIR" "$TEMPDIR" "$NAME"
    rm -fr "$TEMPDIR/$NAME"
done
