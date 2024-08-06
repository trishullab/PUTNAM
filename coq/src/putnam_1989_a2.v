Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1989_a2_solution (a b: R) := (exp (pow (a*b) 2) - 1)/(a * b).
Theorem putnam_1989_a2
    (a b: R)
    (abpos : a > 0 /\ b > 0)
    (f : R -> R -> R := fun x y => Rmax (pow (b*x) 2) (pow (a*y) 2))
    : RInt (fun x => (RInt (fun y => exp (f x y)) 0 b)) 0 a = putnam_1989_a2_solution a b.
Proof. Admitted.
