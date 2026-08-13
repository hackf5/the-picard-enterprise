"""Checks for the project runtime and its exact-arithmetic foundation."""

from pathlib import Path

import pytest


def test_environment(tmp_path: Path, monkeypatch: pytest.MonkeyPatch) -> None:
    """The package and Sage exact arithmetic are available together."""
    try:
        import picard_enterprise
    except ImportError:
        pytest.fail(
            "The picard_enterprise package is unavailable. Run `pixi install --locked` "
            "and execute tests with `pixi run test`.",
            pytrace=False,
        )

    assert picard_enterprise.__name__ == "picard_enterprise"

    monkeypatch.setenv("DOT_SAGE", str(tmp_path / "sage"))

    try:
        from sage.all import QuadraticField
    except ImportError:
        pytest.fail(
            "SageMath is unavailable. Install the locked environment with "
            "`pixi install --locked` and execute tests with `pixi run test`; do not run "
            "pytest with the system Python.",
            pytrace=False,
        )

    field = QuadraticField(-7, "sqrt_minus_seven")
    sqrt_minus_seven = field.gen()

    assert sqrt_minus_seven**2 == field(-7)
    assert (sqrt_minus_seven + 1) * (sqrt_minus_seven - 1) == field(-8)
