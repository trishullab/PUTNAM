Require Import Nat Factorial ZArith Reals Coquelicot.Coquelicot.
Theorem putnam_2022_b1 
    (n : nat)
    (coeffP : nat -> R)
    (coeffB : nat -> R)
    (degP : nat)
    (degB : nat)
    (P : R -> R := fun x => sum_n (fun i : nat => Rmult (coeffP i) (x ^ i)) degP)
    (B : R -> R := fun x => sum_n (fun i => Rmult (coeffB i) (x ^ i)) degB)
    (npos : ge n 1)
    (Pconst : coeffP 0%nat = R0)
    (Pdeg : degP = n)
    (Pint : forall k : nat, and (le 1 k) (le k n) -> coeffP k = IZR (floor (coeffP k)))
    (Podd : Z.odd (floor (coeffP 1%nat)) = true)
    (hB : forall x : R, exp (P x) = B x)
    : forall k : nat, coeffB k <> R0.
Proof. Admitted. 
