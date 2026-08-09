#import "../lib.typ" as brief
#import "../extensions/attractor.typ"

#show: brief.theme.with(
  config: brief.theme-config(background: attractor.provider(mode: "cached")),
  metadata: brief.metadata(title: [Cached attractor smoke test]),
)

#brief.title-slide()
#brief.content-slide([Content])[#brief.card([OK])[Cached backgrounds resolve from package assets.]]
