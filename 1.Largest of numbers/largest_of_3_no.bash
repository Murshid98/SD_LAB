read -p "Enter 3 numbers to check: " a
read b
read c 

if [ $a -gt $b -a $a -gt $c ]
then 
	echo "$a is the largest number."
elif [ $b -gt $c ] 
then
	echo "$b is the largest number"
else
	echo "$c is the largest number"
fi