$1 == "total" {print 2^64 - 1; next}
$1 < 1 || $1 > 64 {print "square must be between 1 and 64"; exit 1}
{print 2^($1-1)}