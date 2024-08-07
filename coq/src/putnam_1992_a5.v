Require Import BinPos Nat ZArith.
Theorem putnam_1992_a5
    (k := fix count_ones (n : positive) : nat :=
        match n with
        | xH => 1
        | xO n' => count_ones n'
        | xI n' => 1 + count_ones n'
    end)
    (a : positive -> nat := fun n => (k n) mod 2)
    : ~ exists (k m: nat), gt k 0 /\ gt m 0 /\ forall (j: nat), j <= m - 1 -> a (Pos.of_nat (k + j)) = a (Pos.of_nat (k + m + j)) /\ a (Pos.of_nat (k + m + j)) = a (Pos.of_nat (k + 2 * m + j)).
Proof. Admitted.
