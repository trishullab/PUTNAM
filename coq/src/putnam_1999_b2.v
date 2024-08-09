Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_1999_b2
    (a1 a2: nat -> R)
    (n: nat)
    (p : R -> R := fun x => sum_n (fun i => a1 i * x ^ i) n)
    (q : R -> R := fun x => sum_n (fun i => a2 i * x ^ i) 2)
    (hP : forall (x: R), p x = q x * (Derive_n p 2) x)
    : (exists (r1 r2: R), r1 <> r2 /\ p r1 = 0 /\ p r2 = 0) ->
    (exists (roots: list R), length roots = n /\ NoDup roots /\ (forall (r: R), In r roots -> p r = 0)).
Proof. Admitted.
