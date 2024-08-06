(* TODO: Changed numDomainType to Reals, which required importing Coquelicot. Check that it compiles. *)

Require Import Nat QArith Reals. Require Import Coquelicot.Coquelicot.
Theorem putnam_2017_a2
    (Q := fix q (n: nat) (x: R) : R :=
        match n with
        | O => R1
        | S O => x
        | S ((S n'') as n') => Rdiv (Rminus (Rmult (q n' x) (q n' x)) 1) (q n'' x)
    end)
    (is_poly : (R -> R) -> Prop := fun f => exists (k : nat) (coeff : nat -> R), forall x : R, sum_n (fun i => (coeff i) * (x^i)) k = f x) 
    : forall (n: nat), ge n 0 -> 
    exists (p : R -> R) (i : nat), is_poly p /\
    (exists (z : Z), p i = if (Z.ltb z 0) then -(Z.to_nat z) else (Z.to_nat z)) /\
    exists (z : Z), forall (x: RbaseSymbolsImpl.R), Q n x = IZR z /\ (if (Z.ltb z 0) then -(Z.to_nat z) else (Z.to_nat z)) = p n.
Proof. Admitted.
