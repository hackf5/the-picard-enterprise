# Lesson 1 — What Is a Proof?

## From “even + even = even” to a machine-checked theorem

We begin with a fact that feels almost too obvious to prove:

> **An even number plus an even number is even.**

That is deliberate.

The purpose of this lesson is not to discover something surprising about even numbers. It is to learn, on the smallest possible example, how to:

1. understand exactly what a mathematical statement says;
2. read the symbols as a sentence;
3. unpack a definition;
4. identify what a proof must actually produce;
5. construct that proof;
6. translate the same reasoning into Lean.

Two principles will guide the lesson.

> **Translate faithfully before translating fluently.**

and:

> **Introduce notation only after the idea it compresses has been understood.**

Mathematicians use notation to reduce cognitive load. But notation only helps once we know what it is abbreviating.

## 1. What does “even” mean?

We will work with the **natural numbers**:

$$
\mathbb N=\{0,1,2,3,\ldots\}.
$$

The symbol $\mathbb N$ is the conventional symbol for the natural numbers.

A natural number $n$ is **even** if there exists a natural number $k$ such that

$$
n=2k.
$$

In symbols:

$$
\exists k\in\mathbb N,\;n=2k.
$$

New symbols:

- $\exists$ means **there exists a**;
- $\in$ means **in**, or more formally **is an element of**;
- $\mathbb N$ means **the natural numbers**.

So we read

$$
\exists k\in\mathbb N,\;n=2k
$$

as:

> There exists a $k$ in the natural numbers such that $n=2k$.

Or, more naturally:

> There exists a natural number $k$ such that $n=2k$.

These are two English renderings of the same mathematical statement.

The phrase **such that** is part of the way we read the structure of the sentence. We will examine that more carefully in the appendix.

### 1.1 Proving that a number is even

Suppose we want to prove that $6$ is even.

The definition tells us exactly what we need:

$$
\exists k\in\mathbb N,\;6=2k.
$$

So we need to produce a natural number $k$ for which

$$
6=2k.
$$

Choose

$$
k=3.
$$

Then

$$
6=2\cdot3.
$$

Therefore $6$ is even.

The number $3$ is called a **witness**.

A witness is an object whose existence was claimed and which we explicitly produce.

Here the claim was:

> There exists a natural number $k$ such that $6=2k$.

The number $3$ is a value of $k$ that satisfies the condition.

#### Does “a witness” mean there might be others?

No.

The statement

$$
\exists k\in\mathbb N,\;6=2k
$$

says only:

> There exists **at least one** natural number $k$ such that $6=2k$.

It does not say that there is more than one.

In fact, $k=3$ is the only natural number that works here.

We could prove the stronger statement:

> There exists exactly one natural number $k$ such that $6=2k$.

But that would be a different task. We would have to prove both:

1. that such a $k$ exists;
2. that no other $k$ works.

The definition of evenness asks us only for existence.

Once we have produced $k=3$ and checked that it works, the required proof is complete.

This gives us another useful proof habit:

> **Prove what the statement requires, and no more.**

### 1.2 Why is $0$ even?

The definition asks whether there exists a natural number $k$ such that

$$
0=2k.
$$

Choose

$$
k=0.
$$

Then

$$
0=2\cdot0.
$$

Therefore $0$ is even.

A precise definition settles the matter immediately.

## 2. What exactly are we trying to prove?

The informal sentence

> even + even = even

is not yet a fully precise theorem.

What we mean is:

> For every pair of natural numbers $a$ and $b$, if $a$ is even and $b$ is even, then $a+b$ is even.

New symbols:

- $\forall$ means **for every**;
- $\land$ means **and**;
- $\Longrightarrow$ means **implies**.

If we expand the word **even** using its definition, the theorem can be written entirely in symbols as:

$$
\forall a,b\in\mathbb N,\qquad
\left(
\exists m\in\mathbb N,\;a=2m
\right)
\land
\left(
\exists n\in\mathbb N,\;b=2n
\right)
\Longrightarrow
\left(
\exists k\in\mathbb N,\;a+b=2k
\right).
$$

