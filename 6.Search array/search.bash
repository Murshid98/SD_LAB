flag=0
read -p "Size of array: " n
for(( i=0 ; i<n ; i++ ))
do
    echo -ne "Enter element a[$i]: "
    read x
    a[i]=$x
done

read -p "Enter element to search: " k
for (( i=0 ; i<n ; i++ ))
do
    if [[ ${a[i]} -eq $k ]];
      then
        flag=1
        pos=$i
    fi
done

if [ $flag -eq 1 ]
then 
    echo "Element found at position: $pos [position starts from 0]"
else
    echo "Element not found!!!"
fi