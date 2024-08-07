Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2003_a3_solution := 2 * sqrt 2 - 1.
Theorem putnam_2003_a3
    (f : R -> R := fun x => Rabs (sin x + cos x + tan x + 1 / tan x + 1 / cos x  + 1 / sin x))
    : (exists x : R, f x = putnam_2003_a3_solution) /\ (forall x : R, f x >= putnam_2003_a3_solution).
Proof. Admitted.
