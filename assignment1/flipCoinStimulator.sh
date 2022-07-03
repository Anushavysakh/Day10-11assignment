number=$((RANDOM%2))
if [[ number -eq 1 ]]
then
	echo "Head"
else
	echo "Tail"
fi
