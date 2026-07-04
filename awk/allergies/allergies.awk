BEGIN {
    a[1] = "eggs"
    a[2] = "peanuts"
    a[4] = "shellfish"
    a[8] = "strawberries"
    a[16] = "tomatoes"
    a[32] = "chocolate"
    a[64] = "pollen"
    a[128] = "cats"

    FS = ","
}

{
    out = ""
    for (i=0; i<8; i++) if (and(2**i, $1)) out = out "," a[2**i]
    out = substr(out, 2)

    if ($2 == "list") print out
    else if ($2 == "allergic_to") print (out ~ $3 ? "true" : "false")
}