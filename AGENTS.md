# AGENTS.md

## Purpose

This repository contains a mathematics course whose long-term goal is to take a mathematically curious reader from elementary proof and notation through serious higher mathematics and formal proof in Lean.

The course should not avoid difficult mathematics.

It should remove **unnecessary difficulty caused by unexplained notation, terminology, compressed prose, and skipped logical steps**.

The governing principle is:

> **Assume intelligence; do not assume mathematical fluency.**

---

## Audience

Write for an intelligent, mathematically curious adult who may have studied mathematics before, perhaps even at university level, but whose mathematical fluency should be treated as rusty.

The reader may recognise advanced terminology without being able to use it confidently.

Assume:

* ordinary arithmetic is familiar;
* basic algebra is familiar;
* the reader is capable of abstract reasoning;
* the reader has some familiarity with programming and programming concepts;
* the reader is comfortable learning formal syntax.

Do **not** assume:

* fluency in mathematical notation;
* familiarity with the grammar of symbolic mathematics;
* remembered definitions of standard mathematical terms;
* familiarity with mathematical proof conventions;
* that previously encountered concepts remain understood;
* any prior knowledge of Lean.

Treat the reader as a **complete beginner in Lean**.

Do not treat the reader as intellectually unsophisticated.

---

## Core teaching philosophy

### Understand the statement first

Before proving or manipulating a mathematical statement, make sure the reader can understand what it says.

For important symbolic statements, the progression should usually be:

1. ordinary mathematical English;
2. symbolic notation;
3. explanation of newly introduced symbols;
4. a faithful spoken-English translation;
5. only then, manipulation or proof.

For example:

$$
\exists k\in\mathbb N,;n=2k
$$

should initially be translated explicitly:

> There exists a natural number $k$ such that $n=2k$.

Do not assume that expressions such as $\exists x$, $P(x)$, $\forall x$, $\in$, $\land$, or $\Longrightarrow$ are self-explanatory.

---

## Translate faithfully before translating fluently

Early translations should preserve the logical content of the notation explicitly.

Once a construction has been used enough times to be familiar, allow the language to become more natural and compressed.

For example, these may all eventually express the same idea at different stages of fluency:

> There exists a natural number $x$ such that the predicate $P$, applied to $x$, is true.

> There exists a natural number $x$ for which $P(x)$ is true.

> There exists an $x$ such that $P(x)$.

> Choose $x$ satisfying $P$.

The course should make this compression gradual and visible.

Do not begin at the final compressed form.

---

## Notation must be earned

Do not introduce bespoke notation merely because mathematicians commonly use it.

Introduce notation when it reduces the cognitive load of an idea the reader already understands.

For example, do not begin by defining

$$
\operatorname{Even}(n)
$$

and then use `Even` throughout the first explanation of evenness.

First establish concretely that $n$ is even when

$$
\exists k\in\mathbb N,;n=2k.
$$

Only later, once this is understood and repetition becomes cumbersome, introduce `Even` as a predicate that packages the already-understood idea.

The pattern is:

> **understand the expanded idea → earn the abbreviation → use the abbreviation**

This applies to mathematical notation, terminology, named structures, and Lean definitions.

---

## Never explain unfamiliar notation using more unexplained notation

Do not write something such as

> $\exists x,P(x)$ means “there exists an $x$ such that $P(x)$”

if predicates have not yet been explained.

Use a concrete example first, such as:

$$
\exists x\in\mathbb N,;x>10.
$$

Only introduce schematic notation such as $P(x)$ after explaining what a predicate is.

---

## Explain the grammar, not just the symbols

A glossary is not enough.

The reader needs to understand how mathematical notation forms sentences.

For example, explain not only that

* $\exists$ means **there exists**;
* $\in$ means **is in**;

but also why

$$
\exists k\in\mathbb N,;k>10
$$

is naturally read:

> There exists a natural number $k$ **such that** $k>10$.

There is no requirement that every English translation use identical wording.

There are often several faithful ways to render the same mathematical statement.

The requirement is:

> **The wording may vary; the mathematical content must not.**

---

## Minimise repetition

Do not repeatedly expand a definition once the reader has demonstrated enough familiarity with it.

Early in a lesson, repetition may be necessary for comprehension.

Later in the same lesson, deliberately allow compression.

For example, move from:

$$
\exists m\in\mathbb N,;a=2m
$$

to:

> $a=2m$ for some natural number $m$.

The course should model how mathematical language becomes more concise as fluency develops.

Avoid both extremes:

* unexplained compression;
* exhausting repetition of material that has already been established.

---

## Define terminology when it first matters

Do not introduce a technical term without explaining it.

This includes apparently basic mathematical vocabulary such as:

* axiom;
* theorem;
* predicate;
* witness;
* conjunction;
* implication;
* closure;
* injective;
* surjective;
* kernel;
* quotient;
* exact sequence.

A definition need not become a long digression.

Often one precise sentence is enough.

More detailed explanations can go into an appendix.

---

## Name standard facts

When relying on a standard mathematical fact that has a conventional name, give the reader that name.

For example:

$$
m,n\in\mathbb N\Longrightarrow m+n\in\mathbb N
$$

is **closure of the natural numbers under addition**.

And

$$
2m+2n=2(m+n)
$$

is an instance of the **distributive law**.

Naming a fact gives the reader a handle by which to recognise, remember, and revisit it.

---

## Be explicit about what is being taken for granted

Proofs rely on previously established mathematics.

