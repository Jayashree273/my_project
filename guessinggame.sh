#!/bin/bash

nts=0
lines=$(ls -1 | wc -l)

Decisive(){
if [ $1 -gt $lines ]
then
echo "Guessed value is too high"
else
echo "Guessed value is too low"
fi
}

while [[ $nts -eq 0 ]]
do 
echo "please enter your guess:"
read response
if [[ $response -eq $lines ]]
then
echo "Congrats,you have guessed correct"
nts=1
else
Decisive $response
fi
done