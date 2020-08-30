#!/bin/bash

function convip()
{
    D2B=({0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1})

    ip=""
    for byte in `echo ${1} | tr "." " "`; do
        ip="${ip}.${D2B[${byte}]}"
    done
    echo ${ip:1}
}

echo -n "Ievadiet skaitli no 0 - 255: "; read ip1

a=`convip "${ip1}"`
echo "Bināra skaitļa vērtība: ${a}"
echo "Binārā skaitļa vērtība: ${a}" > myip.txt
echo "Aprēķins pabeigts!"
exit
