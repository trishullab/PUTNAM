Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2001_b5
    (a b: R) 
    (g: R -> R)
    (hab : 0 < a < 1/2 /\ 0 < b < 1/2)
    (gcont : continuity g)
    (hg : forall (x: R), g (g x) = a * g x + b * x)
    : exists c : R, forall x : R, g x = c * x.
Proof. Admitted.
