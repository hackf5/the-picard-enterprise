# Lesson 1 — What Is a Proof?

## From “even + even = even” to a complete mathematical proof

We begin with a fact that feels almost too obvious to prove:

> **An even number plus an even number is even.**

That is deliberate.

The purpose of this lesson is not to discover something surprising about even numbers. It is to learn, on the smallest possible example, how to:

1. understand exactly what a mathematical statement says;
2. read the symbols as a sentence;
3. unpack a definition;
4. identify what a proof must actually produce;
5. construct that proof and verify that it works.

Two principles will guide the lesson:

> **Translate faithfully before translating fluently.**

and:

> **Introduce notation only after the idea it compresses has been understood.**

Mathematicians use notation to reduce cognitive load. But notation only helps once we know what it is abbreviating.

## 1. What does “even” mean?

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

### 1.1 Proving that a number is even

Suppose we want to prove that $6$ is even. The definition asks us to produce a natural number $k$ satisfying $6=2k$.

Choose $k=3$. Then $6=2\cdot3$, so $6$ is even.

The number $3$ is called a **witness**. A witness is an object whose existence was claimed and which we explicitly produce. Here, $3$ is a value of $k$ that satisfies the required condition.

#### Does “a witness” mean there might be others?

No. The statement $\exists k\in\mathbb N,\;6=2k$ claims only that **at least one** suitable natural number exists. It does not say that there is more than one.

In fact, $3$ is the only natural number that works here. But proving uniqueness would be a different task: we would need to prove both that a suitable $k$ exists and that no other $k$ works.

The definition of evenness asks only for existence. Once we have produced $k=3$ and checked it, the required proof is complete.

This gives us a useful proof habit:

> **Prove what the statement requires, and no more.**

### 1.2 Why is $\;0\;$ even?

The definition asks us to find a witness: a natural number $k$ satisfying $0=2k$. Choose $k=0$. Since $0=2\cdot0$, this witness works, so the number $0$ is even.

A precise definition settles the matter immediately.

## 2. Predicates and notation

The phrase “is even” describes a property that a natural number may or may not have. A property or condition that can be applied to an object is called a **predicate**.

We already understand evenness in its expanded form, so we can now give this predicate a short name. On paper, we may write:

$$
\operatorname{Even}(n)\quad\text{means}\quad
\exists k\in\mathbb N,\;n=2k
$$

For a reader with programming experience, a useful first model is a function that takes an input and returns `true` or `false`. Give `Even` the input $6$, and the result is `true`; give it the input $7$, and the result is `false`.

More precisely, applying a mathematical predicate to an object produces a statement about that object, and the statement is either true or false. The predicate does not have to tell a computer how to calculate the answer; it specifies the condition that must be proved or disproved.

Nothing new has been added to the mathematics. We have simply named a property we already understand.

This notation lets us state the theorem without repeatedly writing the full definition of evenness.

## 3. What exactly are we trying to prove?

The informal sentence

> even + even = even

is not yet a fully precise theorem. What we mean is:

> For every pair of natural numbers $a$ and $b$, if $a$ is even and $b$ is even, then $a+b$ is even.

Using the predicate we have just introduced, we can write this as:

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

## 4. From the assumptions to the conclusion

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

### 4.1 What are we taking for granted?

The proof uses two familiar facts that we have not proved here.

First, if $m$ and $n$ are natural numbers, then $m+n$ is a natural number. This is called **closure of the natural numbers under addition**.

Second, we use $2m+2n=2(m+n)$, an instance of the **distributive law**.

Mathematics has to start somewhere. Some statements are accepted as starting assumptions, called **axioms**; other established facts have already been proved from those assumptions. In this lesson, we treat these familiar facts about arithmetic as established rather than tracing them back to the foundations of the natural numbers.

We will use a practical rule throughout the course:

> **Be explicit about what we are taking for granted, but only chase those facts back to their foundations when doing so helps with the mathematics we are currently trying to understand.**

## 5. The proof in ordinary mathematical prose

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



## 6. What was the important move?

The arithmetic $2m+2n=2(m+n)$ is elementary. The more important move is logical.

The assumptions supplied two witnesses, $m$ and $n$. The conclusion required a new witness, and we constructed $m+n$. The proof therefore contains the transformation

$$
(m,n)\longmapsto m+n
$$

The general pattern is:

> **unpack the assumptions → construct what the conclusion asks for → verify that it works.**

This pattern will appear repeatedly throughout the course.

## 7. Why checking examples is not a proof

We could calculate $2+4=6$, $8+10=18$, and $100+200=300$. Every example supports the claim, but the theorem begins with $\forall a,b\in\mathbb N$: it makes a claim about every pair of natural numbers.

Checking any finite number of examples leaves infinitely many cases unchecked. Our proof instead begins with arbitrary even natural numbers $a$ and $b$ and uses only the information contained in the statement that they are even. That is why one proof covers every case.

## 8. What have we learned?

The theorem itself is elementary, but the method is general:

- mathematical notation expresses complete statements that can be read in words;
- definitions tell us what information an assumption contains and what a conclusion requires;
- an existential statement asks for at least one witness, not a proof of uniqueness;
- a predicate gives a reusable name to a property we already understand;
- checking examples is different from proving a claim about every case;
- the central act of this proof was constructing the witness $m+n$.

The working pattern is:

> **read → unpack → construct → verify.**

In a separate Lesson 1 companion, we will introduce Lean from the beginning and use it to check this same proof. Because the mathematics is now understood, we will be able to concentrate on what the Lean language says and how its proof follows the structure we have built here.
