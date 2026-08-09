# Changelog

All notable changes to this project are documented here.

## Unreleased

- Add `flat-card`, a fixed-height evidence card with an inset semantic rail, to the public API and formal examples.
- Rebalance the default deck and slide title sizes while preserving the 9.2pt body baseline.
- Make content headers flow as one title-and-rule unit so separators cannot cut through titles.
- Normalize component title, body, note, and tag sizes around one readable semantic scale.
- Tune standard and wide profile header reserves, title-page spacing, section hierarchy, card insets, and layout gaps.
- Clean rendered example directories before visual QA and add a mixed-script hierarchy regression deck.
- Replace the minimal standard and wide examples with one shared, complete component catalog.
- Render every public visual component page-for-page on both formal canvas profiles.
- Add a bilingual component inventory and usage map.
- Promote repeated consumer patterns into generic rail, metadata, comparison, media, hierarchy, ladder, and reference controls.
- Add sizing hooks used by real decks without introducing profile-specific component forks.
- Document the consumer-to-public API audit and add a dedicated regression deck.

## 0.1.1 - 2026-08-09

- Preserve each rendered card as one `card-grid` cell instead of splitting its internal content.
- Add a four-card regression case to the standard smoke deck.

## 0.1.0 - 2026-08-09

- Extract the technical brief system into a standalone MIT-licensed repository.
- Introduce one configuration-driven, namespaced public API.
- Add standard 16:9 and ultra-wide 3:1 formal canvas profiles.
- Add consumer-owned brand slots and open font defaults.
- Make the attractor an optional extension with off, cached, and compute modes.
- Add bilingual documentation, examples, smoke tests, and CI.
