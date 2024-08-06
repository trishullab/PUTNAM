Require Import Nat Reals ZArith Znumtheory Coquelicot.Coquelicot Finite_sets.
Open Scope R.
Definition putnam_1989_a1_solution := 1%nat.
Theorem putnam_1989_a1
    (a : nat -> R := fun n => sum_n (fun i => if odd i then INR (10^(i-1)) else R0) (2*n+2))
    : cardinal nat (fun n => prime (floor (a n))) putnam_1989_a1_solution.
Proof. Admitted.
