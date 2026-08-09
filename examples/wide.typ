#import "../lib.typ" as brief
#import "../extensions/attractor.typ" as attractor
#import "component-catalog.typ": component-catalog

#let config = brief.theme-config(
  canvas: brief.canvas(..brief.wide-canvas),
  palette: brief.palette(accents: brief.palettes.semantic),
  typography: brief.typography(),
  brand: brief.brand(),
  background: attractor.provider(mode: "cached"),
)
#let info = brief.metadata(
  title: [Technical Brief Component Reference],
  subtitle: [Ultra-wide 3:1 · complete component catalog],
  author: [DeepLink Community],
  institution: [Open technical communication · examples/wide.typ],
  date: datetime(year: 2026, month: 8, day: 9),
)

#show: brief.theme.with(config: config, metadata: info)

#component-catalog(
  profile-name: [Ultra-wide 3:1],
  canvas-label: [30 cm × 10 cm],
  sample-image: "/assets/attractor/wide/dark-1.svg",
)
