Require Import Nat PeanoNat Reals NewtonInt Coquelicot.Coquelicot. 
Definition putnam_2019_b5_solution (j k : nat) := j = 2019%nat /\ k = 1010%nat.
Theorem putnam_2019_b5
    (F := fix f (n: nat) : nat :=
        match n with
        | O => O
        | S O => 1%nat
        | S ((S n'') as n') => add (f n') (f n'')
    end)
    (coeffP : nat -> R)
    (degP : nat)
    (p : R -> R := fun x => sum_n (fun i : nat => Rmult (coeffP i) (x ^ i)) degP)
    (hp: forall (n: nat), and (le 0%nat n) (le n 1008%nat) -> degP = 1008%nat /\ (p (2 * (INR n) + 1)) = INR (F (add (mul 2 n) 1%nat)))
    (j k: nat)
    (hjk := p 2019 = INR (F j) - INR (F k))
    : putnam_2019_b5_solution j k.
Proof. Admitted. 
