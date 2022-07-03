read -p "Enter first number :" a
read -p "Enter second number :" b
read -p "Enter third number :" c
echo "Enter numbers are : " $a $b $c
x=$((a+b*c))
y=$((a*b+c))
z=$((a%b+c))
r=$((c+a/b))
echo "a+b*c=" $x
echo "a*b+c=" $y
echo "a%b+c=" $z
echo "c+a/b=" $r
