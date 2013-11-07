#!/bin/bash

FILE_PATH=`realpath $1`
echo ${FILE_PATH%b*c}