That looks formidable for such a simple claim, so let us read it in pieces.

First:

$$
\forall a,b\in\mathbb N
$$

means:

> For every $a$ and $b$ in the natural numbers.

Next:

$$
\exists m\in\mathbb N,\;a=2m
$$

means:

> There exists a natural number $m$ such that $a=2m$.

And:

$$
\exists n\in\mathbb N,\;b=2n
$$

means:

> There exists a natural number $n$ such that $b=2n$.

The symbol

$$
\land
$$

joins those two claims with **and**.

Finally:

$$
\exists k\in\mathbb N,\;a+b=2k
$$

means:

> There exists a natural number $k$ such that $a+b=2k$.

So the whole symbolic statement says:

> For every $a$ and $b$ in the natural numbers, if there exists a natural number $m$ such that $a=2m$, and there exists a natural number $n$ such that $b=2n$, then there exists a natural number $k$ such that $a+b=2k$.

That is a faithful translation.

Once we understand it, we can compress it back into ordinary mathematical English:

> For every pair of natural numbers $a$ and $b$, if $a$ and $b$ are even, then $a+b$ is even.

The shorter sentence is easier to think about because the meaning of **even** is now understood.

This is exactly why mathematicians introduce definitions and notation: not to make mathematics obscure, but to avoid carrying the full expanded statement in our heads every time.

## 3. What do the assumptions give us?

Suppose $a$ and $b$ are even.

By the definition of evenness:

$$
a=2m
$$

for some natural number $m$, and

$$
b=2n
$$

for some natural number $n$.

That is all we need from the assumptions.

Earlier, while the notation was new, we wrote:

$$
\exists m\in\mathbb N,\;a=2m.
$$

Now we are comfortable saying:

> $a=2m$ for some natural number $m$.

The mathematical content is the same. We are simply allowing the language to become more fluent.

So our useful information is:

$$
a=2m,
\qquad
b=2n,
$$

where $m,n\in\mathbb N$.

This is the entire engine of the proof.

## 4. What must the proof produce?

We want to prove that $a+b$ is even.

By definition, that means we need some natural number $k$ such that

$$
a+b=2k.
$$

So the proof has a very concrete target:

> **Find a suitable $k$.**

We know:

$$
a=2m
$$

and

$$
b=2n.
$$

Therefore:

$$
a+b=2m+2n.
$$

Factor out $2$:

$$
a+b=2(m+n).
$$

Now compare:

$$
a+b=2(m+n)
$$

with the form we need:

$$
a+b=2k.
$$

The correct witness is therefore

$$
k=m+n.
$$

Because $m$ and $n$ are natural numbers, $m+n$ is also a natural number.

So $m+n$ is a witness proving that $a+b$ is even.

That is the proof.

## 4.1 What are we taking for granted?

There are two apparently obvious steps in the argument that we have not proved.

First, we used the fact that if $m$ and $n$ are natural numbers, then

$$
m+n
$$

is also a natural number.

In symbols:

$$
m,n\in\mathbb N
\Longrightarrow
m+n\in\mathbb N.
$$

This is called **closure of the natural numbers under addition**.

Second, we used:

$$
2m+2n=2(m+n).
$$

This is an instance of the **distributive law**.

Both facts are true, but we have not proved them here.

Mathematics has to start somewhere.

We begin by accepting certain statements, called **axioms**, without proof. From those starting assumptions, we can prove further results, and later use those results without proving them again every time.

In this lesson, we are not going all the way back to those foundations. We are simply treating these familiar facts about arithmetic as already established.

We could ask why closure under addition is true.

We could ask why the distributive law is true.

And we could keep following those questions backwards towards the foundations of arithmetic.

Those are perfectly legitimate mathematical questions, but they are not the questions we are trying to answer here.

Our aim is to understand the proof that the sum of two even numbers is even.

So, for this proof, we will take the following as established background facts:

