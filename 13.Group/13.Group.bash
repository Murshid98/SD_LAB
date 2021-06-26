read -p "Enter the group : " g
grep $g /etc/passwd/
cut -f 1,6 -d ":"