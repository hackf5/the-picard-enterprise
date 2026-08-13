# Mathematical development principles

- Do not invent mathematical definitions or formulas.
- Treat the literature and existing implementations as authoritative inputs.
- Reproduce known results before extending them.
- Keep arithmetic exact by default where practical.
- Numerical and floating-point methods are acceptable in explorer and discovery code.
- Keep discovery and certification conceptually separate.
- Do not prematurely optimise.
- Do not prematurely generalise.
- Prefer readable, straightforward functions over abstraction-heavy architecture.
- Add tests around known mathematical invariants as they become available.
- Never silently replace an exact computation with a floating-point approximation.
- Avoid notebooks for core implementation. Use notebooks for exploration, visualisation, and
  reproducing papers.
- Keep field-specific data separate from generic geometric and combinatorial algorithms so that
  \(d=11\) and later cases can reuse the machinery.
