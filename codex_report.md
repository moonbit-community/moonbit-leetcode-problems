# Dependency Check Report

Repository: moonbit-leetcode-problems

`moon check` fails because packages in this repository reference `@immut/list`, but MoonBit cannot load a package named `immut/list`.

Representative errors:

- `src/0019-remove-nth-node-from-end-of-list/solve.mbt`: `Package "immut/list" not found in the loaded packages.`
- `src/0021-merge-two-sorted-lists/solve.mbt`: `Package "immut/list" not found in the loaded packages.`
- `src/0023-merge-k-sorted-lists/solve.mbt`: `Package "immut/list" not found in the loaded packages.`
- `src/0024-swap-nodes-in-pairs/solve.mbt`: `Package "immut/list" not found in the loaded packages.`
- `src/0025-reverse-nodes-in-k-group/solve.mbt`: `Package "immut/list" not found in the loaded packages.`

Dependency update attempts:

```bash
moon add immut/list
moon add moonbitlang/immut/list
```

Both failed with:

```text
Could not find the latest published version ... in the registry
```

The current MoonBit core installation contains `moonbitlang/core/list` exposed as `@list`, but not the old `@immut/list` package path. This needs a dependency/package-path decision before continuing: either restore the dependency that provided `immut/list`, or migrate the affected packages from `@immut/list` to the current `@list` API.
