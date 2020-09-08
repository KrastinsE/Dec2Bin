#!/bin/bash

echo "Dec2Bin kalkulators!"

echo -n "Lūdzu, ievadiet pozitīvu skaitli : "; read a

re='^[0-9]+$'
  until [[ $a =~ $re ]]
    do
  printf "Kļūda, ievadītā vērtība nav pareiza! Pārbaudiet ievadīto vērtību un mēģiniet vēlreiz : "; read a
done
b=$a

array=()

while [ $a != 0 ]
do
array+=$(($a%2))
a=$(($a/2))
done 

c=$(echo "${array[*]}" | rev)
echo "Skaitļa $b binārā vērtība ir :" $c
echo "Aprēķins pabeigts!"
exit
