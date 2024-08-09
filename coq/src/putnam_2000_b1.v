Require Import List Nat Reals ZArith Ensembles Finite_sets.
Open Scope Z.
Theorem putnam_2000_b1
    (n : nat)
    (a b c : nat -> Z)
    (SS : Z -> Z -> Z -> Ensemble nat := (fun r s t : Z => (fun j : nat => le 1 j /\ le j n /\ Z.odd (Z.add (Z.add (Z.mul r (a j)) (Z.mul s (b j))) (Z.mul t (c j))) = true)))
    (SSsize : Z -> Z -> Z -> nat)
    (nge1 : ge n 1)
    (habc : forall j : nat, ((le 1 j) /\ (le j n)) -> (Z.odd (a j) = true \/ Z.odd (b j) = true \/ Z.odd (c j) = true))
    (hSSsize : forall r s t : Z, cardinal nat (SS r s t) (SSsize r s t))
    : exists r s t : Z, Rge (INR (SSsize r s t)) (Rdiv (Rmult 4 (INR n)) 7).
Proof. Admitted.
