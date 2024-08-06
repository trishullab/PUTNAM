Require Import ZArith Znumtheory Reals Coquelicot.Coquelicot.
Definition putnam_2021_a6_solution := True.
Theorem putnam_2021_a6
    (coeffP : nat -> R)
    (degP : nat)
    (p : R -> R := fun x => sum_n (fun i : nat => Rmult (coeffP i) (x ^ i)) degP)
    (a := forall i : nat, coeffP i = R0 \/ coeffP i = R1)
    (ha : exists (q r: R -> R) (coeffQ coeffR : nat -> R) (degQ degR : nat), degP <> 0%nat /\ degQ <> 0%nat -> forall x, p x = Rmult (q x) (r x))
    : exists q r, q <> 1 /\ r <> 1 /\ p 2 = q * r <-> putnam_2021_a6_solution.
Proof. Admitted. 
