(* TODO: import List. *)

Require Import Bool Reals Coquelicot.Lim_seq Coquelicot.Rbar. 
Definition putnam_2016_b2_solution (a b : R) := a = 3/4 /\ b = 4/3.
Theorem putnam_2016_b2
    (squarish : nat -> bool := fun n => existsb ( fun m => Nat.eqb n (m * m) || (forallb (fun p => leb ((n-m)*(n-m)) ((n-p)*(n-p))) (seq 0 (S n))) ) (seq 0 (S n)))
    (squarish_set : nat -> list nat := fun n => filter (fun x => squarish x) (seq 1 n))
    (a b: R)
    : Lim_seq (fun N => INR (length (squarish_set N)) / Rpower (INR N) a) = Finite b <-> putnam_2016_b2_solution a b.
Proof. Admitted.
