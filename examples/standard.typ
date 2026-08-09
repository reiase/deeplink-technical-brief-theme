#import "../lib.typ" as brief

#let config = brief.theme-config()
#let info = brief.metadata(
  title: [Technical Brief Theme],
  subtitle: [A reusable Typst system for engineering reports],
  author: [DeepLink Community],
  institution: [Open technical communication],
  date: datetime(year: 2026, month: 8, day: 9),
)

#show: brief.theme.with(config: config, metadata: info)

#brief.title-slide()

#brief.section-slide(title: [A small, explicit API], body: [Configure the canvas and brand once; author slides with stable semantic components.])

#brief.content-slide(
  [Design goals],
  lead: [The default system prioritizes clear hierarchy, reusable structure, and predictable rendering.],
  takeaway: [One configuration drives the whole deck.],
)[
  #brief.card-grid(
    (1fr, 1fr, 1fr),
    brief.card([Readable], accent: brief.colors.info)[Larger type and deliberate spacing.],
    brief.card([Reusable], accent: brief.colors.success)[A compact namespace instead of global imports.],
    brief.card([Brandable], accent: brief.colors.warning)[Consumer-owned marks and backgrounds stay private.],
  )
]

#brief.content-slide([Two formal profiles])[
  #brief.columns(
    (1fr, 1fr),
    brief.card([Standard 16:9])[19.2 cm × 10.8 cm for ordinary presentations.],
    brief.card([Ultra-wide 3:1])[30 cm × 10 cm for panoramic conference screens.],
  )
]
