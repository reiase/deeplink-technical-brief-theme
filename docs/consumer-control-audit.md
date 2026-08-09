# Consumer control audit / 消费者控件审计

This audit compares the public theme API with the Typst decks under `deeplink.fabric/projects/`. The review covered the Agent Infra, DeepLink Fabric, DeepLink.Next, and Probing project families, including historical deck revisions where local helpers first appeared.

本审计把主题公共 API 与 `deeplink.fabric/projects/` 下的真实汇报进行差集比较，覆盖 Agent Infra、DeepLink Fabric、DeepLink.Next 与 Probing，并回看了局部控件首次出现的历史版本。

## Already absorbed / 已吸收

The following local helpers already have public equivalents and should not create new aliases:

`phase-card`, `badge-card`, `tint-cell`, `formula-card`, `stage-item`, `banner-strip`, `claim-block`, `admonition`, `compare-matrix`, `matrix-legend`, `causal-chain`, and `data-table`.

## Promoted in the public API / 本轮纳入公共 API

| Consumer pattern / 消费者模式 | Evidence / 使用证据 | Public API / 公共 API |
|---|---|---|
| `flat-card` with an inset rail and fixed height | Agent Infra | `flat-card` |
| Repeated edge-rail cards with variable content | Agent Infra; DeepLink.Next | `rail-card` |
| `plain-band` | Agent Infra references | `label-band` |
| `source-line` and small methodology footers | Agent Infra; Probing | `source-note` |
| `section-chip` | DeepLink Fabric v5 | `section-chip` |
| `flow-card` | DeepLink Fabric v4-v6 | `flow-card` |
| `grade`, `tech-chip`, `radar-leg` | DeepLink Fabric v6 | `chip`, `legend-item` |
| `topo-row` | DeepLink Fabric v6 | `comparison-list`, `comparison-row` |
| `wl-card`, `topo-card`, `pose-card`, `fabric-panel`, `topo-spec` | DeepLink Fabric v6 | `media-card`, `spec-row` |
| Stacked architecture bands | Agent Infra guide | `layer-stack`, `layer` |
| `tau-rung` | DeepLink Fabric v6 | `ladder`, `ladder-step` |
| `supply-card` | DeepLink Fabric v6 | `reference-card` |

Several local implementations also required fixed-height composition or projection-specific type sizes. Those needs are handled by new optional parameters on existing components instead of parallel component names.

## Intentionally consumer-owned / 继续留在消费者仓库

- Event and organization marks, WAIC backgrounds, and header reservations.
- Project-specific SVG diagrams and topology illustrations.
- One-off compositions whose meaning depends on a named product or conference story.
- External rendering integrations such as `cmarker`.

The promotion rule is semantic reuse: a pattern should appear across projects or solve a stable presentation relationship, and it must be expressible through generic content slots without private assets.

纳入规则以语义复用为准：版式应跨项目重复出现，或解决稳定的表达关系；公共实现必须只依赖通用内容槽位，不能携带私有资产。
