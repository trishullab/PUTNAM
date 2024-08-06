(* TODO: missing positivity requirement, match Lean formalization *)

(* Note: this formalization differs from the original statement by assigning a value of zero to all values outside the specified domain/range. The problem is still solvable given this modification. *)
Require Import Reals RIneq.
Open Scope R.
Theorem putnam_2012_b1
    (A: list (R -> R)) 
    (fPlus : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x + g x)
    (fMinus : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x - g x)
    (fMult : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x * g x)
    (to_Rplus : ((R -> R) -> R -> R) := fun f => fun x => if Rle_dec x 0 then 0 else if Rle_dec (f x) 0 then 0 else f x)
    (f1 := to_Rplus (fun x => (Rpower (exp 1) x) - 1))
    (f2 := to_Rplus (fun x => ln (x+1)))
    : (In f1 A /\ In f2 A) /\ 
    (forall (f g: R -> R), In f A /\ In g A -> In (fPlus f g) A) /\
    (forall (f g: R -> R), In f A /\ In g A /\ forall (x: R), f x >= g x -> In (fMinus f g) A)
    <-> (forall (f g: R -> R), In f A /\ In g A -> In (fMult f g) A).
Proof. Admitted.
