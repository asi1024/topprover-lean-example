import .problem

theorem solution : prob :=
begin
  intros p q,
  assume Hpq : p ∧ q,
  have Hp : p, from and.elim_left Hpq,
  have Hq : q, from and.elim_right Hpq,
  show q ∧ p, from and.intro Hq Hp,
end
