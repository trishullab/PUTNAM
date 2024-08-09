theory putnam_1999_b4 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1999_b4:
  fixes f :: "real\<Rightarrow>real"
  assumes f_cont : "\<forall>n::nat\<in>{0..2}. ((deriv^^n) f) C1_differentiable_on UNIV"
    and f_pos : "\<forall>x. f x > 0"
    and f'_pos : "\<forall>x. deriv f x > 0"
    and f''_pos : "\<forall>x. (deriv^^2) f x > 0"
    and f'''_pos : "\<forall>x. (deriv^^3) f x > 0"
    and hf : "\<forall>x. (deriv^^3) f x \<le> f x"
  shows "\<forall>x. deriv f x < 2 * f x"
  sorry

end
