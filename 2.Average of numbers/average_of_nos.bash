echo "Enter count of numbers"
read count

i=1
sum=0

echo "Enter Numbers"
while [ $i -le $count ]
do
  read num              
  sum=$((sum + num))     
  i=$((i + 1))
done

avg=$((sum / count))

echo "average of $count numbers is "$avg