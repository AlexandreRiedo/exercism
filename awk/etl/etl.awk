BEGIN {
    FS=":"
}

{
    score = $1
    field_str = tolower($2); gsub(/[[:space:][:punct:]]/, "", field_str)
    split(field_str, field_array, "")
    for (key in field_array) letters_arr[field_array[key]] = score
}

END {   
    asorti(letters_arr, out_arr)
    for (key in out_arr) {
        letter = out_arr[key]
        printf("%s,%d\n", letter, letters_arr[letter])
    } 
}