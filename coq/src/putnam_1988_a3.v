Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1988_a3_solution (a: R) := a > 1/2.
Theorem putnam_1988_a3
   : forall (a: R), ex_finite_lim_seq (fun m => sum_n_m (fun n => Rpower (1/INR n * (1 / sin (1/INR n)) - 1) a) 1 m) <-> putnam_1988_a3_solution a.
Proof. Admitted.
