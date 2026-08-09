# DeepLink Technical Brief Theme

A reusable Typst/Touying system for engineering reports and technical presentations. It keeps slide structure, canvas geometry, typography, brand slots, and optional backgrounds behind one explicit configuration object.

[中文文档](docs/README.zh-CN.md) · [Configuration](docs/configuration.md) · [Migration guide](docs/migration.md)

## What is stable in v0.1.0

- One namespaced public API from `lib.typ`; implementation symbols stay private.
- Arbitrary positive canvas dimensions, with formal profiles for `19.2 cm × 10.8 cm` and `30 cm × 10 cm`.
- Automatic profile selection at aspect ratio `2.25`.
- Dark title and section slides, light content slides, and larger presentation typography.
- Consumer-owned brand assets supplied as Typst content slots—no private marks in this repository.
- An optional attractor extension with `off`, `cached`, and `compute` modes. It is off by default.

## Quick start

Add this repository as a pinned submodule in your report repository:

```sh
git submodule add https://github.com/reiase/deeplink-technical-brief-theme.git themes/technical-brief
git -C themes/technical-brief checkout v0.1.0
```

Then author a deck through the namespace:

```typst
#import "themes/technical-brief/lib.typ" as brief

#let config = brief.theme-config()
#let info = brief.metadata(
  title: [My Technical Brief],
  subtitle: [A concrete engineering decision],
  author: [Platform Team],
  institution: [Example Organization],
)

#show: brief.theme.with(config: config, metadata: info)

#brief.title-slide()

#brief.content-slide(
  [Decision summary],
  takeaway: [Make the conclusion visible before the detail.],
)[
  #brief.columns(
    (1fr, 1fr),
    brief.card([Context])[What changed and why it matters.],
    brief.card([Decision])[What the team will do next.],
  )
]
```

See [`examples/standard.typ`](examples/standard.typ) and [`examples/wide.typ`](examples/wide.typ) for complete decks.

## Brand assets stay with the consumer

Brand slots accept content rather than file paths, so private logos and event artwork never need to enter this public repository:

```typst
#let team-brand = brief.brand(
  title-mark: image("assets/team-mark.svg", width: 2.4cm),
  header-mark: image("assets/team-mark.svg", width: 1.5cm),
  header-reserve: 2cm,
)

#let config = brief.theme-config(brand: team-brand)
```

## Fonts

The default open font stack is Source Han Sans SC with Noto Sans CJK SC as an open fallback, plus JetBrains Mono for code. Install the static Source Han Sans SC family for the intended result. A platform font fallback is included for local macOS previews.

## Development

Typst `0.14.2` and Touying `0.7.3` are the tested baseline.

```sh
just check
just render
```

Generated PDF and PNG artifacts are written under ignored `build/`. The repository is MIT licensed. Typst Universe publication is intentionally out of scope for v0.1.0.
