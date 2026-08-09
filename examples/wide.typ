#import "../lib.typ" as brief

#let config = brief.theme-config(canvas: brief.canvas(..brief.wide-canvas))
#let info = brief.metadata(
  title: [Ultra-wide Technical Brief],
  subtitle: [30 cm × 10 cm formal profile],
  author: [DeepLink Community],
  institution: [Open technical communication],
  date: datetime(year: 2026, month: 8, day: 9),
)

#show: brief.theme.with(config: config, metadata: info)

#brief.title-slide()

#brief.content-slide(
  [A panoramic canvas without a second theme],
  takeaway: [The skeleton stays the same; geometry adapts at the profile boundary.],
)[
  #brief.columns(
    (1fr, 1fr, 1fr, 1fr),
    brief.card([Canvas])[Arbitrary positive width and height.],
    brief.card([Profile])[Auto switches to wide at aspect ratio 2.25.],
    brief.card([Brand])[Marks and backgrounds arrive as content slots.],
    brief.card([Components])[The same semantic component namespace.],
  )
]
