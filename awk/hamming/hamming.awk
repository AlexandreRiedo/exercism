{
    a_str = $0
    getline b_str
    if (length(a_str) != length(b_str)) {
        print "strands must be of equal length"
        exit 1
    }

    split(a_str, a_arr, "")
    split(b_str, b_arr, "")
    count = 0
    for (idx=1; idx<=length(a_arr); idx++) {
        if (a_arr[idx] != b_arr[idx]) count++
    }
    print count
}