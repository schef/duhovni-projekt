#!/bin/bash
#echo $1 $2
echo ghi open -M $1 -m \"$2\" -L Transkripcija --claim
ghi open -M $1 -m "$2" -L Transkripcija --claim
sleep 2
echo ghi open -M $1 -m \"$2\" -L Prijepis -u bebox
ghi open -M $1 -m "$2" -L Prijepis -u bebox
sleep 2
echo ghi open -M $1 -m \"$2\" -L Tekst
ghi open -M $1 -m "$2" -L Tekst
sleep 2
echo ghi open -M $1 -m \"$2\" -L Provjera -u poncije
ghi open -M $1 -m "$2" -L Provjera -u poncije
