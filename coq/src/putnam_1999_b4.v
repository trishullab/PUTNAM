Require Import Reals Coquelicot.Derive.
Open Scope R_scope.
Theorem putnam_1999_b4
    (f: R -> R)
    (f_cont : (forall n : nat, (le 1 n /\ le n 3) -> (forall x : R, ex_derive_n f n x)) /\ continuity (Derive_n f 3))
    (f_pos : forall (x: R), f x > 0 /\ (Derive_n f 1) x > 0 /\ (Derive_n f 2) x > 0 /\ (Derive_n f 3) x > 0)
    (hf : forall (x: R), (Derive_n f 3) x <= f x)
    : forall (x: R), (Derive_n f 1) x < 2 * f x.
Proof. Admitted.
