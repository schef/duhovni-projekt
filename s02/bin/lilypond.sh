#!/bin/bash
#Program za lilypond kompajliranje i sortiranje po folderima.
#Treba se nalaiti u folderu di je source
# $1 neka je ime *.ly datoteke

#bilo bi dobro napraviti ln -s $FULL_PATH/s02/bin/lilypond.sh /usr/local/bin/

FILE=$1
FILENAME=${FILE%.*}
EXTENSION=${FILE##*.}
FOLDER=${PWD##*/}
FULL_PATH=`realpath $FILE`
CONFIG_PATH="${FULL_PATH%%s02*ly}s02/config"
echo $CONFIG_PATH

if [[ "source" != ${PWD##*/} ]] || [[ "ly" != $EXTENSION ]]  ; then
	echo "Usage:"
	echo "Only for .ly extensions"
	echo "Have to be in the source/ folder"
	exit 1
	fi


lilypond --include=$CONFIG_PATH $FILE
mv -v $FILENAME.pdf ../binary
mv -v $FILENAME.midi ../midi
