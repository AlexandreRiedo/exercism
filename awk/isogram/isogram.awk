{
    input = tolower($0); gsub(/ |-/, "", input)
    split(input, chars, "")
    
    for (key in chars) {
        char = chars[key]
        if (char in seen) {
            print "false"
            exit 0
        }
        seen[char] = 1
    }
    print "true"
}