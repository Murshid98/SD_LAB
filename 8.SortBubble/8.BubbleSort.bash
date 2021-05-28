read -p "Size of array :" n
for((i=0 ; i<n ;i++))
do
  echo -ne "Enter a[$i] :" 
   read x 
   a[i]=$x
done
echo "Inserted order of array"
echo ${a[*]}
  
sort()
{
for ((i = 0; i<n; i++))
do
      
    for((j = 0; j<n-i-1; j++))
    do
      
        if [ ${a[j]} -gt ${a[$((j+1))]} ]
        then
            temp=${a[j]}
            a[$j]=${a[$((j+1))]}  
            a[$((j+1))]=$temp
        fi
    done
done
 }
 sort 
echo "Array in sorted order :"
echo ${a[*]}