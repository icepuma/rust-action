# Rust Github Action

'Silverbullet' for a quickstart Rust CI based upon [Github Actions](https://developer.github.com/actions/)

*Inside the box:*

* Rust 1.32.0
* Rustfmt
* Clippy
* Cargo Release

# Usage

```
workflow "Quickstart" {
  on = "push"
  resolves = ["Quickstart"]
}

action "Quickstart" {
  uses = "icepuma/rust-github-action@master"
}
```
