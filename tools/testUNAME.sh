#!/bin/sh

UNAME=$(uname)

if [ "$UNAME" = "Darwin" ]; then
	echo "Darwin."
elif [ "$UNAME" = "Linux" ]; then
	echo "Linux."
else :
fi


