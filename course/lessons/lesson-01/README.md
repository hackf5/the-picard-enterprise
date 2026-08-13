# Lesson 1 materials

Start here:

1. `lesson-01-notebook.md` — the lesson itself.
2. `lesson-01-exercises.md` — written and Lean exercises.
3. `Lesson01Exercises.lean` — Lean starter file with holes.
4. `Lesson01Solutions.lean` — solutions; leave this closed until you have tried the exercises.

## Lean setup

The Lean files use Lean 4 with Mathlib and begin with:

```lean
import Mathlib
```

The proofs intentionally use only a tiny amount of Lean syntax. The one arithmetic automation tactic used in the model solutions is `omega`.

The lesson defines `Even` and `Odd` locally rather than using library parity definitions. This is deliberate: the point is to expose the logical structure of the definitions and proofs.

## Course rule established in Lesson 1

For every important theorem we will try to keep three versions aligned:

1. the idea in ordinary English;
2. the conventional mathematical proof;
3. the Lean proof.

If the Lean proof becomes cleverer than the mathematics, we will usually rewrite it.
