Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1987_b4_solution := (True, -1, True, 0).
Theorem putnam_1987_b4
    (A := fix a (n: nat) : (R * R) :=
        match n with
        | O => (0.8, 0.6)
        | (S n') => 
            let (xn, yn) := a n' in
            (xn * cos yn - yn * sin yn, xn * sin yn + yn * cos yn)
    end)
    : let '(existsx, limx, existsy, limy) := putnam_1987_b4_solution in
    (ex_lim_seq (fun n => fst (A n)) <-> existsx) /\
    (existsx -> Lim_seq (fun n => fst (A n)) = limx) /\
    (ex_lim_seq (fun n => snd (A n)) <-> existsy) /\
    (existsy -> Lim_seq (fun n => snd (A n)) = limy).
Proof. Admitted.
