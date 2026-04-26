echo -n "Enter side a: "
read a

echo -n "Enter side b: "
read b

echo -n "Enter side c: "
read c

# Check validity (Triangle Inequality)
if (( a + b > c && a + c > b && b + c > a ))
then
    echo "Triangle is VALID"

    # Check type
    if (( a == b && b == c ))
    then
        echo "It is an EQUILATERAL triangle"
    elif (( a == b || b == c || a == c ))
    then
        echo "It is an ISOSCELES triangle"
    else
        echo "It is a SCALENE triangle"
    fi
else
    echo "Triangle is NOT VALID"
fi
