echo -n "Enter number of elements: "
read n

echo "Enter elements:"
for ((i=0; i<n; i++))
do
    read arr[i]
done

echo "Array elements are:"
for ((i=0; i<n; i++))
do
    echo -n "${arr[i]} "
done
echo

# Assume first element as max and min
max=${arr[0]}
min=${arr[0]}

for ((i=1; i<n; i++))
do
    if [ ${arr[i]} -gt $max ]; then
        max=${arr[i]}
    fi

    if [ ${arr[i]} -lt $min ]; then
        min=${arr[i]}
    fi
done

echo "Maximum element = $max"
echo "Minimum element = $min"
