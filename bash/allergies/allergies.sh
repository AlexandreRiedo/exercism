#!/usr/bin/env bash

solve_allergic_to () {
    if [[ $((allergens[${3:-"fallback"}] & $1)) -ne 0 ]]; then
        echo "true"
    else
        echo "false"
    fi

    return
}

solve_list () {
    local answer=""

    for allergen in "${allergen_items[@]}"; do
        if [[ $((allergens[$allergen] & $1)) -ne 0 ]]; then
            if [[ -z $answer ]]; then
                answer+=$allergen
            else
                answer+="; $allergen"
            fi
        fi
    done    

    echo $answer

    return
}

main() {
    allergen_items=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")

    declare -A allergens 
    allergens["eggs"]=1
    allergens["peanuts"]=2
    allergens["shellfish"]=4
    allergens["strawberries"]=8
    allergens["tomatoes"]=16
    allergens["chocolate"]=32
    allergens["pollen"]=64
    allergens["cats"]=128

    if [[ $2 = "allergic_to" ]]; then
        solve_allergic_to "$@"
    elif [[ $2 = "list" ]] then
        solve_list "$@"
    fi
}

main "$@"