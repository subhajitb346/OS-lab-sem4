echo -n "Enter initial velocity (u): "
read u

echo -n "Enter acceleration (a): "
read a

echo -n "Enter time (t): "
read t

v=$((u + a * t))

echo "Final velocity (v) = $v"
