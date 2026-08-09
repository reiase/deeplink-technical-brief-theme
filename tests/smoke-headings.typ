#import "../lib.typ" as brief

#let surface = brief.canvas(width: 21cm, height: 9cm)
#assert(surface.profile == "wide")

#show: brief.theme.with(
  config: brief.theme-config(),
  metadata: brief.metadata(title: [Heading smoke test], institution: [Theme tests]),
)

= Automatic section

== Heading-driven content

The heading pipeline still returns Touying-native slide wrappers.
