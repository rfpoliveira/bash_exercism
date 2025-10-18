## Your task is to determine what you will say as you give away the extra cookie.

## If you know the person's name (e.g. if they're named Do-yun), then you will say:

## One for Do-yun, one for me.

## If you don't know the person's name, you will say you instead.

## One for you, one for me.


#! /bin/bash

if [ -z "$1" ]; then
    echo "One for you, one for me."
    exit 0
fi
echo "One for $1, one for me."