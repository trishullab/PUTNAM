(* TODO: import List. cast goal expression to Z *)

Require Import Reals. From mathcomp Require Import fintype perm ssrbool.
Open Scope nat_scope.
Definition putnam_2015_b5_solution := 4.
Theorem putnam_2015_b5
    (cond := fun (n : nat) (π :  {perm 'I_n}) =>
        forallb (fun i =>
        forallb (fun j =>
            if Z.to_nat (Z.abs (Z.of_nat (nat_of_ord i) - Z.of_nat (nat_of_ord j))) =? 1 then
            Z.to_nat (Z.abs  (Z.of_nat (nat_of_ord (π i)) - Z.of_nat (nat_of_ord (π j)))) <=? 2
            else true
        ) (ord_enum n)
        ) (ord_enum n))
    (P : nat -> nat := fun n => 
        let perms := enum 'S_n in
            let valid_perms := filter (fun π => cond n π) perms in
        length valid_perms)
    : forall (n: nat), n >= 2 -> P (n+5) - P (n+4) - P (n+3) + P n = putnam_2015_b5_solution.
Proof. Admitted.
