Require Import Basics Reals.
Open Scope R.
Theorem putnam_1988_a5
    : exists! (f: R -> R), 
    (forall (x: R), x <= 0 -> f x = 0) /\
    forall (x: R), x > 0 -> 
    (f x > 0 /\ (compose f f) x = 6 * x - f x).
Proof. Admitted.
