Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1988_b2_solution := True.
Theorem putnam_1988_b2
    : (forall (a: R), a >= 0 -> forall (x: R), pow (x + 1) 2 >= a * (a + 1) ->
    pow x 2 >= a * (a - 1)) <-> putnam_1988_b2_solution.
Proof. Admitted.
