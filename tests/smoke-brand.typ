#import "../lib.typ" as brief

#let project-brand = brief.brand(
  title-mark: rect(width: 1.6cm, height: 0.38cm, fill: white.transparentize(20%), radius: 2pt),
  header-mark: rect(width: 1.2cm, height: 0.28cm, fill: rgb("#2563EB"), radius: 2pt),
  header-reserve: 1.6cm,
  footer-left: [Project brand],
)

#show: brief.theme.with(
  config: brief.theme-config(brand: project-brand),
  metadata: brief.metadata(title: [Brand slot smoke test], institution: [Theme tests]),
)

#brief.title-slide()
#brief.section-slide(title: [Brand-neutral structure])
#brief.content-slide([Consumer-owned slots])[#brief.card([OK])[Marks render without a theme-owned asset path.]]
