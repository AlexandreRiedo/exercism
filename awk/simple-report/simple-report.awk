BEGIN {
    	# define the field separator
	FS=","	
}

{
	# vars
	r1 = $3 * 10 + $4
	r2 = $5 * 10 + $6
	avg = int((r1 + r2) / 2)

	# generate and print the output for each record
	print "#" $1 ", "  $2 " = " avg
}
