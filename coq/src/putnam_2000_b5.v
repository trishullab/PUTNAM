Require Import ZArith Ensembles Finite_sets.
Theorem putnam_2000_b5
    (SS : nat -> Ensemble Z)
    (hSSfin : forall n : nat, exists m : nat, cardinal _ (SS n) m)
    (hSSpos : forall n : nat, forall s : Z, In _ (SS n) s -> Z.gt s 0)
    (hSSdef : forall n : nat, forall a : Z, (In _ (SS (n + 1)) a) <-> ((In _ (SS n) (Z.sub a 1) /\ ~ (In _ (SS n) a)) \/ (In _ (SS n) a /\ ~ (In _ (SS n) (Z.sub a 1)))))
    : forall n : nat, exists N : nat, N >= n /\ Same_set _ (SS N) (Union _ (SS 0) (fun i : Z => exists a : Z, In _ (SS 0) a /\ i = Z.add a (Z.of_nat N))).
Proof. Admitted.
