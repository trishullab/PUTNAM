Require Import Basics Nat Reals Coquelicot.Coquelicot.
Definition putnam_2022_a2_solution : nat -> nat := fun n => sub (mul 2 n) 2.
Theorem putnam_2022_a2 
    (n : nat)
    (hn : ge n 2)
    (num_neg_coeff : nat -> (nat -> R) -> nat := fun n coeff => Z.to_nat (floor (sum_n (fun i => if Rlt_dec (coeff i) 0 then 1 else 0) (n + 1))))
    : forall (P : R -> R) (coeff1 coeff2: nat -> R) (n: nat), 
    (((coeff1 n <> 0 /\ P = (fun x => sum_n (fun i => coeff1 i * x ^ i) (n + 1))) /\ (fun x => P x * P x) = (fun x => sum_n (fun i => coeff2 i * x ^ i) (n + 1))) -> 
    ge (num_neg_coeff n coeff2) (putnam_2022_a2_solution n)) /\
    (exists (P : R -> R) (coeff1 coeff2: nat -> R) (n: nat), 
    ((coeff1 n <> 0 /\ P = (fun x => sum_n (fun i => coeff1 i * x ^ i) (n + 1))) /\ (fun x => P x * P x) = (fun x => sum_n (fun i => coeff2 i * x ^ i) (n + 1))) -> 
    num_neg_coeff n coeff2 = putnam_2022_a2_solution n).
Proof. Admitted.
