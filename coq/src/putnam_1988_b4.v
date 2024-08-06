Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1988_b4
    (a : nat -> R)
    (appos : (nat -> R) -> Prop := fun a' : nat -> R => forall n : nat, ge n 1 -> a' n > 0)
    (apconv : (nat -> R) -> Prop := fun a' : nat -> R => ex_finite_lim_seq (fun N => sum_n_m a' 1 N))
    (apposconv : (nat -> R) -> Prop := fun a' => appos a' /\ apconv a')
    : apposconv a -> apposconv (fun n => Rpower (a n) (INR n/(INR n + 1))).
Proof. Admitted.
