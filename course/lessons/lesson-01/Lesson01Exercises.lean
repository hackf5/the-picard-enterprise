import Mathlib

namespace Lesson01Exercises

/-
Lesson 1 starter file.

`sorry` means "accept this proof temporarily".
Your job is to replace each `sorry` with an actual proof.

For this lesson, resist the temptation to solve everything with automation.
First decide what witness the definition requires.
-/

def Even (n : ℕ) : Prop :=
  ∃ k : ℕ, n = 2 * k

def Odd (n : ℕ) : Prop :=
  ∃ k : ℕ, n = 2 * k + 1


/-- Exercise 21: prove that 0 is even. -/
example : Even 0 := by
  sorry


/-- Exercise 22: prove that 10 is even. -/
example : Even 10 := by
  sorry


/--
Exercise 23: the main theorem.

Paper plan:
1. Extract a witness from `ha`.
2. Extract a witness from `hb`.
3. Construct the witness for `a + b`.
4. Verify the arithmetic.
-/
theorem even_add_even {a b : ℕ}
    (ha : Even a) (hb : Even b) :
    Even (a + b) := by
  sorry


/--
Exercise 24: an even natural number multiplied by any natural number is even.

Before writing code, answer:
if `a = 2 * m`, what witness should work for `a * b`?
-/
theorem even_mul {a b : ℕ}
    (ha : Even a) :
    Even (a * b) := by
  sorry


/--
Exercise 25: define oddness above, then prove odd + odd = even.

Before writing code, suppose:
  a = 2*m + 1
  b = 2*n + 1

What witness should prove that a+b is even?
-/
theorem odd_add_odd {a b : ℕ}
    (ha : Odd a) (hb : Odd b) :
    Even (a + b) := by
  sorry

end Lesson01Exercises
