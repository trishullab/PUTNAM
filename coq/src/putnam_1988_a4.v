Require Import Reals Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Definition putnam_1988_a4_solution : Prop * Prop := (True, False).
Theorem putnam_1988_a4
    (p : nat -> Prop := fun n : nat => (forall color : (R * R) -> 'I_n, exists p q : R * R, color p = color q /\ norm (fst p - fst q, snd p - snd q) = 1))
    : let (a, b) := putnam_1988_a4_solution in ((p 3%nat) <-> a) /\ ((p 9%nat) <-> b).
Proof. Admitted.
