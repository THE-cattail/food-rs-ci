FROM rust

RUN apt update && \
    apt install -y nodejs && \
    rustup install nightly && \
    rustup component add clippy && \
    rustup component add rustfmt --toolchain nightly && \
    cargo install cargo-sort cargo-udeps cargo-outdated
