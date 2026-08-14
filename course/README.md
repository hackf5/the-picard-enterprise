# Getting Up to Speed

This is an executable mathematics course for understanding the explicit fundamental-domain and
cohomology problem for
$\Gamma_7 = PU(2,1;\mathcal O_7)$. It is for a technically strong programmer whose graduate
mathematics is rusty. Topics are included only when they support that research destination.

## Course index

| Lesson | Purpose | Prerequisites | Status |
| --- | --- | --- | --- |
| [00 — The problem](00-the-problem.md) | See the full route from a group action to cohomology. | None | Ready for review |

The next lessons will develop groups and actions before quotients and fundamental domains. Later
linear-algebra, geometry, and arithmetic strands will meet at the explicit study of $\Gamma_7$.
Numbering may change when a prerequisite needs to be inserted.

The earlier material under `course/lessons/lesson-01/` is retained unchanged, but it is not yet
part of this focused sequence.

## Authoring and running lessons

[MyST Markdown](https://mystmd.org/) is the canonical authored form. Each real lesson has a paired
Jupyter notebook with the same basename. MyST keeps exposition and LaTeX readable in source
control, while explicit `{code-cell}` blocks round-trip cleanly through Jupytext. No MyST site
builder is required.

Install the locked environment and launch Lesson 00 with:

```bash
pixi install --locked
pixi run course-sync course/00-the-problem.md
pixi run course-lab course/00-the-problem.ipynb
```

After editing one lesson's `.md` source, update and verify only its pair:

```bash
pixi run course-sync course/00-the-problem.md
pixi run course-check course/00-the-problem.md
pixi run course-execute course/00-the-problem.ipynb
```

`course-execute` writes cell results into the notebook and fails when a cell raises an exception.
Edit the `.md`, not raw notebook JSON. The reusable [`_lesson-template.md`](_lesson-template.md)
contains the minimal lesson structure and a working exact Sage experiment.

## Current progress

The incremental authoring workflow and template are in place. Lesson 00 is the only lesson in the
new sequence and is awaiting review.
