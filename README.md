# openclaw-oss-starter

Starter toolkit for local AI workflow and OpenClaw-style automation projects.

## Overview

This repository is a public-safe scaffold for local automation experiments and
OpenClaw-style workflows. It keeps the layout lightweight on purpose so the
core ideas are easy to reuse.

## What is included

- `cron/codex_quota_autoswitch.sh`: a small helper for switching agents when Codex quota is low
- `references/instances.md`: a quick index of the local OpenClaw instance layout
- `rules-fix-20260323/`: boundary and routing notes for the local multi-instance setup

## Quick Start

1. Clone the repository.
2. Review the `references/` and `rules-fix-20260323/` docs.
3. Adapt the cron script to your own environment if you want quota-aware switching.

## Notes

- This repository is intentionally kept public-safe.
- Private memory, heartbeat, and runtime state files are not included in the public set.
- The public repo contains only non-sensitive scaffolding and shared rules.

## Usage

This is a starter scaffold, not a full application.
Use the scripts and docs here as a base for your own local AI automation setup.

## Repository Layout

- `cron/`: shell helpers for local automation
- `references/`: instance and routing references
- `rules-fix-20260323/`: public-safe boundary and shared rule docs
- `CHANGELOG.md`: release history and notable changes
- `releases/`: per-release notes and packaging helpers

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for the contribution workflow.

## Releases

See [RELEASES.md](./RELEASES.md) for the release process and note format.
