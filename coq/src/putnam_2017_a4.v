(* TODO: make sure E is splitting the 2N students into two halves where presS is used to construct E*)

Require Import Nat Ensembles List Finite_sets Reals Coquelicot.Coquelicot. From mathcomp Require Import div fintype seq ssrbool.
Theorem putnam_2017_a4 
    (N : nat)
    (M : nat := mul 2 N)
    (score : nat -> 'I_11)
    (hsurj : forall (k: 'I_11), exists (i : 'I_M), score i = k)
    (havg : (sum_n (fun i => INR (nat_of_ord (score i))) M) / INR M = 7.4)
    (E_bool : nat -> bool)
    : 
    exists (presS: nat -> Prop) (E: Ensemble nat), cardinal nat E N /\ 
    (forall (n: nat), E n <-> (presS n /\ and (le 0 n) (le n 10))) /\
    (forall i, E_bool i = true <-> E i) /\
    (sum_n (fun i => if (E_bool i) then INR (nat_of_ord (score i)) else 0) N) / INR N = 7.4 /\
    (sum_n (fun i => if E_bool i then 0 else INR (nat_of_ord (score i))) N) / INR N = 7.4.
Proof. Admitted.
