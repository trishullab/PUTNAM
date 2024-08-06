Require Import Ensembles Finite_sets ZArith.
Open Scope Z.
Theorem putnam_1988_b6
    (triangular : Z -> Prop := fun n => exists (m: Z), m >= 0 /\ n = (m * (m + 1)) / 2)
    (E: Ensemble (Z*Z) := fun '(a, b) => forall (m: Z), m > 0 -> (triangular m <-> triangular (Z.mul a m + b)))
    : ~ exists (n: nat), cardinal (Z*Z) E n.
Proof. Admitted.
