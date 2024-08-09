Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_2001_b6_solution : Prop := True.
Theorem putnam_2001_b6
    (aposinc : (nat -> R) -> Prop := (fun a : nat -> R => forall n : nat, ge n 1 -> (a n > 0 /\ a n < a (add n 1))))
    (alim : (nat -> R) -> Prop := (fun a : nat -> R => Lim_seq (fun n : nat => a (add n 1) / INR (add n 1)) = 0))
    : (forall a : nat -> R, (aposinc a /\ alim a) -> forall m : nat, exists n : nat, gt n m /\ (forall i : nat, (le 1 i /\ le i (n - 1)) -> a (sub n i) + a (add n i) < 2 * a n)) <-> putnam_2001_b6_solution.
Proof. Admitted.
