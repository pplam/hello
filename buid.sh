#!/bin/bash

cargo +nightly build --target wasm32-unknown-unknown
wasm-gc target/wasm32-unknown-unknown/release/hello_world.wasm -o hello_world.gc.wasm
wasm-opt -Os hello_world.gc.wasm -o hello_world.gc.opt.wasm
