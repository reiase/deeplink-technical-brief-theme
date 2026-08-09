# Migration guide / 迁移指南

This repository intentionally provides one new namespaced API. It does not export the former global `technical-brief-theme`, `layout-slide`, `cols`, or private attractor functions.

本仓库只提供一套新的命名空间 API，不导出旧版全局 `technical-brief-theme`、`layout-slide`、`cols` 或私有 Attractor 函数。

## Repository migration

1. Add this repository under `themes/technical-brief` as a Git submodule.
2. Pin the submodule to a release tag, never an arbitrary moving branch.
3. Replace the old global import with `#import "themes/technical-brief/lib.typ" as brief`.
4. Create one `brief.theme-config(...)` and one `brief.metadata(...)` near the top of each deck.
5. Replace the old show rule with `#show: brief.theme.with(config: config, metadata: info)`.
6. Convert explicit pages to `brief.title-slide`, `brief.section-slide`, and `brief.content-slide`.
7. Prefix semantic components with `brief.` and use the normalized names below.
8. Keep organization/event assets in the consumer repository and wire them through `brief.brand(...)`.
9. Compile and visually inspect every page before removing the old local theme files.

## Common symbol mapping

| Former symbol | v0.1 API |
| --- | --- |
| `technical-brief-theme` | `brief.theme` + `brief.theme-config` |
| `title-slide` | `brief.title-slide` |
| `section-divider` | `brief.section-slide` |
| `layout-slide` | `brief.content-slide` |
| `cols` / `equal-cols` | `brief.columns` / `brief.equal-columns` |
| `vstack` / `vcenter` | `brief.stack` / `brief.vertical-center` |
| `banner-strip` | `brief.banner` |
| `contrast-pair` | `brief.contrast` |
| `claim-block` | `brief.claim` |
| `framework-triad` | `brief.framework` |
| `admonition` | `brief.notice` |
| `mrow` | `brief.matrix-row` |
| `cstep` | `brief.chain-step` |
| `tradeoff-ledger` | `brief.tradeoff` |
| `pyramid-claim` | `brief.pyramid` |
| `mlevel` | `brief.rating` |

Names that were already semantic (`card`, `kpi`, `timeline`, `quadrant`, `phase-track`, `data-table`, and similar) remain available under the `brief.` namespace.

## Release upgrades

Upgrade the theme pointer only to a reviewed release tag:

```sh
git -C themes/technical-brief fetch --tags
git -C themes/technical-brief checkout v0.2.0
git add themes/technical-brief
```

Keep the pointer update and required deck migrations in one reviewable change. Re-run all deck compiles and visual QA before merging.
