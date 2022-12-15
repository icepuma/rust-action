# Rust Github Action

:warning: I'm looking for a person, who would like to take over this GitHub action. If you're the person, contact me [here](https://github.com/icepuma/rust-action/issues/2). :warning:

'Silverbullet' for a quickstart Rust CI based upon [Github Actions](https://developer.github.com/actions/)

*What's inside the "box":*

* Rust 1.66.0
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
