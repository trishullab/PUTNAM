Require Import Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1990_b3
    (E : Ensemble (matrix 2 2))
    (hE : forall (A: matrix 2 2), E A -> 
        forall (i j: nat), and (le 0 i) (lt i 2) /\ and (le 0 j) (lt j 2) -> 
        (coeff_mat 0 A i j) <= 200 /\ exists (m: nat), coeff_mat 0 A i j = INR m ^ 2)
    : (exists (sz : nat), gt sz 50387 /\ cardinal (matrix 2 2) E sz) -> exists (A B: matrix 2 2), E A /\ E B /\ Mmult A B = Mmult B A.
Proof. Admitted.
