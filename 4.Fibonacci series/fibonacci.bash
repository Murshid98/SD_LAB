read -p "Enter the limit: " n
a=0
b=1
i=2

echo "Fibonacci upto $n terms : "
echo "$a"
echo "$b"

while [ $i -lt $n ]
do
	i=`expr $i + 1`
	x=`expr $a + $b`
	echo "$x"
	a=$b
	b=$x
done