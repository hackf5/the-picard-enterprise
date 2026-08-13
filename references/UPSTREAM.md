# UPSTREAM

```bash
git clone \
  https://github.com/alice-mark/LatticePresentations.git \
  references/upstream/lattice-presentations

Cloning into 'references/upstream/lattice-presentations'...
remote: Enumerating objects: 146, done.
remote: Total 146 (delta 0), reused 0 (delta 0), pack-reused 146 (from 1)
Receiving objects: 100% (146/146), 57.22 MiB | 18.35 MiB/s, done.
Resolving deltas: 100% (86/86), done.

git clone \
  https://plmlab.math.cnrs.fr/deraux/pic-mod.git \
  references/upstream/pic-mod

Cloning into 'references/upstream/pic-mod'...
remote: Enumerating objects: 457, done.
remote: Total 457 (delta 0), reused 0 (delta 0), pack-reused 457 (from 1)
Receiving objects: 100% (457/457), 22.98 MiB | 14.17 MiB/s, done.
Resolving deltas: 100% (204/204), done.

git -C references/upstream/lattice-presentations rev-parse HEAD
b3e23241940f2f79da281463e09a0ed10320b21b

git -C references/upstream/pic-mod rev-parse HEAD
dd94cb089ed2de1fcd30a4261b833a8f1b8b4f4f
```
