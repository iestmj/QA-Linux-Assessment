#!/bin/bash

if [[ $# <1 ]]; then
	echo "Error. Please enter animal name"
	exit 1
else
	echo "$1" >> animals.txt
	echo "$(cat animals.txt)"
	exit 0
fi