1. **Closure of $\mathbb N$ under addition**
   $$
   m,n\in\mathbb N
   \Longrightarrow
   m+n\in\mathbb N;
   $$

2. **The distributive law**
   $$
   2m+2n=2(m+n).
   $$

We will use a practical rule throughout the course:

> **Be explicit about what we are taking for granted, but only chase those facts back to their foundations when doing so helps with the mathematics we are currently trying to understand.**

For now, we know these boxes are there. We are simply choosing not to open them yet.

## 5. The proof in ordinary mathematical prose

> **Theorem.** The sum of two even natural numbers is even.
>
> **Proof.** Let $a$ and $b$ be even natural numbers. Then there exist $m,n\in\mathbb N$ such that $a=2m$ and $b=2n$. Hence
>
> $$
> a+b=2m+2n=2(m+n).
> $$
>
> Since $m+n\in\mathbb N$, the number $a+b$ is even. $\square$

The symbol $\square$ marks the end of the proof.

This proof is short because several ideas have now been compressed:

- we know what “even” means;
- we know how to read “there exist $m,n$”;
- we know that producing $m+n$ proves the required existential statement.

The short proof is not doing less mathematics. It is assuming that the reader no longer needs every step unpacked.

## 6. What was the important move?

The arithmetic

$$
2m+2n=2(m+n)
$$

is elementary.

The logical move is more important.

From the assumptions we obtained two witnesses:

$$
m
\qquad\text{and}\qquad
n.
$$

The conclusion required a new witness.

We constructed:

$$
m+n.
$$

So the proof contains the transformation

$$
(m,n)\longmapsto m+n.
$$

The pattern is:

> **unpack the assumptions → construct what the conclusion asks for → verify that it works.**

This pattern will appear repeatedly throughout the course.

## 7. Why checking examples is not a proof

We could calculate:

$$
2+4=6,
$$

$$
8+10=18,
$$

$$
100+200=300.
$$

Every example supports the claim.

But the theorem begins with:

$$
\forall a,b\in\mathbb N.
$$

That means:

> For every pair of natural numbers $a$ and $b$.

Checking any finite number of examples leaves infinitely many unchecked.

Our proof does something different.

It begins with arbitrary even natural numbers $a$ and $b$ and uses only the information contained in the statement that they are even.

That is why one proof covers every case.

## 8. We have now earned a piece of notation

So far we have deliberately written:

> $a$ is even

rather than inventing a new mathematical symbol for it.

We did that because notation should reduce cognitive load, not add to it.

But we are about to write the same idea in Lean, where giving the property a name is useful.

We can define a predicate called `Even`.

On paper, we could write:

$$
\operatorname{Even}(n)
$$

to mean:

$$
\exists k\in\mathbb N,\;n=2k.
$$

Nothing new has been added to the mathematics.

We have simply given a short name to a property we already understand.

This is something mathematicians do constantly.

A complicated idea is first defined explicitly. Once it has become familiar, it is given a name or symbol so that later arguments can be written without repeatedly expanding the whole definition.

## 9. A brief note about predicates

`Even` is a **predicate**.

A predicate is a property or condition that can be applied to an object.

For example:

$$
\operatorname{Even}(6)
$$

is the statement:

> $6$ is even.

And:

$$
\operatorname{Even}(7)
$$

is the statement:

> $7$ is even.

The first is true; the second is false.

It is useful to think of a predicate as function-like: we supply an input, and obtain a proposition about that input.

In Lean, this becomes completely explicit.

## 10. Defining evenness in Lean

We write:

```lean
def Even (n : ℕ) : Prop :=
  ∃ k : ℕ, n = 2 * k
```

We already understand the mathematics on the right-hand side.

Now let us read the Lean syntax.

### `def Even`

```lean
def Even
```

means:

> Define something called `Even`.

### `(n : ℕ)`

```lean
n : ℕ
```

means:

> `n` has type `ℕ`.

Since `ℕ` is the natural numbers:

> `n` is a natural number.

