# These variables are initialized on the command line (using '-v'):
# - start, end

BEGIN {
    clauses[1] = "the house that Jack built"
    clauses[2] = "the malt"
    clauses[3] = "the rat"
    clauses[4] = "the cat"
    clauses[5] = "the dog"
    clauses[6] = "the cow with the crumpled horn"
    clauses[7] = "the maiden all forlorn"
    clauses[8] = "the man all tattered and torn"
    clauses[9] = "the priest all shaven and shorn"
    clauses[10] = "the rooster that crowed in the morn"
    clauses[11] = "the farmer sowing his corn"
    clauses[12] = "the horse and the hound and the horn"

    split("lay in,ate,killed,worried,tossed,milked,kissed,married,woke,kept,belonged to,is", verbs, ",")

    if (start > end || start < 1 || end > 12) {
        print "invalid"
        exit 1
    } else {
        for (i=start; i<=end; i++) {
            res = "This is " clauses[i]
            for (j=i-1; j>=1; j--) {
                res = res " that " verbs[j] " " clauses[j]
            }
            print res "."
        }
    }
}