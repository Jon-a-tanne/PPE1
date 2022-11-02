#!/usr/bin/bash
N=0
while [ -z $1 ]
do
	N=$(expr $N +1)
	echo "bonjour $N fois "
done
echo "fin"

