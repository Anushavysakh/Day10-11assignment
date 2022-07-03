isHead=0;
HeadWon=0;
TailWon=0;

for (( i=0; i<=10; i++ ))
do
        number=$(( RANDOM%2 ))

        if [[ isHead -eq number ]]
then
        echo "Head"
        isHeadWon=$(( $isHeadWon + 1 ))
else
        echo "Tail"
        isTailWon=$(( $isTailWon + 1 ))
fi
done

echo "Total Number Of Head Win is:  $isHeadWon"
echo "Total Number Of Tail Win is: $isTailWon"
