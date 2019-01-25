workflow "Integration tests" {
  on = "push"
  resolves = ["Quickstart"]
}

action "Quickstart" {
  uses = "icepuma/rust-action@master"
  args = "cd integration-test && cargo fmt -- --check && cargo clippy -- -Dwarnings && cargo test"
}
