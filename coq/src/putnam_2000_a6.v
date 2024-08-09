Require Import ZArith Reals Coquelicot.Coquelicot.
Theorem putnam_2000_a6
    (n : nat)
    (coeff : nat -> Z)
    (f : R -> R := fun x => sum_n (fun i => (IZR (coeff i)) * (x^i)) n)
    (a : nat -> R)
    (ha : a O = 0 /\ forall i : nat, a (S i) = f (a i))
    : (exists m : nat, gt m 0 /\ a m = 0) -> (a (S O) = 0 \/ a (S (S O)) = 0).
Proof. Admitted.
