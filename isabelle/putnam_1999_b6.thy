theory putnam_1999_b6 imports Complex_Main
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_1999_b6:
  fixes S::"int set"
  assumes S_fin: "finite S"
    and Sge1: "\<forall>s \<in> S. s > 1"
    and hgcd: "\<forall>n::int. \<exists>s \<in> S. (gcd s n) = 1 \<or> (gcd s n) = s"
  shows "\<exists> s \<in> S. \<exists> t \<in> S. prime (gcd s t)"
  sorry

end
