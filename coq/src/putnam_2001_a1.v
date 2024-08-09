Require Import Ensembles RelationClasses.
Theorem putnam_2001_a1
    (A : Type)
    (op : A->A->A)
    (hop : forall (a b: A), op (op a b) a = b)
    : forall (a b: A), op a (op b a) = b.
Proof. Admitted.
