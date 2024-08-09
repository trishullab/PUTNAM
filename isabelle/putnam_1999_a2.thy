theory putnam_1999_a2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1999_a2:
  fixes p :: "real poly"
  assumes hpos : "\<forall>x. poly p x \<ge> 0"
  shows "\<exists>S :: real poly set . finite S \<and> (\<forall>x. poly p x = (\<Sum>s \<in> S. (poly s x)^2))"
  sorry

end
