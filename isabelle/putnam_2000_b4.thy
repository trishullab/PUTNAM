theory putnam_2000_b4 imports Complex_Main
begin

theorem putnam_2000_b4:
  fixes f :: "real \<Rightarrow> real"
  assumes hf : "\<forall>x::real. f (2 * x^2 - 1) = 2 * x * f x"
    and f_cont : "continuous_on UNIV f"
  shows "\<forall>x::real. x \<ge> -1 \<and> x \<le> 1 \<longrightarrow> f x = 0"
  sorry

end
