# Contributing

This theme is maintained as shared team infrastructure. Changes should improve a reusable contract rather than encode one report's private content.

## Before opening a change

- Put public behavior behind `lib.typ`; do not ask consumers to import `src/engine.typ`.
- Keep organization logos, conference artwork, and unpublished figures out of this repository.
- Preserve both formal canvas profiles unless the change intentionally updates their contract.
- Add or update a smoke test and an example when public behavior changes.
- Write generated PDFs and PNGs only under ignored `build/`.

Run:

```sh
just check
just render
```

Inspect every rendered example page for overlap, clipping, unintended wrapping, and weak contrast. Public API changes require a changelog entry and an explicit migration note.
