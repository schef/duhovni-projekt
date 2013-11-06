#!/bin/bash
#Program za lilypond kompajliranje i sortiranje po folderima.
#Treba se nalaiti u folderu di je source
# $1 neka je ime *.ly datoteke

#bilo bi dobro napraviti ln -s FULL_PATH/bin/lilypond.sh /usr/local/bin/

FILE=$1
FILENAME=${FILE%.*}
EXTENSION=${FILE##*.}
FOLDER=${PWD##*/}
CONFIG_PATH="/home/lilypond/duhovni-projekt/s02/config"
echo $FILE $FILENAME $EXTENSION $FOLDER

if [[ "source" != ${PWD##*/} ]] || [[ "ly" != $EXTENSION ]]  ; then
	echo "Usage:"
	echo "Only for .ly extensions"
	echo "Have to be in the source/ folder"
	exit 1
	fi


lilypond --include=$CONFIG_PATH $FILE
mv $FILENAME.pdf ../binary
mv $FILENAME.midi ../midi
