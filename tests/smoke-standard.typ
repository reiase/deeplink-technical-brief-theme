#import "../lib.typ" as brief

#let surface = brief.canvas(..brief.standard-canvas)
#assert(surface.width == 19.2cm and surface.height == 10.8cm and surface.profile == "standard")

#show: brief.theme.with(
  config: brief.theme-config(),
  metadata: brief.metadata(title: [Smoke test]),
)

#brief.title-slide()
#brief.content-slide([Content])[#brief.card([OK])[Standard profile compiles.]]
#brief.content-slide([Card grid], takeaway: [Every card remains one grid cell.])[
  #brief.card-grid(
    (1fr, 1fr),
    brief.card([One])[First cell.],
    brief.card([Two])[Second cell.],
    brief.card([Three])[Third cell.],
    brief.card([Four])[Fourth cell.],
  )
]
