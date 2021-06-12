#!/bin/sh -e

nix-build \
  --keep-failed \
  --max-jobs 0 \
  --builders "ssh://eu.nixbuild.net x86_64-linux - 100 1 big-parallel,benchmark" \
  -I nixpkgs=channel:nixos-20.03

