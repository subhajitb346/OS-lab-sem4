echo -n "Enter a number: "
read num

n=$num
count=0
i=2

while [ $i -le $n ]
do
    while [ $((n % i)) -eq 0 ]
    do
        count=$((count + 1))
        n=$((n / i))
    done
    i=$((i + 1))
done

echo "Number of prime factors = $count"
