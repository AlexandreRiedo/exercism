$1 <= 0 {print "Error: Only positive integers are allowed"; exit 1}
$1 > 0 {
    count = 0
    num = $1
    while (num != 1) {
        count++
        num = (num % 2) == 0 ? (num / 2) : (3 * num + 1)
    }
    print count
}