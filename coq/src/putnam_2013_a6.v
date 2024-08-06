(* TODO: use NoDups (from coq stdlib) to check for duplicates *)

Require Import List ZArith.
Open Scope Z.
Theorem putnam_2013_a6 
    (W := fix w (v : Z*Z) : Z :=
        match v with
        | (-2, -2) => -1 | (-2, -1) => -2 | (-2,  0) =>  2 | (-2,  1) => -2 | (-2,  2) => -1
        | (-1, -2) => -2 | (-1, -1) =>  4 | (-1,  0) => -4 | (-1,  1) =>  4 | (-1,  2) => -2
        | ( 0, -2) =>  2 | ( 0, -1) => -4 | ( 0,  0) => 12 | ( 0,  1) => -4 | ( 0,  2) =>  2
        | ( 1, -2) =>  -2 | ( 1, -1) =>  4 | ( 1,  0) => -4 | ( 1,  1) =>  4 | ( 1,  2) => -2
        | ( 2, -2) =>  -1 | ( 2, -1) => -2 | ( 2,  0) =>  2 | ( 2,  1) => -2 | ( 2,  2) => -1
        | _ => 0
    end)
    (A : list (Z * Z * (Z * Z)) -> Z := fun l =>
        fst (fold_left (fun acc pq => 
        let p := (fst (fst pq), snd (fst pq)) in
        let q := (fst (snd pq), snd (snd pq)) in
        (Z.add (fst acc) (W (fst p - fst q, snd p - snd q)), Z.add (snd acc) (W (fst p - fst q, snd p - snd q)))) l (0, 0)) )
    : forall (l : list (Z * Z * (Z * Z))), length l <> Z.to_nat 0 -> A l > 0.
Proof. Admitted.
