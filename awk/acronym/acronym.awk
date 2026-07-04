BEGIN {FS = " |-"}

{
    out = ""
    for (idx=1; idx<=NF; idx++) {
        gsub(/[[:punct:]]|[[:cntrl:]]|[[:space:]]/, "", $idx)
        out = out toupper(substr($idx, 1, 1))
    }
    print out
}