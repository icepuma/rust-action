# Rust Github Action

'Silverbullet' for a quickstart Rust CI based upon [Github Actions](https://developer.github.com/actions/)

*What's inside the "box":*

* Rust 1.48.0
* Rustfmt
* Clippy
* Cargo Release
* cmake - Thanks @ [bwasty](https://github.com/bwasty)

# Usage

In a file inside `.github/workflows/quickstart.yml`

```yaml
name: Rust Example

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v1
      - uses: icepuma/rust-action@master
        with:
          args: cd integration-test && cargo fmt -- --check && cargo clippy -- -Dwarnings && cargo test
```
