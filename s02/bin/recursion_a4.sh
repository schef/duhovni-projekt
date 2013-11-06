#!/bin/bash
find $1 -maxdepth 4 -type d -name 'source' -exec sh -c 'cd "{}" && pwd && for i in ./*.ly; do lilypond.sh $i; done' \;