Do not pretend otherwise.

If a proof uses background facts without proving them, say so when this is pedagogically significant.

Explain simply that mathematics has to start somewhere: some statements are accepted as starting assumptions, called **axioms**, and further facts are proved from them.

However, do not descend into foundational mathematics unless it serves the lesson.

The practical rule is:

> **Be explicit about what we are taking as established, but only chase those facts back to their foundations when doing so helps with the mathematics currently under discussion.**

The course has ample time to explore foundations later.

Do not introduce intimidating machinery prematurely merely to make a philosophical aside technically exhaustive.

---

## Prove only what is required

Teach the reader to distinguish between what a statement requires and stronger facts that happen to be true.

For example,

$$
\exists k\in\mathbb N,;6=2k
$$

requires one witness.

Producing $k=3$ proves the existential statement.

It does not matter to that proof whether the witness is unique.

Uniqueness is another mathematical claim and would require another proof.

A recurring lesson should be:

> **Prove what the statement requires, and no more.**

---

## Main lesson vs appendix

Keep the main line of a lesson focused.

When notation or terminology deserves a deeper explanation but would interrupt the argument, move the detailed discussion into a lesson appendix.

The main lesson should contain:

* enough explanation to understand the statement;
* definitions needed immediately;
* new-symbol translations;
* spoken readings;
* the proof itself.

Appendices can contain:

* deeper grammatical explanations;
* alternative translations;
* notation conventions;
* predicate notation;
* expanded forms of restricted quantifiers;
* foundational comments;
* Lean syntax references.

The appendix is a reference, not required prerequisite reading for every paragraph.

---

## Mathematics should remain ambitious

Do not simplify the mathematical destination to suit the starting level.

The eventual course may include advanced algebra, topology, homological algebra, Lie groups, cohomology, and other sophisticated subjects.

When a difficult idea is genuinely the next required idea, teach it.

The concession to the reader is not:

> avoid advanced mathematics.

It is:

> explain advanced mathematics from a secure foundation.

Difficulty should come from the mathematics itself, not from omitted explanations.

---

# Lean

## Assume zero Lean knowledge

The reader has programming experience but should be treated as a complete beginner in Lean.

Programming analogies may be useful, but do not assume familiarity with:

* propositions as types;
* tactics;
* terms;
* dependent types;
* implicit arguments;
* typeclasses;
* theorem declarations;
* `Prop`;
* `rcases`;
* `use`;
* `intro`;
* `apply`;
* rewriting;
* simplification;
* Mathlib conventions.

Explain Lean syntax when it first appears.

For example:

```lean
n : ℕ
```

should initially be read as:

> `n` has type `ℕ`; in other words, `n` is a natural number.

And:

```lean
P : ℕ → Prop
```

should be explained before relying on it.

---

## Mathematics first, Lean second

The reader should understand the mathematical proof before being asked to understand the Lean proof.

Prefer:

1. understand the statement;
2. prove it on paper;
3. identify the logical structure;
4. reproduce that structure in Lean.

Lean should illuminate the mathematics rather than replace it.

---

## Keep Lean proofs structurally close to the mathematics

Prefer transparent Lean proofs that correspond visibly to the human proof.

For example, if the mathematical proof says:

> Since $a$ is even, obtain $m$ with $a=2m$.

then a Lean step such as:

```lean
rcases ha with ⟨m, hm⟩
```

is useful because the correspondence can be explained directly.

Avoid clever or highly compressed Lean when a longer proof better exposes the mathematical structure.

---

## Automation comes after the idea

Automation may be used for routine finishing work.

Clearly distinguish:

* the mathematical idea;
* the mechanical verification.

For example, in the proof of even + even = even:

```lean
use m + n
```

contains the important mathematical construction.

```lean
omega
```

checks the remaining arithmetic.

Do not let automation conceal the step the reader is meant to learn.

---

## Use programming familiarity carefully

The reader is familiar with programming, so analogies involving:

* functions;
* types;
* values;
* function application;
* data extraction;
* construction;

may be helpful.

But mathematical and Lean concepts should still be defined on their own terms.

Do not substitute a programming analogy for the mathematical definition.

---

# Lesson-writing style

Use clear, direct prose.

Prefer short sections with one conceptual job each.

Avoid:

* unexplained jargon;
* unnecessary formality;
* excessive motivational prose;
* repeated summaries of the same point;
* phrases such as “obviously”, “clearly”, “trivially”, or “it is easy to see” when a step has not yet been established;
* talking down to the reader;
* artificially childish examples or tone.

It is acceptable to say that something is elementary once the reason it is elementary is visible.

Be patient without being patronising.

---

## When revising a lesson

Before finalising a section, check:

1. Can every mathematical statement be read by the intended audience?
2. Has every new symbol been explained?
3. Has the complete statement been translated where necessary?
4. Is any new terminology undefined?
5. Has notation been introduced before it has earned its usefulness?
6. Are we repeating an expanded form that can now safely be compressed?
7. Are background facts being silently assumed where naming them would help?
8. Are we proving something stronger than the current argument needs?
9. Is an interesting aside threatening to derail the main mathematical idea?
10. Does the Lean proof reflect the human proof?
11. Is Lean syntax being assumed rather than taught?
12. Is the difficulty coming from the mathematics, or merely from the exposition?

If the answer to the last question is “the exposition”, rewrite it.

---

## Course mantra

When in doubt:

> **Understand the statement first.**

Then:

> **read → unpack → construct → verify.**
