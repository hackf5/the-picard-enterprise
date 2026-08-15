# Lesson 1 — What Is a Proof?

## From experiment to conjecture to proof

## 1. From examples to a conjecture

Take two even natural numbers and add them. Trying a few examples gives $2+4=6$, $8+10=18$, and $100+200=300$.

Every sum we have tried is even. Suppose we keep going, checking many different pairs, and still fail to find two even natural numbers whose sum is not even.

Such a pair would be a **counterexample**: a single example showing that a general claim is false. We have not found one.

The calculations provide evidence for a pattern. The more cases we check, the more compelling that evidence may become. But any finite collection of calculations leaves infinitely many pairs unchecked.

When evidence suggests a general pattern, we can state a **conjecture**: a precise mathematical claim that we believe is true but have not yet proved.

> **Conjecture.** The sum of two even natural numbers is even.

One counterexample would show that the conjecture is false. Failing to find a counterexample does not prove that it is true. To settle the question, we need an argument that covers every pair of even natural numbers.

Before constructing that argument, we must understand exactly what the conjecture says. We begin with the word **even**.

## 2. What does “even” mean?

We will work with the **natural numbers**:

$$
\mathbb N=\{0,1,2,3,\ldots\}
$$

The symbol $\mathbb N$ is the conventional symbol for the natural numbers.

A natural number $n$ is **even** if $n=2k$ for some natural number $k$. In symbols:

$$
\exists k\in\mathbb N,\;n=2k
$$

The new symbols are:

- $\exists$, which means **there exists a**;
- $\in$, which means **is in**, or more formally **is an element of**;
- $\mathbb N$, which means **the natural numbers**.

A deliberately faithful reading is:

> There exists a $k$ in the natural numbers such that $n=2k$.

A more natural reading is:

> There exists a natural number $k$ such that $n=2k$.

These are two English renderings of the same mathematical statement. The first part introduces the number whose existence is claimed; the second gives the condition it must satisfy. English naturally joins those parts with **such that**.

### 2.1 Proving that a number is even

Suppose we want to prove that $6$ is even. The definition asks us to produce a natural number $k$ satisfying $6=2k$.

Choose $k=3$. Then $6=2\cdot3$, so $6$ is even.

The number $3$ is called a **witness**. A witness is an object whose existence was claimed and which we explicitly produce. Here, $3$ is a value of $k$ that satisfies the required condition.

#### Does “a witness” mean there might be others?

No. The statement $\exists k\in\mathbb N,\;6=2k$ claims only that **at least one** suitable natural number exists. It does not say that there is more than one.

In fact, $3$ is the only natural number that works here. But proving uniqueness would be a different task: we would need to prove both that a suitable $k$ exists and that no other $k$ works.

The definition of evenness asks only for existence. Once we have produced $k=3$ and checked it, the required proof is complete.

This gives us a useful proof habit:

> **Prove what the statement requires, and no more.**

### 2.2 Why is $\;0\;$ even?

The definition asks us to find a witness: a natural number $k$ satisfying $0=2k$. Choose $k=0$. Since $0=2\cdot0$, this witness works, so the number $0$ is even.

A precise definition settles the matter immediately.

## 3. Predicates and notation

The phrase “is even” describes a property that a natural number may or may not have. A property or condition that can be applied to an object is called a **predicate**.

We already understand evenness in its expanded form, so we can now give this predicate a short name. On paper, we may write:

$$
\operatorname{Even}(n)\quad\text{means}\quad
\exists k\in\mathbb N,\;n=2k
$$

For a reader with programming experience, a useful first model is a function that takes an input and returns `true` or `false`. Give `Even` the input $6$, and the result is `true`; give it the input $7$, and the result is `false`.

More precisely, applying a mathematical predicate to an object produces a statement about that object, and the statement is either true or false. The predicate does not have to tell a computer how to calculate the answer; it specifies the condition that must be proved or disproved.

Nothing new has been added to the mathematics. We have simply named a property we already understand.

This notation lets us state the conjecture without repeatedly writing the full definition of evenness.

## 4. What exactly does the conjecture say?

The conjecture makes a claim about every pair of natural numbers, not just the examples we have checked. Using the predicate we have just introduced, we can write it as:

$$
\forall a,b\in\mathbb N,\qquad
\operatorname{Even}(a)\land\operatorname{Even}(b)
\Longrightarrow
\operatorname{Even}(a+b)
$$

The new symbols are:

- $\forall$, which means **for every**;
- $\land$, which means **and**;
- $\Longrightarrow$, which means **implies**, or **if ... then ...**.

The expressions to the left of $\Longrightarrow$ are the **assumptions**: $a$ is even and $b$ is even. The expression to the right is the **conclusion**: $a+b$ is even.

## 5. From the assumptions to the conclusion

Suppose $a$ and $b$ are even. By the definition of evenness, there are natural numbers $m$ and $n$ such that

$$
a=2m,
\qquad
b=2n
$$

The numbers $m$ and $n$ are witnesses supplied by our assumptions.

We want to prove that $a+b$ is even. By definition, we must find a natural number $k$ such that $a+b=2k$. In other words, we must find a witness for $a+b$.

Using the two equations supplied by the assumptions:

$$
\begin{aligned}
a+b&=2m+2n\\
   &=2(m+n)
\end{aligned}
$$

The target has the form $a+b=2k$, so the correct witness is $k=m+n$.

Because $m$ and $n$ are natural numbers, $m+n$ is also a natural number. We have therefore produced a valid witness, and the proof is complete.

### 5.1 What are we taking for granted?

The proof uses two familiar facts that we have not proved here.

First, if $m$ and $n$ are natural numbers, then $m+n$ is a natural number. This is called **closure of the natural numbers under addition**.

Second, we use $2m+2n=2(m+n)$, an instance of the **distributive law**.

Mathematics has to start somewhere. Some statements are accepted as starting assumptions, called **axioms**; other established facts have already been proved from those assumptions. In this lesson, we treat these familiar facts about arithmetic as established rather than tracing them back to the foundations of the natural numbers.

We will use a practical rule throughout the course:

> **Be explicit about what we are taking for granted, but only chase those facts back to their foundations when doing so helps with the mathematics we are currently trying to understand.**

## 6. The conjecture becomes a theorem

A **theorem** is a mathematical statement that has been proved. The argument above establishes our conjecture, so we can now state it as a theorem and present the proof in ordinary mathematical prose.

> **Theorem.** The sum of two even natural numbers is even.
>
> **Proof.** Let $a$ and $b$ be even natural numbers. Then there exist $m,n\in\mathbb N$ such that $a=2m$ and $b=2n$. Hence
>
> $$
> a+b=2m+2n=2(m+n)
> $$
>
> Since $m+n\in\mathbb N$, the number $a+b$ is even. $\square$

The symbol $\square$ marks the end of the proof.

## 7. Why the proof works for every case

The examples at the beginning checked particular sums. In the proof, $a$ and $b$ were arbitrary even natural numbers: no special values were chosen.

The assumptions supplied witnesses $m$ and $n$. Constructing $m+n$ gave the witness required for $a+b$. Because this construction works for any such $m$ and $n$, the proof applies to every pair of even natural numbers.

The next Lesson 1 document will express the same argument in Lean.
