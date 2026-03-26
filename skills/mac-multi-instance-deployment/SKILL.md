---
name: mac-multi-instance-deployment
description: Public-safe Mac multi-instance deployment skill for generic OpenClaw-style workspace layout, boundary notes, sample config, and pack validation.
version: 1.0.3
---

# Mac Multi-Instance Deployment / Mac 多实例部署

## Purpose

Set up a generic Mac multi-instance workspace with clear boundaries.

## Core Workflow

1. Choose generic roles: `main`, `workbench`, `publish`, `archive`, `private`.
2. Map each role to one workspace root on the Mac.
3. Keep shared docs in `main` and private runtime state in `private`.
4. Update `config/local-multi-instance.example.env` with placeholder paths.
5. Review `references/instances.md` before sharing.
6. Run `./validate_repo.sh` and `./generate_public_pack.sh --dry-run`.

## Rules

- Keep names generic and public-safe.
- Keep one instance per workspace root.
- Keep release output separate from runtime state.
- Never place secrets or personal data in public packs.

## References

- [README.md](./README.md) for the compact overview
- [examples/README.md](./examples/README.md) for the shortest setup path
- [CUSTOMIZATION.md](./CUSTOMIZATION.md) for safe adaptation notes

## Validation

Before sharing or releasing, confirm:

- no private names or IDs are present
- config paths are placeholders only
- the instance map stays generic
- the pack script excludes private files

