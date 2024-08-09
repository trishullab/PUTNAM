theory putnam_2001_b6 imports
Complex_Main
begin

definition putnam_2001_b6_solution :: bool where "putnam_2001_b6_solution \<equiv> undefined"
(* True *)
theorem putnam_2001_b6:
  fixes aposinc alim :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  defines "aposinc \<equiv> \<lambda> a. \<forall> n::nat \<ge> 1. a n > 0 \<and> a n < a (n + 1)"
  and "alim \<equiv> \<lambda> a. (\<lambda> n :: nat. a (n + 1) / (n + 1)) \<longlonglongrightarrow> 0"
  shows "(\<forall> a :: nat \<Rightarrow> real. (aposinc a \<and> alim a) \<longrightarrow> infinite {n :: nat. n > 0 \<and> (\<forall> i \<in> {1 .. n - 1}. a (n - i) + a (n + i) < 2 * a n)}) \<longleftrightarrow> putnam_2001_b6_solution"
  sorry

end