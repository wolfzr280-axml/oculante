#!/usr/bin/env bash
# Local Windows build: NASM 2.16 (libaom rejects NASM 3.x), cmake/ninja from winget, CMake 4 policy shim
export PATH="$LOCALAPPDATA/Programs/nasm-2.16.03:$PATH:$LOCALAPPDATA/Microsoft/WinGet/Links"
export CMAKE_POLICY_VERSION_MINIMUM=3.5
cargo build --release "$@"
