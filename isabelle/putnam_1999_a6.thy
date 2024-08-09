theory putnam_1999_a6 imports
Complex_Main
begin

theorem putnam_1999_a6:
  fixes a :: "nat \<Rightarrow> real"
  assumes ha1: "a 1 = 1"
  and ha2: "a 2 = 2"
  and ha3: "a 3 = 24"
  and hange4: "\<forall> n :: nat. n \<ge> 4 \<longrightarrow> a n = (6 * (a (n - 1)) ^ 2 * (a (n - 3)) - 8 * (a (n - 1)) * (a (n - 2)) ^ 2) / (a (n - 2) * a (n - 3))"
  shows "\<forall> n :: nat. n \<ge> 1 \<longrightarrow> (\<exists> k :: int. a n = k * n)"
  sorry

end