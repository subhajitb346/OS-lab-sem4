echo -n "Enter first number: "
read num1

echo -n "Enter second number: "
read num2

echo -n "Choose operation (+ - * /): "
read op

case $op in
    +)
        sum=$((num1 + num2))
        echo "Result = $sum"
        ;;
    -)
        sub=$((num1 - num2))
        echo "Result = $sub"
        ;;
    \*)
        mul=$((num1 * num2))
        echo "Result = $mul"
        ;;
    /)
        div=$((num1 / num2))
        echo "Result = $div"
        ;;
    *)
        echo "Invalid operation"
        ;;
esac
