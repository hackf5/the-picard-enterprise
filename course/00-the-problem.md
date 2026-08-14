---
jupytext:
  formats: md:myst,ipynb
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.19.5
kernelspec:
  display_name: SageMath 10.9
  language: sage
  name: sagemath
---

# Lesson 00 — What are we trying to compute?

The Picard Enterprise begins with a geometric compression problem.

There is a space with many symmetries. We want one concrete region that records the whole space
once those symmetries are treated as equivalences. We then want to turn that region and its glued
boundary into finite combinatorial data that a computer can check.

This lesson gives the destination. It deliberately postpones the machinery.

## 1. A smaller compression problem

Imagine the real number line, tiled by copies of the interval from $0$ to $1$. Moving any integer
distance does not change where a point sits within a tile. For example,

$$
\frac15,\qquad \frac65,\qquad -\frac45
$$

all occupy the same position in three different tiles.

The integers $\mathbb Z$ **act** on the real numbers $\mathbb R$ by translation:

$$
x \longmapsto x+n, \qquad n\in\mathbb Z.
$$

Here:

- $x$ is a real number;
- $n$ is an integer;
- $\in$ means “is an element of”;
- $\mathbb Z$ denotes the set of integers; and
- $\longmapsto$ says that the point on its left is sent to the point on its right.

Read the display as:

> The integer $n$ sends the real number $x$ to the real number $x+n$.

All points obtainable from $x$ by these translations form the **orbit** of $x$. If we regard each
orbit as a single point, we obtain the quotient

$$
\mathbb R/\mathbb Z.
$$

The slash means “after identifying points related by the action.” This quotient can be pictured as
a circle: use the interval $[0,1]$, then identify its two endpoints by the translation $x\mapsto
x+1$. The half-open interval $[0,1)$ instead chooses exactly one representative of every orbit.
Later lessons will make “action,” “orbit,” and “quotient” precise.

## 2. Experiment — choose orbit representatives exactly

**Predict.** The first three numbers below should have the same representative in $[0,1)$. The
last number should have a different representative. Which ones?

In the code, `QQ` constructs exact rational numbers and `floor(x)` returns the greatest integer
less than or equal to $x$.

```{code-cell} ipython3
from sage.all import QQ, floor


def representative_mod_integers(x):
    """Return the representative in [0, 1) of a rational number modulo integer translation."""
    exact_x = QQ(x)
    return exact_x - floor(exact_x)


points = {
    "a": QQ(1) / 5,
    "b": QQ(6) / 5,
    "c": QQ(-4) / 5,
    "d": QQ(7) / 5,
}
representatives = {name: representative_mod_integers(point) for name, point in points.items()}
representatives
```

Sage computes with exact rational numbers here. Check the prediction rather than trusting a
decimal approximation:

```{code-cell} ipython3
assert representatives["a"] == representatives["b"] == representatives["c"] == QQ(1) / 5
assert representatives["d"] == QQ(2) / 5

left_endpoint = QQ(0)
right_endpoint = QQ(1)
assert right_endpoint == left_endpoint + 1

"The three orbit representatives and the endpoint identification are exact."
```

The interval is not merely a smaller picture. Its boundary carries an instruction: glue $0$ to
$1$ using a specified group element. Region plus boundary identifications reconstructs the
quotient.

## 3. The Picard modular version

Replace the number line by **complex hyperbolic two-space**, written

$$
H^2_{\mathbb C}.
$$

For now, this symbol is a name:

- $H$ names a hyperbolic space;
- the superscript $2$ says that its complex dimension is two; and
- the subscript $\mathbb C$ says that its coordinates and geometry are complex rather than real.

We will construct this space later. No knowledge of its geometry is needed yet.

Replace integer translations by the Picard modular group

$$
\Gamma_7 = PU(2,1;\mathcal O_7).
$$

The Greek letter $\Gamma$ is read “Gamma.” The subscript $7$ records the imaginary quadratic
arithmetic used to define this particular group. The expression on the right will be unpacked only
after we have learned the required linear algebra and number theory.

The group $\Gamma_7$ acts on $H^2_{\mathbb C}$. If $x$ and $y$ are points of the space, we declare
them equivalent when

$$
x\sim y
\quad\Longleftrightarrow\quad
\exists\gamma\in\Gamma_7\text{ such that }y=\gamma\cdot x.
$$

New notation:

- $\sim$ means “is equivalent to”;
- $\Longleftrightarrow$ means “if and only if”;
- $\exists$ means “there exists”;
- $\gamma$ is the group element being claimed to exist; and
- $\gamma\cdot x$ means the result of letting $\gamma$ act on $x$.

Read the full statement as:

> The points $x$ and $y$ are equivalent if and only if there exists an element $\gamma$ of
> $\Gamma_7$ such that acting on $x$ by $\gamma$ gives $y$.

The quotient

$$
H^2_{\mathbb C}/\Gamma_7
$$

is the space whose points are these equivalence classes, or orbits. Some papers put the group on
the left when they write a quotient by a left action; we will always say explicitly which action
and equivalence relation we mean.

The word **discrete** in “discrete group” is what makes a tiled-region picture plausible: the
symmetries occur as separate transformations rather than as a continuous family. A later lesson
will state the precise definition.

## 4. What an explicit fundamental domain gives us

A **fundamental domain** is a concrete region $F$ in $H^2_{\mathbb C}$ chosen so that:

1. every orbit has a representative in $F$;
2. a typical point away from the boundary is represented once; and
3. repeated representatives on boundary pieces are identified by known elements of $\Gamma_7$.

This is an intuitive working description, not yet the final technical definition. As the interval
example warned us, the boundary identifications are essential data.

If the region, its boundary pieces, and their pairings have a finite explicit description, we can
record vertices, edges, higher-dimensional cells, incidences, group pairings, and stabilisers. The
geometry has then become finite combinatorial data. Boundary operators turn that data into integer
matrices, and exact linear algebra on those matrices can ultimately compute cohomology.

The course journey is therefore:

$$
\text{space and group action}
\longrightarrow
\text{explicit domain with boundary pairings}
\longrightarrow
\text{equivariant cell complex}
\longrightarrow
\text{cohomology}.
$$

Here **cohomology** names algebraic invariants that record how local pieces assemble globally. We
do not need its definition yet. The important point is that an explicit geometric quotient can be
converted into a finite exact computation.

## 5. What comes later

We still have to learn why $H^2_{\mathbb C}$ exists, what the symbols in $PU(2,1;\mathcal O_7)$
mean, how a cusp is handled, how finitely many boundary pieces are found, and how cell data becomes
cohomology. Those are later lessons, introduced first through smaller models.

Published mathematics and upstream implementations will supply the nontrivial formulas and known
$\Gamma_7$ data. Numerical pictures may help discover candidates; exact arithmetic and explicit
incidence data must certify the final result.

## Checkpoint

Before continuing, try to answer these without looking back:

1. In the model $\mathbb R/\mathbb Z$, why do $1/5$ and $6/5$ represent the same point?
2. Read the statement $x\sim y\Longleftrightarrow\exists\gamma\in\Gamma_7$ such that
   $y=\gamma\cdot x$ aloud.
3. Why is a region without its boundary identifications insufficient?
4. What concrete information do we hope to extract from an explicit fundamental domain?
5. Complete the research route: group action $\to$ explicit domain $\to$ ______ $\to$
   cohomology.

For one final executable check, predict the representative of $23/7$ in $[0,1)$, change `d` in
the experiment, and recompute it.
