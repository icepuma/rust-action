FROM rust:1.49.0

LABEL "com.github.actions.name"="Rust Action"
LABEL "com.github.actions.description"="'Silverbullet' for a quickstart Rust CI based upon Github Actions"
LABEL "com.github.actions.icon"="play-circle"
LABEL "com.github.actions.color"="gray-dark"

RUN rustup component add clippy-preview
RUN rustup component add rustfmt-preview

RUN cargo install cargo-release

RUN apt-get update && apt-get install -y \
    cmake \
&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
