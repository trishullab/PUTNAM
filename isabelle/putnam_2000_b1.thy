theory putnam_2000_b1 imports Complex_Main
begin

(* uses (nat \<Rightarrow> int) instead of (Fin N \<Rightarrow> int) *)
theorem putnam_2000_b1:
  fixes N :: nat
  and a b c :: "nat \<Rightarrow> int"
  assumes Nge1: "N \<ge> 1"
  and hodd: "\<forall>j::nat\<in>{0..(N-1)}. odd (a j) \<or> odd (b j) \<or> odd (c j)"
  shows "\<exists>r s t::int. card {j::nat\<in>{0..(N-1)}. odd (r * a j + s * b j + t * c j)} \<ge> 4*N/7"
  sorry

end
