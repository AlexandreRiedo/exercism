BEGIN {
    FS = ","
    split("eggs peanuts shellfish strawberries tomatoes chocolate pollen cats", name, " ")
    for (i in name) bit[name[i]] = 2 ^ (i - 1)
}
$2 == "list" {
    out = ""
    for (i = 1; i <= 8; i++)
        if (and(bit[name[i]], $1))
            out = out (out == "" ? "" : ",") name[i]
    print out
}
$2 == "allergic_to" {
    print (and(bit[$3], $1) ? "true" : "false")
}