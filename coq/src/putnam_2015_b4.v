(* TODO: use a different sum function for infinite sum *)

Require Import Nat List Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope nat_scope.
Definition putnam_2015_b4_solution := (17, 21). 
Theorem putnam_2015_b4
    (Exprl2 := fix exprl2 (l : list nat) : R :=
    match l with
    | a :: b :: c :: _ => Rdiv (2 ^ a) (3 ^ b * 5 ^ c)
    | _ => R0 
    end)
    (Exprl := fix exprl (l : list (list nat)) : list R :=
    match l with
    | nil => nil
    | h :: t => Exprl2 h :: exprl t
    end)
    : forall (E: list (list nat)) (l: list nat), (In l E <-> (length l = 3 /\ let a := nth 0 l 0 in let b := nth 1 l 0 in let c := nth 2 l 0 in a > 0 /\ b > 0 /\ c > 0 /\ a < c + b /\ b < a + c /\ c < a + b)) ->
    exists (p q: nat), coprime p q = true /\ fold_left Rplus (Exprl E) R0  = Rdiv (INR p) (INR q) /\  (p, q) = putnam_2015_b4_solution.
Proof. Admitted.
