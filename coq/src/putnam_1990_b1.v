Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1990_b1_solution (f: R -> R) := f = (fun x => sqrt 1990 * exp x) \/ f = (fun x => -sqrt 1990 * exp x).
Theorem putnam_1990_b1
    (f : R -> R)
    (fderiv : (forall x : R, ex_derive f x) /\ continuity (Derive f))
    : (forall x, pow (f x) 2 = RInt (fun t => pow (f t) 2 + pow ((Derive f) t) 2) 0 x + 1990) <->
    putnam_1990_b1_solution f.
Proof. Admitted.
