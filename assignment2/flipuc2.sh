isHead=0
HeadWon=0
TailWon=0
number=$((RANDOM%2))
while [[ $HeadWon -lt 21 && $TailWon -lt 21 ]]
do
	if [[ isHead -eq number ]]
	then
        	echo "Head"
        	HeadWon=$(( $HeadWon + 1 ))
	else
        	echo "Tail"
        	TailWon=$(( $TailWon + 1 ))
	fi
done

echo "Total Number Of Head Win is:  $HeadWon"
echo "Total Number Of Tail Win is: $TailWon"

if [[ $HeadWon -eq $TailWon ]]
then
	echo "Tie"
	else
	if [[ $HeadWon -gt TailWon ]]
	then
		echo "Head Wins"
	else 
		echo "Tail Wins"

	fi
fi
