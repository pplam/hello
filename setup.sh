#!/bin/bash

rustup default nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
cargo install wasm-gc



# Reference:
# https://github.com/rust-lang-nursery/rustup.rs
# https://www.hellorust.com/setup/wasm-target/
# https://rust-lang-nursery.github.io/rust-wasm/
# https://gist.github.com/LukasKalbertodt/821ab8b85a25f4c54544cc43bed2c39f
# 
