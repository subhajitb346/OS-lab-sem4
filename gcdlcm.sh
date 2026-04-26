echo -n "Enter first number: "
read a

echo -n "Enter second number: "
read b

x=$a
y=$b

# Find GCD using Euclidean Algorithm
while [ $y -ne 0 ]
do
    temp=$y
    y=$((x % y))
    x=$temp
done

gcd=$x

# Find LCM
lcm=$(( (a * b) / gcd ))

echo "GCD = $gcd"
echo "LCM = $lcm"
