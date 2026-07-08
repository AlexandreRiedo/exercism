#!/usr/bin/env bash

PROGNAME=${0##*/}

usage () {
    echo "Usage: $PROGNAME <person>" >&2
}

if [[ $# -ge 2 || $# -le 0 ]]; then
    usage
    exit 1
else
    echo "Hello, $1"
fi