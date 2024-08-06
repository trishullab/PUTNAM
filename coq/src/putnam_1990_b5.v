Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Definition putnam_1990_b5_solution := True.
Open Scope R.
Theorem putnam_1990_b5 
    (pn : (nat -> R) -> nat -> R -> R := fun a n x => sum_n (fun i => a i * pow x i) n)
    : (exists (a : nat -> R), forall (n: nat), gt n 0 -> exists (roots: Ensemble R), cardinal R roots n /\ forall (r: R), roots r <-> pn a n r = 0) <->
    putnam_1990_b5_solution.
Proof. Admitted.
