Require Import Nat Factorial Coquelicot.Coquelicot.
Definition putnam_1990_a1_solution := (fun n => fact n, fun n => pow 2 n).
Theorem putnam_1990_a1
    (A := fix a (n: nat) : nat :=
        match n with
        | O => 2
        | S O => 3
        | S (S O) => 6
        | S (S (S n''' as n'') as n') => (n + 4) * a n' - 4 * n * a n'' + (4 * n - 8) * a n'''
    end)
    : let (b,c) := putnam_1990_a1_solution in forall (n: nat), A n = b n + c n.
Proof. Admitted.
