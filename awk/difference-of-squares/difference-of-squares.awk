function square_of_sum(N) {
    return ((N * (N + 1)) / 2) ^ 2
}
function sum_of_squares(N) {
    out = 0
    for (i = 1; i <= N; i++) out += i ^ 2
    return out
}

BEGIN {FS=","}
$1 == "square_of_sum"   {print square_of_sum($2)}
$1 == "sum_of_squares"  {print sum_of_squares($2)}
$1 == "difference"      {print square_of_sum($2) - sum_of_squares($2)}