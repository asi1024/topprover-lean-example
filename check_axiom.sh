#!/bin/bash

echo -e "import .problem\n#print axioms" > print_prob_axiom.lean
lean print_prob_axiom.lean > prob.axioms
echo -e "import .solution\n#print axioms" > print_sol_axiom.lean
lean print_sol_axiom.lean > sol.axioms

diff sol.axioms prob.axioms > diff.txt

if [ -s diff.txt ]; then
    echo ''
    echo '* Allowed axioms:'
    cat prob.axioms
    echo ''
    echo '* Detected axioms:'
    cat sol.axioms
    exit 1
fi

rm *.axioms print_*_axiom.lean diff.txt
