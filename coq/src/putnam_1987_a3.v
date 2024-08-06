Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1987_a3_solution := (False, True).
Theorem putnam_1987_a3
    : ((forall (f: R -> R), (forall (x: R), ex_derive_n f 1 x /\ ex_derive_n f 2 x /\ (Derive_n f 2) x - 2 * (Derive_n f 1) x + f x = 2 * exp x /\ f x > 0) 
            -> forall (x: R), Derive_n f 1 x > 0) 
        <-> fst putnam_1987_a3_solution) /\ 
    ((forall (g: R -> R), (forall (x: R), ex_derive_n g 1 x /\ ex_derive_n g 2 x /\ (Derive_n g 2) x - 2 * (Derive_n g 1) x + g x = 2 * exp x /\ Derive_n g 1 x > 0) 
            -> forall (x: R), g x > 0) 
        <-> snd putnam_1987_a3_solution).
Proof. Admitted.
