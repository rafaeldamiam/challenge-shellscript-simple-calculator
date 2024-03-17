##ASK FUNCTIONS
asknumber() {
	echo -n "Enter with a number: "
	read input_num
}

askoperator() {
	echo -n "Enter with a operator (+,-,x,/): "
	read input_op
}

##CALLING ASK FUNCTIONS - TURN LOCAL TO GLOBAR VAR
asknumber
numberOne=$input_num
askoperator
operator=$input_op
asknumber
numberTwo=$input_num
result=" "

##OPERATING CODE	
case $operator in
	"+") result=$(expr $numberOne + $numberTwo);;
	"-") result=$(expr $numberOne - $numberTwo);;
	"x") result=$(expr $numberOne \* $numberTwo);;
	"/") result=$(expr $numberOne \/ $numberTwo);;
	*) echo "Enter a valid operator" && exit 1;;
esac
##PRINT
echo "The operation is: $numberOne $operator $numberTwo = $result"