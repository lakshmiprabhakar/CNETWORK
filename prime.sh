low=1
count=0

while [ $low -eq 1 ]
do
echo "Enter the lower limit,greater than 1"
read low
done

echo "Enter the upper limit"
read upper
echo "The prime numbers are:"
for mun in `seq $low $upper`
do
ret=$(factor $mun | grep $mun | cut -d ":" -f 2 | cut -d " " -f 2)

if [ "$ret" -eq "$mun" ] 
then 
echo "$mun" 
((count++))
fi 
done
echo -e "\n There are $count number of prime numbers"

////////////////////////
output
Enter the lower limit,greater than 1
10
Enter the upper limit
50
The prime numbers are:
11
13
17
19
23
29
31
37
41
43
47

 There are 11 number of prime numbers