### `: Prop`

```lean
: Prop
```

says that `Even n` is a **proposition**.

For now, a proposition is something that can be proved.

So:

```lean
Even n : Prop
```

can be read as:

> "`n` is even" is a proposition.

### The definition

```lean
∃ k : ℕ, n = 2 * k
```

means:

> There exists a natural number `k` such that `n = 2 * k`.

So the complete definition

```lean
def Even (n : ℕ) : Prop :=
  ∃ k : ℕ, n = 2 * k
```

means:

> Define `Even n` to be the proposition that there exists a natural number `k` such that `n = 2 * k`.

We have merely packaged our existing definition into a reusable name.

## 11. Proving that 6 is even in Lean

On paper, we proved that $6$ is even by choosing the witness $3$.

In Lean:

```lean
example : Even 6 := by
  use 3
```

The goal `Even 6` expands to:

```lean
∃ k : ℕ, 6 = 2 * k
```

So Lean is asking:

> Produce a natural number `k` such that `6 = 2 * k`.

The line

```lean
use 3
```

says:

> Use `3` as the witness.

Lean then checks that it works.

The formal proof is doing exactly what the paper proof did.

## 12. Even + even = even in Lean

Here is the complete theorem:

```lean
theorem even_add_even {a b : ℕ}
    (ha : Even a) (hb : Even b) :
    Even (a + b) := by
  rcases ha with ⟨m, hm⟩
  rcases hb with ⟨n, hn⟩
  use m + n
  omega
```

The notation `Even` is now useful because otherwise the theorem statement would have to repeat the full existential definition several times.

This is precisely the cognitive compression we wanted the name to provide.

## 13. Reading the Lean theorem statement

Start with:

```lean
{a b : ℕ}
```

This tells us that `a` and `b` are natural numbers.

Next:

```lean
(ha : Even a)
```

means:

> `ha` is a proof that `a` is even.

Similarly:

```lean
(hb : Even b)
```

means:

> `hb` is a proof that `b` is even.

Finally:

```lean
Even (a + b)
```

means:

> `a + b` is even.

So the theorem statement says:

> Given natural numbers `a` and `b`, together with proofs that each is even, produce a proof that `a+b` is even.

That is the same theorem we proved on paper.

## 14. Extracting the witnesses

The assumption

```lean
ha : Even a
```

ultimately means:

```lean
∃ m : ℕ, a = 2 * m
```

The line

```lean
rcases ha with ⟨m, hm⟩
```

extracts the information hidden inside that existential statement.

Afterwards Lean gives us:

```text
m  : ℕ
hm : a = 2 * m
```

So:

- `m` is the witness;
- `hm` is the proof that this witness works.

Likewise:

```lean
rcases hb with ⟨n, hn⟩
```

gives us:

```text
n  : ℕ
hn : b = 2 * n
```

This is the formal version of:

> Since $a$ and $b$ are even, write $a=2m$ and $b=2n$.

## 15. Constructing the new witness

The goal is:

```lean
Even (a + b)
```

which expands to:

```lean
∃ k : ℕ, a + b = 2 * k
```

From the paper proof, we know the correct witness:

$$
m+n.
$$

So we write:

```lean
use m + n
```

That says:

> Use `m+n` as the witness required by the existential statement.

This is the main mathematical idea in the Lean proof.

## 16. Finishing the arithmetic

After choosing the witness, Lean only needs to verify:

$$
a+b=2(m+n),
$$

using:

$$
a=2m
$$

and

$$
b=2n.
$$

The final line is:

```lean
omega
```

`omega` is an arithmetic tactic.

It checks the elementary arithmetic that remains.

The tactic did not discover the important idea. We supplied that when we chose the witness `m+n`.

## 17. Paper proof and Lean proof side by side

