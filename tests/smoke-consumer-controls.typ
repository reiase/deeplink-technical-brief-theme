#import "../lib.typ" as brief

#show: brief.theme.with(
  config: brief.theme-config(),
  metadata: brief.metadata(title: [Consumer control smoke test]),
)

#brief.content-slide([Consumer-proven controls])[
  #brief.columns(
    (1fr, 1fr),
    brief.stack(
      brief.rail-card([Evidence], [A reusable rail card compiles.], note: [Optional note.]),
      brief.label-band([Scope], [Generic content only.]),
      brief.flow-card([Step], [Narrow the window], [Then enable detailed analysis.]),
      gap: 0.12cm,
    ),
    brief.ladder(
      brief.ladder-step([1], [Observe], [global], [Keep a fixed budget.]),
      brief.ladder-step(
        [2], [Inspect], [local], [Use bounded media in an auto-height step.],
        media: "/assets/attractor/standard/dark-2.svg",
      ),
      media-width: 1.20cm,
    ),
  )
]

#brief.content-slide([Backward-compatible sizing hooks])[
  #brief.columns(
    (1fr, 1fr),
    brief.stack(
      brief.stage-item([1], [Fixed-height stage], [The optional height parameter compiles.], height: 1.15cm),
      brief.claim([Claim], [Fixed-height claim], [The body remains vertically balanced.], compact: true, height: 1.55cm),
      brief.notice([Note], [Custom padding and height remain bounded.], pad: (x: 7pt, y: 5pt), height: 1.05cm),
      gap: 0.12cm,
    ),
    brief.stack(
      brief.formula-card(
        [Projection sizing],
        [$ x + y = z $],
        [Type sizes can be overridden without a second component.],
        title-size: 7.5pt,
        formula-size: 9pt,
        body-size: 6pt,
      ),
      brief.data-table(
        (([Key], [Value]), ([Mode], [Bounded])),
        columns: (1fr, 1fr),
        row-height: 0.62cm,
      ),
      gap: 0.12cm,
    ),
  )
]

#brief.content-slide([Rich comparison and media controls])[
  #brief.comparison-list(
    ([Option], [Latency], [Scale], [Verdict]),
    brief.comparison-row(
      [Default], [Option A], [Balanced],
      (brief.chip([Good], accent: brief.colors.success), brief.chip([Good], accent: brief.colors.info)),
      [Proceed],
      emphasized: true,
    ),
    columns: (2.4cm, 1fr, 1fr, 1.5fr),
  )
  #v(0.16cm)
  #brief.columns(
    (1fr, 1fr),
    brief.media-card(
      [Media],
      "/assets/attractor/standard/dark-3.svg",
      tag: [Example],
      specs: (brief.spec-row([Mode], [Cached]),),
      height: 2.70cm,
    ),
    brief.reference-card([Docs], [Public contract], [§1], [Keep the claim linked to its reference.]),
  )
]
