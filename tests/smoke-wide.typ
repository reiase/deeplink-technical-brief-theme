#import "../lib.typ" as brief

#let surface = brief.canvas(..brief.wide-canvas)
#assert(surface.width == 30cm and surface.height == 10cm and surface.profile == "wide")

#show: brief.theme.with(
  config: brief.theme-config(canvas: brief.canvas(..brief.wide-canvas)),
  metadata: brief.metadata(title: [Wide smoke test]),
)

#brief.title-slide()
#brief.content-slide([Content])[#brief.card([OK])[Wide profile compiles.]]
