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

### 1.2 Why is $\;0\;$ even?

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