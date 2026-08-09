# Component reference / 组件参考

The two formal examples are a page-for-page comparison of the same catalog:

- [`examples/standard.typ`](../examples/standard.typ): 19.2 cm × 10.8 cm (`standard` profile)
- [`examples/wide.typ`](../examples/wide.typ): 30 cm × 10 cm (`wide` profile)
- [`examples/component-catalog.typ`](../examples/component-catalog.typ): shared slide content

两个正式示例逐页使用同一份组件目录，分别验证 19.2 cm × 10.8 cm 标准画布与 30 cm × 10 cm 超宽画布。新增或修改公开组件时，只需在共享目录中维护一次，两种配置会同时接受编译和视觉检查。

## Slide skeletons / 页面骨架

| API | Purpose / 用途 |
|---|---|
| `title-slide`, `section-slide`, `content-slide` | Deck hierarchy and stable title/lead/body/takeaway regions / 汇报层级与稳定内容区域 |
| `columns`, `rows`, `equal-columns` | Horizontal, vertical, and equal-height composition / 横向、纵向和等高组合 |
| `stack`, `vertical-center`, `render` | Local flow, optical centering, and normalized rendering / 局部流、光学居中与统一渲染 |

## Information components / 信息组件

| Family / 家族 | Public API |
|---|---|
| Cards / 卡片 | `card`, `vertical-card`, `card-grid`, `kpi`, `kpi-row` |
| Explanatory blocks / 解释块 | `intro`, `info-panel`, `callout`, `bullets`, `bullet-row` |
| Evidence / 证据 | `image-card`, `evidence-card`, `data-table` |
| Compact semantics / 紧凑语义 | `phase-card`, `badge-card`, `formula-card`, `tint-cell` |
| Flow and lists / 流程与列表 | `flow-node`, `flow-arrow`, `process-flow`, `ribbon-row`, `ribbon-list` |
| Risk and progress / 风险与推进 | `loss-card`, `loss-grid`, `stage-item`, `step-hint` |
| Emphasis / 强调 | `banner`, `closing-banner`, `brand-rule`, `ending-strip` |

## Argument structures / 论证结构

| Relationship / 关系 | Component / 组件 | Builder / 参数构造器 |
|---|---|---|
| Before–after / 前后转折 | `contrast` | left/right dictionaries |
| Two-axis classification / 两轴分类 | `quadrant` | quadrant dictionaries |
| Causality / 因果 | `causal-chain` | `chain-step` |
| Stages / 阶段 | `phase-track` | `phase` |
| One framework, many facets / 一体多面 | `framework` | `facet` |
| Statement role / 命题角色 | `claim` | `kind` |
| Cognitive status / 认知状态 | `notice` | `kind` |
| Benefits and costs / 收益与代价 | `tradeoff` | gains/costs arrays |
| Conclusion and support / 结论与支撑 | `pyramid` | `facet` |
| Criteria comparison / 判据比较 | `compare-matrix` | `matrix-row`, `matrix-legend` |
| Degree / 程度 | `rating-list` | `rating` |
| Roadmap / 路线图 | `timeline` | `milestone` |

Run `just check` to compile both PDFs and all smoke tests. Run `just render` to render every page of both profiles for visual review.

运行 `just check` 编译两份完整示例和全部冒烟测试；运行 `just render` 输出两种画布的所有页面用于视觉审阅。
