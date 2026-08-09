#import "../lib.typ" as brief

#let type = brief.typography()
#assert(type.body-size == 9.2pt)
#assert(type.slide-title-size == 18pt)
#assert(type.deck-title-size == 28pt)
#assert(brief.tokens.card-title-size == 7.6pt)
#assert(brief.tokens.card-body-size == 6.6pt)
#assert(brief.tokens.card-note-size == 5.8pt)
#assert(brief.tokens.tag-size == 6.2pt)
#assert(brief.tokens.layout-gap == 0.30cm)

#let hierarchy-brand = brief.brand(
  header-mark: rect(width: 1.15cm, height: 0.26cm, fill: brief.colors.info, radius: 2pt),
  header-reserve: 1.55cm,
)

#show: brief.theme.with(
  config: brief.theme-config(brand: hierarchy-brand),
  metadata: brief.metadata(title: [Visual hierarchy smoke test], institution: [Theme tests]),
)

#brief.title-slide()
#brief.section-slide(
  [标题、分隔线与正文形成稳定节奏],
  label: [Visual hierarchy],
  summary: [Section copy remains subordinate to the section title.],
)
#brief.content-slide(
  [Mixed-script hierarchy：标题、正文与分隔线],
  lead: [The lead begins below the complete title-and-rule header block.],
  takeaway: [Readable defaults should not require per-deck typography overrides.],
)[
  #brief.columns(
    (1fr, 1fr),
    brief.card([Primary evidence])[Card copy uses the shared semantic type scale.],
    brief.card([Secondary evidence], footer: [Metadata remains visibly tertiary.])[
      Spacing and line-height stay consistent across cards.
    ],
  )
]
