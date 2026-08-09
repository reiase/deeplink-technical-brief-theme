#import "../lib.typ" as brief

#let surface = brief.canvas(..brief.standard-canvas)
#assert(surface.width == 19.2cm and surface.height == 10.8cm and surface.profile == "standard")

#show: brief.theme.with(
  config: brief.theme-config(),
  metadata: brief.metadata(title: [Smoke test]),
)

#brief.title-slide()
#brief.content-slide([Content])[#brief.card([OK])[Standard profile compiles.]]
