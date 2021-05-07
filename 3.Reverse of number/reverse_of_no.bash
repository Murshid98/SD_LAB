read -p "Enter number to be reversed: " n 
rev=0
temp=0

while [ $n -gt 0 ]
do
	temp=`expr $n % 10`
	rev=`expr $rev \* 10 + $temp`
	n=`expr $n / 10`
done
echo "Reverse of the number is $rev"