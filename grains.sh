#!/usr/bin/env bash

if [ $# -ne 1 ] || [[ $1 =~ ^-?[0-9]+$ ]] ; then
    if  [ $1 -gt 64 ] || [ $1 -le 0 ] ; then
        echo "Error: invalid input"
        exit 1
    fi
else
    if [ $1 == "total" ] ; then
     echo "18446744073709551615"
     exit 0
     fi
fi

if [ $1 -eq 64 ] ; then
    value="9223372036854775808"
else
    value=$(( 1 << ($1 - 1) ))
fi

echo $value