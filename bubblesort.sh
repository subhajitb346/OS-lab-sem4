echo -n "Enter number of elements: "
read n

echo "Enter elements:"
for ((i=0; i<n; i++))
do
    read arr[i]
done

# Bubble Sort
for ((i=0; i<n-1; i++))
do
    for ((j=0; j<n-i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[j+1]} ]; then
            # swap
            temp=${arr[j]}
            arr[j]=${arr[j+1]}
            arr[j+1]=$temp
        fi
    done
done

echo "Sorted array:"
for ((i=0; i<n; i++))
do
    echo -n "${arr[i]} "
done
echo
