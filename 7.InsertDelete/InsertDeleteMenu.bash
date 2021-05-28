option=0
flag=0
read -p "size of array :" n
for((i=0 ; i<n ;i++))
do
  echo -ne "Enter a[$i] :" 
   read x 
   a[i]=$x
done
while [ $option -ne 4 ]
do
echo -e "\n*** MENU ***"
  echo -e  " 1:Insertion \n 2:Deletion \n 3:Display \n 4:Exit" 
  read option 
   case $option in 
    1)
     read -p "enter element to be inserted " k
     a+=($k)
     n=$n+1
     ;;
     
     2)
     read -p "enter element to be deleted " k
     for((i=0 ; i<n ;i++))
      do
      if [[ ${a[i]} = $k ]];
      then
      unset a[i]
      flag=1
      fi
     done
     if [ $flag -eq 1 ]
      then
     echo "element $k deleted"
     flag=0
     else
     echo "$k not dound "
     fi
     ;;
     3)
     echo "The array is :"
      for i in ${a[@]}
       do
        echo $i
       done
     ;; 
     4)
     echo "Exitting..."
     exit
     ;;
    *)
    echo -n " Wrong choice"
    ;;
  esac
 done
