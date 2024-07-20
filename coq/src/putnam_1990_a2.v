Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1990_a2_solution := True.
Theorem putnam_1990_a2
    (numform : R -> Prop := fun x => exists (n m: nat), x = pow (INR n) (1/3) - pow (INR m) (1/3))
    : exists (s: nat -> R), forall (i: nat), numform (s i) /\ Lim_seq s = sqrt 2 <-> putnam_1990_a2_solution.
Proof. Admitted.