# The Picard Enterprise

The Picard Enterprise is a research and computational mathematics project for explicit
fundamental domains of Picard modular groups
$\Gamma_d = PU(2,1;\mathcal O_d)$, beginning with $d=7$.

The project aims to:

1. reproduce published computations for $\Gamma_7$;
2. enumerate Ford-domain data inside a cusp fundamental prism;
3. determine its explicit combinatorial structure;
4. construct a certified equivariant cell complex;
5. compute quotient and group cohomology; and
6. generalise the machinery to $\Gamma_{11}$, $\Gamma_{19}$, and later cases.

Numerical computation is welcome for discovery. Final mathematical results should be
reproducible from exact or certified data.

## Development

### Python and SageMath

[Install Pixi](https://pixi.prefix.dev/latest/installation/) if it is not already available:

```bash
curl -fsSL https://pixi.sh/install.sh | sh
```

Install the locked Python 3.13 and SageMath environment, then run the checks:

```bash
pixi install --locked
pixi run test
pixi run lint
pixi run format-check
pixi run typecheck
```

SageMath is supplied by conda-forge and recorded in `pixi.lock`; do not separately install
`sagemath-standard`. The initial lock targets 64-bit Linux.

### Lean and mathlib

[Install elan](https://lean-lang.org/install/) if it is not already available:

```bash
curl https://elan.lean-lang.org/elan-init.sh -sSf | sh -s -- -y --default-toolchain none
source "$HOME/.elan/env"
```

The repository pins matching Lean and mathlib releases. Download mathlib's compiled cache and
build the Lean library:

```bash
lake exe cache get
lake build
```

Lean dependencies are resolved in `lake-manifest.json`. Run `lake update` only when intentionally
upgrading them, and commit the updated manifest together with the version change.
