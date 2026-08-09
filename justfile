set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

build_dir := "build"

check:
    mkdir -p {{build_dir}}
    typst compile tests/smoke-standard.typ {{build_dir}}/smoke-standard.pdf --root .
    typst compile tests/smoke-wide.typ {{build_dir}}/smoke-wide.pdf --root .
    typst compile tests/smoke-brand.typ {{build_dir}}/smoke-brand.pdf --root .
    typst compile tests/smoke-headings.typ {{build_dir}}/smoke-headings.pdf --root .
    typst compile tests/smoke-attractor.typ {{build_dir}}/smoke-attractor.pdf --root .
    typst compile tests/smoke-attractor-compute.typ {{build_dir}}/smoke-attractor-compute.pdf --root .
    typst compile examples/standard.typ {{build_dir}}/example-standard.pdf --root .
    typst compile examples/wide.typ {{build_dir}}/example-wide.pdf --root .

render:
    mkdir -p {{build_dir}}/rendered/standard {{build_dir}}/rendered/wide
    typst compile examples/standard.typ '{{build_dir}}/rendered/standard/page-{0p}-of-{t}.png' --root . --ppi 144
    typst compile examples/wide.typ '{{build_dir}}/rendered/wide/page-{0p}-of-{t}.png' --root . --ppi 144

clean:
    rm -rf {{build_dir}}
