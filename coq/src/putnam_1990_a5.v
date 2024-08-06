From mathcomp Require Import matrix ssralg.
Open Scope ring_scope.
Definition putnam_1990_a5_solution := False.
Theorem putnam_1990_a5 
    : (forall (R : ringType) (n: nat) (A B : 'M[R]_n), n >= 1 -> mulmx (mulmx (mulmx A B) A) B = 0 -> mulmx (mulmx (mulmx B A) B) A = 0) <-> putnam_1990_a5_solution.
Proof. Admitted.
