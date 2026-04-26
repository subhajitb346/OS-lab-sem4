echo -n "Enter a number: "
read num

count=0
sum=0

while [ $num -gt 0 ]
do
    digit=$((num % 10))
    sum=$((sum + digit))
    count=$((count + 1))
    num=$((num / 10))
done

echo "Number of digits = $count"
echo "Sum of digits = $sum"
