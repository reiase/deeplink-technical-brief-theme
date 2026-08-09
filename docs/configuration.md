# Configuration reference / 配置参考

The public configuration is assembled with `brief.theme-config(...)`. Every constructor returns plain Typst data, so teams can define a base configuration and derive project-specific variants without importing implementation internals.

公开配置由 `brief.theme-config(...)` 组装。所有构造函数都返回普通 Typst 数据，团队可以先定义基础配置，再派生项目配置，而无需导入内部实现。

## Canvas / 画布

```typst
brief.canvas(width: 19.2cm, height: 10.8cm, profile: "auto")
```

- `profile: "auto"` selects `wide` when `width / height >= 2.25`, otherwise `standard`.
- `profile` may be forced to `"standard"` or `"wide"` for unusual display systems.
- `brief.standard-canvas` and `brief.wide-canvas` are splattable dictionaries for the two tested profiles.

## Palette / 配色

```typst
#let project-palette = brief.palette(
  navy: rgb("#07152B"),
  paper: rgb("#FBFCFE"),
  ink: rgb("#162033"),
  accents: (rgb("#2563EB"), rgb("#16A34A"), rgb("#B45309")),
)
```

`accents` must contain at least one color. Page chrome uses the configured palette; semantic component colors are available from `brief.colors` and can be supplied explicitly.

## Typography / 字体

```typst
#let type = brief.typography(
  body-fonts: ("Source Han Sans SC", "Noto Sans CJK SC"),
  code-fonts: ("JetBrains Mono",),
  body-size: 9.2pt,
  slide-title-size: 20pt,
  deck-title-size: 30pt,
)
```

Use static font files in CI and production exports. Variable Source Han font collections currently produce a Typst warning and can render incorrectly.

## Brand slots / 品牌槽位

`brief.brand(...)` accepts content for `title-background`, `section-background`, `content-background`, `title-mark`, `header-mark`, and `footer-left`. Optional fill and foreground colors can override the palette on title or section slides.

The theme deliberately accepts rendered content, not a path string. Typst therefore resolves private image paths relative to the consuming deck, and the public repository stays brand-neutral.

```typst
#let event-brand = brief.brand(
  title-background: image("figures/event/title-bg.png", width: 100%, height: 100%, fit: "cover"),
  title-mark: image("figures/event/logo.svg", width: 2.6cm),
  header-mark: image("figures/event/logo.svg", width: 1.5cm),
  header-reserve: 2.0cm,
)
```

## Metadata / 元信息

`brief.metadata(...)` defines `title`, `subtitle`, `author`, `institution`, and `date`. A title slide reads these values automatically. Any field may still be overridden on `brief.title-slide(...)`.

## Optional attractor / 可选 Attractor

```typst
#import "themes/technical-brief/extensions/attractor.typ"

#let config = brief.theme-config(
  background: attractor.provider(mode: "cached"),
)
```

- `off`: no attractor and no background cost; this is the default.
- `cached`: cycle through packaged deterministic SVG phases; recommended for authoring and ordinary exports.
- `compute`: integrate the attractor during compilation; intended for regenerating or experimenting, not routine editing.

The extension also accepts `splines`, `content-splines`, `warmup`, `tail-length`, `stride`, `step-stride`, and `step-offset`.
