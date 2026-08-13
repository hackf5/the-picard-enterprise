# Lesson 1 — Exercises

Work through these after reading the notebook. The point is not speed. Write down the witness explicitly whenever an existential statement is involved.

## A. Reading the definition

Recall:

$$
\operatorname{Even}(n)
\iff
\exists k\in\mathbb N,\ n=2k.
$$

1. Prove that $10$ is even by giving a witness.
2. Prove that $24$ is even by giving a witness.
3. Prove that $0$ is even by giving a witness.
4. If $n=2\cdot 137$, what witness proves that $n$ is even?
5. Explain in one sentence why the statement “$n$ is even” contains more useful information than merely “$n$ belongs to the category of even numbers”.

## B. Reconstructing the main proof

Suppose $a$ and $b$ are even.

1. Write down exactly what the definition of evenness tells you about $a$.
2. Write down exactly what it tells you about $b$.
3. Starting from $a+b$, substitute those two pieces of information and simplify.
4. What witness proves that $a+b$ is even?
5. Write the complete proof of “even + even = even” in your own words.

## C. Tiny variations

 1. Prove: if $a$ is even and $b\in\mathbb N$, then $ab$ is even.
 2. Define an odd natural number by

$$
\operatorname{Odd}(n)
\iff
\exists k\in\mathbb N,\ n=2k+1.
$$

Prove that $7$ is odd by giving a witness.

 1. Prove that the sum of two odd natural numbers is even.

Hint: if

$$
a=2m+1,\qquad b=2n+1,
$$

then find a natural number $k$ such that

$$
a+b=2k.
$$

Do not merely simplify the left side. Explicitly identify $k$.

## D. Reading Lean

Given:

```lean
def Even (n : ℕ) : Prop :=
  ∃ k : ℕ, n = 2 * k
```

 1. Translate `n : ℕ` into English.
 2. Translate `∃ k : ℕ, n = 2 * k` into English.
 3. What does `Prop` tell us about `Even n`?
 4. In

```lean
rcases ha with ⟨m, hm⟩
```

what is `m`?
18. What is `hm`?
19. In

```lean
use m + n
```

what claim are we making?
20. Why is `use m + n` more mathematically significant than the final `omega`?

## E. Lean exercises

Open `Lesson01Exercises.lean`.

 1. Fill the proof that `0` is even.
 2. Fill the proof that `10` is even.
 3. Complete `even_add_even`.
 4. Complete `even_mul`.
 5. Complete `odd_add_odd`.

Try to do 23–25 by first deciding, on paper, what witness Lean needs. Only then write Lean code.

---

## Exit question

Without looking at the notes, complete this sentence:

> To prove an existential statement, I need to ____________.

The intended answer is more important than any notation in this lesson.
