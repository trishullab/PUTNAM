Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1990_b2 
    (prod_n : (nat -> R) -> nat -> R := fix P (a: nat -> R) (n : nat) : R := 
        match n with 
        | O => 1
        | S n' => a n' * P a n'
    end)
    (x z : R)
    (hxz : Rabs x < 1 /\ Rabs z > 1)
    (P : nat -> R := fun j => (prod_n (fun i => 1 - z * x ^ i) j) / (prod_n (fun i => z - x ^ (i + 1)) j))
    : 1 + Series (fun j => (1 + x ^ (j+1)) * P (j+1)%nat) = 0.
Proof. Admitted.
