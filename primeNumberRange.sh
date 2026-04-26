echo -n "Enter start of range: "
read start

echo -n "Enter end of range: "
read end

echo "Prime numbers between $start and $end are:"

for ((num=start; num<=end; num++))
do
    if [ $num -le 1 ]; then
        continue
    fi

    isPrime=1

    for ((i=2; i<=num/2; i++))
    do
        if [ $((num % i)) -eq 0 ]; then
            isPrime=0
            break
        fi
    done

    if [ $isPrime -eq 1 ]; then
        echo -n "$num "
    fi
done

echo
