echo -n "Enter number of elements: "
read n

echo "Enter sorted elements:"
for ((i=0; i<n; i++))
do
    read arr[i]
done

echo -n "Enter element to search: "
read key

low=0
high=$((n-1))
found=0

while [ $low -le $high ]
do
    mid=$(( (low + high) / 2 ))

    if [ ${arr[mid]} -eq $key ]; then
        echo "Element found at position $((mid+1))"
        found=1
        break
    elif [ ${arr[mid]} -lt $key ]; then
        low=$((mid + 1))
    else
        high=$((mid - 1))
    fi
done

if [ $found -eq 0 ]; then
    echo "Element not found"
fi
