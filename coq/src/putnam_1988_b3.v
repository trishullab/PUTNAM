Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1988_b3_solution := (1 + sqrt 3) / 2.
Theorem putnam_1988_b3
    (r : Z -> R)
    (hr : forall (n: Z), Z.ge n 1 -> (exists c d : Z, Z.ge c 0 /\ Z.ge d 0 /\ (Z.add c d) = n /\ r n = Rabs (IZR c - IZR d * sqrt 3)) /\ (forall c d : Z, (Z.ge c 0 /\ Z.ge d 0 /\ (Z.add c d) = n) -> Rabs (IZR c - IZR d * sqrt 3) >= r n))
    : putnam_1988_b3_solution > 0 /\ (forall n : Z, Z.ge n 1 -> r n <= putnam_1988_b3_solution) /\ (forall (g: R), g > 0 -> (forall (n: Z), Z.ge n 1 -> r n <= g) -> g >= putnam_1988_b3_solution).
Proof. Admitted.
