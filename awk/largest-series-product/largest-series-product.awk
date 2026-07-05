BEGIN {
    FS = ","
}

{
    if ($2 > length($1) || length($0) < 3) {
        print "span must not exceed string length"
        exit 1
    }
    if ($2 < 0) {
        print "span must not be negative"
        exit 1
    }
    if ($0 !~ /^[0-9]+,[0-9]+$/) {
        print "digits input must only contain digits"
        exit 1
    }

    answer = 0
    for (i=1; i<=length($1)-$2+1; i++) {
        for (j=i; j<=i+$2-1; j++) {
            product = j==i ? substr($1, j, 1) : product * substr($1, j, 1)
        }
        answer = product > answer ? product : answer
    }
    print answer
}