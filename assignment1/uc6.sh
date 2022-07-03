read -p "Enter first number :" a
read -p "Enter second number :" b
read -p "Enter third number :" c
echo "Enter numbers are : " $a $b $c
x=$((a+b*c))
y=$((a*b+c))
z=$((a%b+c))
r=$((c+a/b))
echo "x=" $x
echo "y=" $y
echo "z=" $z
echo "r=" $r
declare -A Compute_dict
Compute_dict[x]=$x
Compute_dict[y]=$y
Compute_dict[z]=$z
Compute_dict[r]=$r
echo "Values of Compute_dict : ${Compute_dict[@]}"
echo "Keys of Compute_dict : ${!Compute_dict[@]}"
