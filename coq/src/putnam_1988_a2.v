(* Note: omitted the second part of the proof - an example of existence - due to lack of full solution description *)
Require Import Basics Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1988_a2_solution := True.
Theorem putnam_1988_a2
    (f : R -> R := fun x => exp (pow x 2))
    : (exists (a b: R) (g: R -> R), a < b /\ 
    (exists x: R, a < x < b /\ g x <> 0) /\
    forall (x: R), a < x < b -> ex_derive g x /\ Derive (fun y => f y * g y) x = (Derive f x) * (Derive g x))
    <-> putnam_1988_a2_solution.
Proof. Admitted.
