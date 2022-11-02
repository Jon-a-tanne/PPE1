N=0
for ELEMENT in $(seq 1 3 100)
do
	N=$(expr $N + 1)
	echo "le $N ieme élément est $ELEMENT"
done
~
"for.sh" 7L,98B écrit(s)  5,19    Tout