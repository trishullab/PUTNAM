theory putnam_2001_b4 imports Complex_Main
begin

definition putnam_2001_b4_solution::bool where "putnam_2001_b4_solution \<equiv> undefined"
(* True *)
theorem putnam_2001_b4:
  fixes f :: "rat \<Rightarrow> rat" and S :: "rat set"
  defines "f \<equiv> \<lambda>x. x - 1/x"
    and "S \<equiv> \<rat> - {-1, 0, 1}"
  shows "putnam_2001_b4_solution \<longleftrightarrow> ((\<Inter>n::nat \<in> {1..}. image (f^^n) S) = {}) "
  sorry

end
