Require Import Reals List Rtrigo_def Coquelicot.Derive.
Open Scope R.
Definition putnam_2018_a3_solution : R := 480/49.
Theorem putnam_2018_a3
    (val : list R -> R := fun X => fold_right Rmult 1 (map (fun x => cos (INR 3 * x)) X))
    (val2 : list R -> R := fun X => fold_right Rmult 1 (map (fun x => cos (INR 1 * x)) X))
    (hval2 : list R -> Prop := fun X => val2 X = 0)
    : (exists (X : list R), length X = 10%nat /\ hval2 X /\ putnam_2018_a3_solution = val X) /\
    (forall (X : list R), length X = 10%nat /\ putnam_2018_a3_solution >= val X).
Proof. Admitted.
