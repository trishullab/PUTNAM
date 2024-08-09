Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2000_a1_solution : R -> (R -> Prop) := (fun A : R => (fun x : R => 0 < x < A ^ 2)).
Theorem putnam_2000_a1
    (A: R)
    (hA : A > 0)
    : forall SS : R, ((exists x : nat -> R, (forall j : nat, x j > 0) /\ Series x = A /\ Series (fun j => (x j) ^ 2) = SS) <-> (putnam_2000_a1_solution A) SS).
Proof. Admitted.
