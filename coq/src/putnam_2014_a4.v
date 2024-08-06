(* TODO: Move to comments file if does not compile. *)

From mathcomp.analysis Require Import probability.
From mathcomp Require Import all_ssreflect.
From mathcomp Require Import ssralg poly ssrnum ssrint interval finmap.
From mathcomp Require Import mathcomp_extra boolp classical_sets functions.
From mathcomp Require Import cardinality fsbigop.
From HB Require Import structures.
From mathcomp.analysis Require Import exp numfun lebesgue_measure lebesgue_integral.
From mathcomp.analysis Require Import reals ereal signed topology normedtype sequences esum measure.
From mathcomp.analysis Require Import exp numfun lebesgue_measure lebesgue_integral kernel.
Context d (T : measurableType d) (R : realType) (P : probability T R).
Definition putnam_2014_a4_solution : R := 1 / 3.
Open Scope ring_scope.
Theorem putnam_2014_a4
    (X : {RV P >-> R})
    (ed := @expectation _ _ _ P X = 1%:E)
    (ed2 := @expectation _ _ _ P (X * X) = 2%:E)
    (ed3 := @expectation _ _ _ P (X * X * X) = 5%:E)
    (minval : R)
    (de := distribution P X)
    : forall (P : probability T R), (minval <= (pmf X 0) /\ exists (P : probability T R), minval = (pmf X 0)) <-> minval = putnam_2014_a4_solution.
Proof. Admitted.
