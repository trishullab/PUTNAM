Require Import Reals Coquelicot.Coquelicot. From Coqtail Require Import Cpow.
Open Scope C.
Theorem putnam_1989_a3
    (f : C -> C := fun z => 11 * Cpow z 10 + 10 * Ci * Cpow z 9 + 10 * Ci * z - 11)
    : forall (x: C), f x = 0 -> Cmod x = R1.
Proof. Admitted.
