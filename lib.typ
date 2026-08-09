// Public entry point for the DeepLink Technical Brief theme.
// Import this file as a namespace: `#import "theme/lib.typ" as brief`.

#import "src/config.typ" as _cfg
#import "src/engine.typ" as _engine

// Configuration.
#let standard-canvas = _cfg.standard-canvas
#let wide-canvas = _cfg.wide-canvas
#let canvas = _cfg.canvas
#let palette = _cfg.palette
#let typography = _cfg.typography
#let brand = _cfg.brand
#let metadata = _cfg.metadata
#let theme-config = _cfg.theme-config
#let default-config = _cfg.default-config
#let default-metadata = _cfg.default-metadata

// Runtime and slide skeletons.
#let theme = _engine.theme
#let title-slide = _engine.public-title-slide
#let section-slide = _engine.public-section-slide
#let content-slide = _engine.public-content-slide

// Layout primitives.
#let render = _engine.render-layout
#let columns = _engine.cols
#let rows = _engine.rows
#let equal-columns = _engine.equal-cols
#let card-grid = _engine.card-grid
#let stack = _engine.vstack
#let vertical-center = _engine.vcenter

// Cards and compact information components.
#let card = _engine.public-card
#let kpi = _engine.kpi
#let kpi-row = _engine.kpi-row
#let callout = _engine.callout
#let image-card = _engine.image-card
#let data-table = _engine.data-table
#let info-panel = _engine.info-panel
#let intro = _engine.intro
#let badge-card = _engine.badge-card
#let evidence-card = _engine.evidence-card
#let formula-card = _engine.formula-card
#let loss-card = _engine.loss-card
#let loss-grid = _engine.loss-grid
#let phase-card = _engine.phase-card
#let banner = _engine.banner-strip
#let bullets = _engine.bullets
#let bullet-row = _engine.bullet-row
#let flow-arrow = _engine.flow-arrow
#let flow-node = _engine.flow-node
#let process-flow = _engine.process-flow
#let ribbon-list = _engine.ribbon-list
#let ribbon-row = _engine.ribbon-row
#let stage-item = _engine.stage-item
#let step-hint = _engine.step-hint
#let tint-cell = _engine.tint-cell
#let vertical-card = _engine.vcard
#let closing-banner = _engine.closing-banner

// Argument builders and explanatory structures.
#let contrast = _engine.contrast-pair
#let milestone = _engine.milestone
#let timeline = _engine.timeline
#let claim = _engine.claim-block
#let facet = _engine.facet
#let framework = _engine.framework-triad
#let notice = _engine.admonition
#let quadrant = _engine.quadrant
#let matrix-row = _engine.mrow
#let compare-matrix = _engine.compare-matrix
#let matrix-legend = _engine.matrix-legend
#let chain-step = _engine.cstep
#let causal-chain = _engine.causal-chain
#let phase = _engine.phase
#let phase-track = _engine.phase-track
#let tradeoff = _engine.tradeoff-ledger
#let pyramid = _engine.pyramid-claim
#let rating = _engine.mlevel
#let rating-list = _engine.rating-list

// Semantic colors are data, so a brand can choose them explicitly without
// importing implementation tokens from src/engine.typ.
#let colors = (
  info: _engine.info-color,
  success: _engine.ok-color,
  warning: _engine.warn-color,
  danger: _engine.danger-color,
  violet: _engine.violet-color,
  cyan: _engine.cyan-color,
  orange: _engine.orange-color,
  slate: _engine.slate-color,
  ghost: _engine.ghost-color,
)
