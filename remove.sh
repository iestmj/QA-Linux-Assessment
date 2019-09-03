#!/bin/bash

#Another method
#cp animals.txt temp.txt
#sed -e "/^$1/d" temp.txt >animals.txt

if [[ $# <1 ]]; then
	echo "Error. Please enter animal name"
	exit 1
else
	sed -i.bak "/^$1/d" animals.txt
	echo "$(cat animals.txt)"
	exit 0
fi