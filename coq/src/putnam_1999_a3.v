Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1999_a3
    (f : R -> R := fun x => 1/(1- 2 * x - x^2))
    (a : nat -> R)
    (hf : exists epsilon : R, epsilon > 0 /\ (forall x : R, 0 <= Rabs (x) < epsilon -> filterlim (fun n : nat => sum_n (fun i => a i * x^i) n) eventually (locally (f x))))
    : forall n : nat, exists m : nat, (a n)^2 + (a (S n))^2 = a m.
Proof. Admitted.
