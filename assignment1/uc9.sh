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
declare -a array
declare -A Compute_dict
Compute_dict[x]=$x
Compute_dict[y]=$y
Compute_dict[z]=$z
Compute_dict[r]=$r
index=0
k=0
for k in ${!Compute_dict[@]}
do
        array[index++]=${Compute_dict[$k]}
done
echo "Computed array :"
echo ${array[@]}
size=${#array[@]}
for (( i=0;i<size-1;i++ ))
do
        swap=0
        for (( j=0;j<size-i-1;j++ ))
        do
                if [[ ${array[j]} -ge ${array[j+1]} ]]
                then
                        temp=${array[j]}
                        array[j]=${array[j+1]}
                        array[j+1]=$temp
                        swap=1
                fi
        done
        if((swap==0))
        then
            break
        fi
done

echo "The Computation results sorted in ascending order are: "
echo ${array[@]}
