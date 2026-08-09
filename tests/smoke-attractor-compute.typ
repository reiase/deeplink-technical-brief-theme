#import "../lib.typ" as brief
#import "../extensions/attractor.typ"

#show: brief.theme.with(
  config: brief.theme-config(
    background: attractor.provider(
      mode: "compute",
      splines: 2,
      content-splines: 1,
      warmup: 8,
      tail-length: 24,
      stride: 2,
    ),
  ),
  metadata: brief.metadata(title: [Computed attractor smoke test]),
)

#brief.title-slide()
