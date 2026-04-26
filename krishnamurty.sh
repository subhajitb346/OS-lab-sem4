echo -n "Enter a number: "
read num

original=$num
sum=0

while [ $num -gt 0 ]
do
    digit=$((num % 10))

    # Calculate factorial of digit
    fact=1
    for ((i=1; i<=digit; i++))
    do
        fact=$((fact * i))
    done

    sum=$((sum + fact))
    num=$((num / 10))
done

if [ $sum -eq $original ]
then
    echo "Krishnamurthy Number"
else
    echo "Not a Krishnamurthy Number"
fi
