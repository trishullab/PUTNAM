Require Import Reals List Znumtheory.
Theorem putnam_1999_b6
    (A : list Z)
    (Age1 : forall (x: Z), In x A -> x > 1)
    (hgcd : forall (n: Z), exists (s: Z), In s A /\ (Zis_gcd s n 1 \/ Zis_gcd s n s))
    : exists (s: Z) (t: Z) (p: Z), In s A /\ In t A /\ Zis_gcd s t p /\ prime p.
Proof. Admitted.
