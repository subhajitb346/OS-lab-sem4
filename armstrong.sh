echo -n "Enter a number: "
read num

original=$num
sum=0
n=${#num}   # number of digits

while [ $num -gt 0 ]
do
    digit=$((num % 10))
    sum=$((sum + digit ** n))
    num=$((num / 10))
done

if [ $sum -eq $original ]
then
    echo "Armstrong Number"
else
    echo "Not an Armstrong Number"
fi
