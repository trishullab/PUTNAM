Require Import Nat Reals.
Open Scope R.
Theorem putnam_2000_b2 
    : forall (n m: nat), and (ge n m) (ge m 1) -> exists (c: Z), (INR (gcd m n) / INR n) * Binomial.C n m = IZR c.
Proof. Admitted.
