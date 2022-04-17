#!/bin/bash
git clone https://github.com/sharkdp/fd

# Build
cd fd
cargo build

# Run unit tests and integration tests
# cargo test

# Install
cargo install --path .
