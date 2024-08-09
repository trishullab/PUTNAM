Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1999_a4_solution : R := 9/32.
Theorem putnam_1999_a4: 
    Series (fun m => Series (fun n => (INR (m + 1) ^ 2 * INR (n + 1)) / (3 ^ (m + 1) * (INR (n + 1) * 3 ^ (m + 1) + INR (m + 1) * 3 ^ (n + 1))))) = putnam_1999_a4_solution.
Proof. Admitted.