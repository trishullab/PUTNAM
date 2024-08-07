Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1998_a3
    (f : R -> R)
    (hf : (forall x : R, ex_derive f x /\ ex_derive_n f 2 x /\ ex_derive_n f 3 x) /\ continuity (Derive_n f 3))
    : exists (a: R), (Derive_n f 0) a * (Derive_n f 1) a * (Derive_n f 2) a * (Derive_n f 3) a >= 0.
Proof. Admitted.