| Mathematical reasoning | Lean |
| --- | --- |
| Let $a$ and $b$ be even. | `(ha : Even a) (hb : Even b)` |
| Write $a=2m$ for some natural number $m$. | `rcases ha with ⟨m, hm⟩` |
| Write $b=2n$ for some natural number $n$. | `rcases hb with ⟨n, hn⟩` |
| Choose $m+n$ as the new witness. | `use m + n` |
| Verify $a+b=2(m+n)$. | `omega` |
| Therefore $a+b$ is even. | Lean accepts the theorem. |

The mathematical proof and the Lean proof have the same structure.

## 18. What have we actually learned?

The theorem itself is simple.

The useful ideas are more general.

We have learned that:

- mathematical notation expresses statements, not merely formulas;
- understanding the statement comes before proving it;
- definitions tell us what information an assumption contains;
- an existential statement asks for at least one witness;
- existence does not imply uniqueness;
- proving more than the statement asks for is unnecessary;
- notation should be introduced when it compresses an already-understood idea;
- mathematical prose becomes shorter as familiar structure is safely omitted;
- a formal proof can expose the same logical structure as an ordinary proof.

The working pattern is:

> **read → unpack → construct → verify.**

## 19. Lesson 1 checkpoint

Before moving on, make sure you can answer these in your own words.

1. What does it mean for a natural number $n$ to be even?
2. What does $\exists$ mean?
3. What does $\in$ mean?
4. How do you read
   $$
   \exists k\in\mathbb N,\;n=2k?
   $$
5. In that sentence, what role does the phrase **such that** play?
6. What is a witness?
7. Does producing one witness imply that there are several?
8. Why do we not need to prove that the witness for $6$ is unique?
9. Why is $0$ even?
10. What does $\forall$ mean?
11. What does $\land$ mean?
12. What does $\Longrightarrow$ mean?
13. Translate the fully expanded theorem
    $$
    \forall a,b\in\mathbb N,\;
    \left(\exists m\in\mathbb N,\;a=2m\right)
    \land
    \left(\exists n\in\mathbb N,\;b=2n\right)
    \Longrightarrow
    \left(\exists k\in\mathbb N,\;a+b=2k\right)
    $$
    into ordinary English.
14. If $a$ is even, what concrete information may we extract from that fact?
15. What witness proves that the sum of two even numbers is even?
16. Why did we delay introducing the notation `Even`?
17. What does `rcases ha with ⟨m, hm⟩` do?
18. What does `use m + n` do?
19. Why is `use m + n` more mathematically significant than `omega`?
20. Why can checking many examples never prove the theorem?

If a symbolic statement is difficult to read, fix that before trying to manipulate it.

## Appendix A — How to read the mathematics in this lesson

This appendix collects the language conventions used above.

The aim is not to enforce one sacred English translation. Mathematical statements can often be expressed faithfully in several ways.

The rule is:

> **The wording may vary; the mathematical content must not.**

### A.1 Mathematical notation is a language

Consider:

$$
\exists k\in\mathbb N,\;n=2k.
$$

A deliberately literal reading is:

> There exists a $k$ in the natural numbers such that $n=2k$.

A more natural reading is:

> There exists a natural number $k$ such that $n=2k$.

Once the idea of evenness is familiar, we may compress the whole thing to:

> $n$ is even.

These are not three different mathematical claims.

They are three levels of linguistic compression.

### A.2 The existential quantifier: $\exists$

The symbol $\exists$ is called the **existential quantifier**.

It is read as **there exists** or **there is**.

For example:

$$
\exists k\in\mathbb N,\;k>10
$$

means:

> There exists a natural number $k$ such that $k$ is greater than $10$.

An existential statement claims **at least one** witness.

It does not claim that there is more than one, and it does not claim uniqueness.

### A.3 “Such that”

In

$$
\exists k\in\mathbb N,\;k>10
$$

there is no special symbol whose literal translation is **such that**.

The first part introduces the object whose existence is asserted. The second states the condition it must satisfy. English naturally joins those pieces with **such that**.

### A.4 Membership: $\in$

The symbol $\in$ means **is an element of**, or simply **is in**.

Thus

$$
k\in\mathbb N
$$

means:

