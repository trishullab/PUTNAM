theory putnam_2001_a3 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_2001_a3_solution :: "int set" where "putnam_2001_a3_solution \<equiv> undefined"
(* {m :: int. \<exists> k :: int. k ^ 2 = m \<or> 2 * k ^ 2 = m} *)
theorem putnam_2001_a3:
  fixes P :: "int \<Rightarrow> int poly"
  defines "P \<equiv> \<lambda> m :: int. monom 1 4 - monom (2 * m + 4) 2 + monom ((m - 2) ^ 2) 0"
  shows "{m :: int. \<exists> a b :: int poly. P m = a * b \<and> degree a > 0 \<and> degree b > 0} = putnam_2001_a3_solution"
  sorry

end