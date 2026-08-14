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

# Lesson NN — Title

## Why this earns a place

State the concrete obstacle this idea removes on the route to an explicit fundamental domain or
cohomology computation for $\Gamma_7$.

By the end of the lesson, the reader should be able to:

- read one important symbolic statement aloud;
- work through one small example by hand; and
- use an exact Sage experiment to check the example.

## Begin with a concrete question

Pose the smallest useful problem before introducing terminology. For example, how can we verify
exactly that $6$ is twice an integer?

Only then introduce notation such as

$$
6 = 2k.
$$

Explain every new symbol and read the statement in ordinary English.

## Experiment — predict, compute, inspect

**Predict.** Which integer should replace $k$?

```{code-cell} ipython3
from sage.all import ZZ

k = ZZ(3)
value = 2 * k
assert value == 6
value
```

**Inspect.** Sage returned an exact integer, not a floating-point approximation. Explain what the
result teaches about the mathematical idea, not merely what the code does.

## What changes when an assumption changes?

Name one tempting variation and say which part of the definition, example, or conclusion fails.

## Connection to Picard Enterprise

Close the loop explicitly: say where this concept will reappear in the $\Gamma_7$ computation.

## Checkpoint

Before continuing, the reader should be able to:

1. read the displayed statement aloud;
2. predict and explain the experiment's result; and
3. give the one-sentence connection to the research pipeline.
