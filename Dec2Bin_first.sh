#!/bin/bash

NAME="DEC 10 to BIN"
echo $NAME

    ip1=10
    echo "obase=2;$ip1" | bc
