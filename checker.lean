import .problem
import .solution

theorem checker(p q : Prop) : prob p q :=
  begin
  exact (solution p q)
  end
