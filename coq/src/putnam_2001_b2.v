Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2001_b2_solution : R -> R -> Prop := (fun x y : R => x = (3 ^ (1 / 5) + 1) / 2 /\ y = (3 ^ (1 / 5) - 1) / 2).
Theorem putnam_2001_b2
    : forall (x y: R), 
    (1 / x + 1 / (2 * y) = (x ^ 2 + 3 * y ^ 2) * (3 * x ^ 2 + y ^ 2) /\
    1 / x - 1 / (2 * y) = 2 * (y ^ 4 - x ^ 4)) <-> putnam_2001_b2_solution x y.
Proof. Admitted.
