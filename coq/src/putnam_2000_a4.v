Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2000_a4
    : ex_finite_lim_seq (fun B : nat => RInt (fun x : R => sin x * sin (x ^ 2)) 0 (INR B)).
Proof. Admitted.
