(* TODO: check continuity requirement *)

Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R_scope.
Definition putnam_2012_a6_solution := True.
Theorem putnam_2012_a6
    (p : ((R * R) -> R) -> Prop := fun f : (R * R) -> R => (forall v : R*R, continuity_pt f v) /\ forall x1 x2 y1 y2 : R, x2 > x1 -> y2 > y1 -> (x2-x1) * (y2 - y1) = 1 ->  RInt (fun y => RInt (fun x => f (x, y)) x1 x2) y1 y2 = 0)
    : (forall f : (R * R) -> R, forall x y : R, p f -> f (x, y) = 0) <-> putnam_2012_a6_solution.
Proof. Admitted.
