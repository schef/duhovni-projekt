#!/bin/bash
#skripta za generiranje popisa pjesmi za github.com
#autor: zvanstefan@gmail.com

WORKING_DIR="./radno"
COMPILE_DIR="./radno/COMPILE"
PNG_DIR="./radno/PNG"

#convert ../COMPILE/blagoslovljen_bog_grand.pdf[0] blagoslovljen_bog_grand.png

for i in $WORKING_DIR/*.ly; do
	if [[ ! "$i" =~ "conf" && ! "$i" =~ "Chords" ]]; then

		#citanje naslova
		TITLE=`cat $i | grep 'title' | grep -v 'subtitle' | cut -d '"' -f 2`
		SUBTITLE=`cat $i | grep 'subtitle' | cut -d '"' -f 3 | cut -d "\\" -f 1`	
		COMPOSER=`cat $i | grep 'composer' | cut -d '"' -f 2`

		#citanje datuma
		#basename "`echo $i | cut -d '/' -f 3`" .ly
		
		BASENAME=`basename "${i##*/}" .ly`

		#pretvaranje u png
		#convert $COMPILE_DIR/$BASENAME.pdf[0] $PNG_DIR/$BASENAME.png

		#publish
		echo $TITLE, $COMPOSER
		fi
	done
