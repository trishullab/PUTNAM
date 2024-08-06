Require Import Reals Rpower.
Open Scope R.
Definition putnam_2016_b5_solution (f: R -> R) : Prop := exists (c: R), c > 0 /\ forall (x: R), x > 1 -> f x = Rpower x c /\ f x > 1.
Theorem putnam_2016_b5
    (f : R -> R)
    (hf : forall x, x > 1 -> f x > 1)
    (fle : Prop := (forall x y : R, (x > 1 /\ y > 1 /\ x*x <= y <= x*x*x) -> ((f x) * (f x) <= f y <= (f x) * (f x) * (f x))))
    : fle <-> putnam_2016_b5_solution f.
Proof. Admitted.
