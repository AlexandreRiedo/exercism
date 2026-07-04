function calc_num_square(square) {
    command = sprintf("echo \"2 ^ %d\" | bc", $1-1) 
    command | getline num_square
    close(command)
    return num_square
}
function calc_total() {
    command = "echo \"2 ^ (63+1) - 1\" | bc"
    command | getline num_total
    close(command)
    return num_total
}

$1 == "total" {print calc_total(); exit 0}
$1 > 64 || $1 < 1 {print "square must be between 1 and 64"; exit 1}
$1 != "total" {print calc_num_square($1); exit 0}