> $k$ is a natural number.

### A.5 The universal quantifier: $\forall$

The symbol $\forall$ is called the **universal quantifier**.

It is read **for every** or **for all**.

For example:

$$
\forall n\in\mathbb N,\;n+0=n
$$

means:

> For every natural number $n$, $n+0=n$.

### A.6 Conjunction: $\land$

The symbol $\land$ means **and**.

If $A$ and $B$ are statements, then

$$
A\land B
$$

asserts that both are true.

### A.7 Implication: $\Longrightarrow$

The expression

$$
A\Longrightarrow B
$$

can be read:

> $A$ implies $B$.

Ordinary English often renders the same structure as:

> If $A$, then $B$.

### A.8 Predicates

A predicate is a property or condition applied to an input.

Suppose:

$$
P(x)\quad\text{means}\quad x>10.
$$

Then $P(12)$ is the statement $12>10$, which is true, while $P(3)$ is the statement $3>10$, which is false.

So

$$
\exists x\in\mathbb N,\;P(x)
$$

may be read very explicitly as:

> There exists a natural number $x$ such that the predicate $P$, applied to $x$, is true.

Once predicates are familiar:

> There exists a natural number $x$ such that $P(x)$.

In Lean, a predicate on natural numbers may have type:

```lean
P : ℕ → Prop
```

Read:

> `P` takes a natural number and produces a proposition.

### A.9 Restricted quantifiers

The notation

$$
\exists x\in\mathbb N,\;x>10
$$

can be expanded conceptually as:

$$
\exists x,\;(x\in\mathbb N)\land(x>10).
$$

Likewise,

$$
\forall x\in\mathbb N,\;x+0=x
$$

expresses the idea:

> For every $x$, if $x$ is a natural number, then $x+0=x$.

Restricted notation saves us from repeatedly writing the domain condition.

### A.10 Several translations may be faithful

For example,

$$
\forall x\in\mathbb N,\;x+0=x
$$

may be rendered as:

> For every $x$ in the natural numbers, $x+0=x$.

or:

> For every natural number $x$, $x+0=x$.

or:

> Every natural number is unchanged when zero is added to it.

The English differs. The mathematical content does not.

### A.11 Compression is earned

At first:

> There exists a natural number $x$ such that the predicate $P$, applied to $x$, is true.

Later:

> There exists a natural number $x$ for which $P(x)$ is true.

Later still:

> There exists an $x$ such that $P(x)$.

Eventually:

> Choose $x$ satisfying $P$.

The final version is not more rigorous. It is simply more compressed.

The compression is safe because the underlying concepts have already been learned.

## Appendix B — Lean syntax used in this lesson

| Lean | Read it as |
| --- | --- |
| `n : ℕ` | `n` is a natural number |
| `Even n : Prop` | `Even n` is a proposition |
| `∃ k : ℕ, ...` | there exists a natural number `k` such that ... |
| `ha : Even a` | `ha` is a proof that `a` is even |
| `rcases ha with ⟨m, hm⟩` | extract witness `m` and proof `hm` from `ha` |
| `use m + n` | use `m+n` as the required witness |
| `omega` | solve the remaining elementary arithmetic |

Reference proof:

```lean
import Mathlib

namespace Lesson01

def Even (n : ℕ) : Prop :=
  ∃ k : ℕ, n = 2 * k

example : Even 6 := by
  use 3

theorem even_add_even {a b : ℕ}
    (ha : Even a) (hb : Even b) :
    Even (a + b) := by
  rcases ha with ⟨m, hm⟩
  rcases hb with ⟨n, hn⟩
  use m + n
  omega

end Lesson01
```

## Where we go next

This lesson spent a large amount of time proving an elementary fact.

That is intentional.

The real subject was not parity.

The real subject was learning to understand the statement before trying to manipulate it.

Once a statement is understood, the proof is often much less mysterious.

As the course continues, the mathematical objects will become far more sophisticated.

The discipline remains the same:

> **understand the statement first.**
