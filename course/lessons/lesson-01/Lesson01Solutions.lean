import Mathlib

namespace Lesson01Solutions

def Even (n : ℕ) : Prop :=
  ∃ k : ℕ, n = 2 * k

def Odd (n : ℕ) : Prop :=
  ∃ k : ℕ, n = 2 * k + 1


example : Even 0 := by
  use 0


example : Even 10 := by
  use 5


theorem even_add_even {a b : ℕ}
    (ha : Even a) (hb : Even b) :
    Even (a + b) := by
  rcases ha with ⟨m, hm⟩
  rcases hb with ⟨n, hn⟩
  use m + n
  omega


theorem even_mul {a b : ℕ}
    (ha : Even a) :
    Even (a * b) := by
  rcases ha with ⟨m, hm⟩
  use m * b
  omega


theorem odd_add_odd {a b : ℕ}
    (ha : Odd a) (hb : Odd b) :
    Even (a + b) := by
  rcases ha with ⟨m, hm⟩
  rcases hb with ⟨n, hn⟩
  use m + n + 1
  omega

end Lesson01Solutions
