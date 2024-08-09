Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2000_b4
    (f : R -> R)
    (hf : forall x : R, f (2*x*x-1) = 2*x*(f x))
    (f_cont : continuity f)
    : forall x : R, -1 <= x <= 1 -> f x = 0. 
Proof. Admitted.
