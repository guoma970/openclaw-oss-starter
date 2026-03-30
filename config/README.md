# Config Templates

This folder contains public-safe sample configuration templates for local
multi-instance OpenClaw-style setups.

## Included files

- `local-multi-instance.example.env`

## Notes

- `local-multi-instance.example.env` includes public-safe defaults for the
  quota-aware switch helper.
- Project-specific routing maps, real chat ids, and runtime-only config should
  stay in a local ignored path.

## How to use

1. Copy the example file to a local, ignored path.
2. Fill in your own instance names, paths, and optional quota-switch defaults.
3. Keep secrets, routing ids, and runtime tokens out of version control.
