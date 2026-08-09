# DeepLink Technical Brief Theme

这是一个面向工程汇报与技术说明的 Typst/Touying 主题。画布、字体、配色、品牌槽位与可选背景统一由一个配置对象管理；汇报正文只通过 `lib.typ` 暴露的命名空间 API 编写。

[English README](../README.md) · [配置参考](configuration.md) · [组件参考](components.md) · [消费者控件审计](consumer-control-audit.md) · [迁移指南](migration.md)

## v0.1.0 的稳定边界

- 只从 `lib.typ` 暴露一套命名空间 API，内部实现不进入使用方的全局作用域。
- 支持任意正数宽高；正式测试 `19.2 cm × 10.8 cm` 与 `30 cm × 10 cm` 两种画布。
- 宽高比达到 `2.25` 时自动切换到超宽布局。
- 默认采用深色标题/章节页、浅色内容页，并提高正文和标题字号。
- Logo、活动背景等资产由使用仓库以 Typst 内容槽位传入，公开仓库不包含私有品牌素材。
- Attractor 是可选扩展，支持 `off`、`cached`、`compute`，默认关闭。

## 快速开始

建议把主题作为锁定版本的 Git submodule 引入：

```sh
git submodule add https://github.com/reiase/deeplink-technical-brief-theme.git themes/technical-brief
git -C themes/technical-brief checkout v0.1.0
```

```typst
#import "themes/technical-brief/lib.typ" as brief

#let config = brief.theme-config()
#let info = brief.metadata(
  title: [技术汇报标题],
  subtitle: [一句话说明本次汇报要解决的问题],
  author: [平台团队],
  institution: [示例组织],
)

#show: brief.theme.with(config: config, metadata: info)

#brief.title-slide()

#brief.section-slide(
  [系统架构],
  label: [第一部分],
  summary: [章节页只保留一句用于建立阅读框架的说明。],
  tags: [运行时 · 存储 · 控制面],
)

#brief.content-slide(
  [结论先行],
  takeaway: [先让读者看到结论，再展开技术细节。],
)[
  #brief.columns(
    (1fr, 1fr),
    brief.card([背景])[发生了什么，以及为什么重要。],
    brief.card([决策])[团队接下来要做什么。],
  )
]
```

[`examples/standard.typ`](../examples/standard.typ) 与 [`examples/wide.typ`](../examples/wide.typ) 会在两种正式画布上逐页渲染同一套完整组件目录。两者共享 [`examples/component-catalog.typ`](../examples/component-catalog.typ)，当前覆盖全部 75 个公开演示组件 API，保证 API 演进时两种画布的对照不会漂移。

## 团队使用约定

1. 业务仓库只导入 `lib.typ`，不直接依赖 `src/engine.typ`。
2. 品牌图片与活动素材留在业务仓库，通过 `brief.brand(...)` 传入。
3. submodule 只升级到明确的 release tag；升级时单独提交主题指针和迁移修改。
4. PDF/PNG 产物统一写入 `build/`，不提交生成文件。
5. 新组件优先放入公开主题；只含业务语义或私有素材的组件留在使用仓库。

## 字体

默认开放字体为 Source Han Sans SC，开放回退为 Noto Sans CJK SC，代码字体为 JetBrains Mono。为了得到稳定结果，建议安装 Source Han Sans SC 的静态字重版本。macOS 本地预览另设系统字体回退。

开发基线为 Typst `0.14.2`、Touying `0.7.3`。运行 `just check` 做编译验证，运行 `just render` 生成本地 QA 图片。v0.1.0 暂不发布到 Typst Universe。
