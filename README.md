# openclaw-oss-starter

A public-safe toolkit for local multi-agent workflow orchestration, routing rules, and quota-aware automation.

## Overview

This repository shows how to organize a local AI workspace without mixing
public docs, private runtime state, and routing rules.

## What problem this project solves

- Helps solo operators organize multiple local AI roles safely
- Separates public-safe rules from private runtime state
- Provides reusable shell helpers and reference docs for local automation

## Who this is for

- Users running local AI workflows
- OpenClaw-style multi-instance setups
- Operators who need public-safe documentation patterns

## What is included

- `cron/codex_quota_autoswitch.sh`: a small helper for switching agents when Codex quota is low
- `generate_public_pack.sh`: a release packaging helper for public-safe files
- `validate_repo.sh`: a minimal repo health check for public release readiness
- `config/`: a placeholder config template pack for local multi-instance setups
- `references/instances.md`: a quick index of the local OpenClaw instance layout
- `rules-fix-20260323/`: boundary and routing notes for the local multi-instance setup
- `examples/`: a copyable minimal workflow example
- `INSTALL.md`: a short install and usage guide

## Current features

- quota-aware switching helper
- public pack generator
- local config template
- public-safe routing references
- boundary/rules documentation pack
- release notes structure

## Next planned features

- installation guide
- example workflow pack expansion
- repo validation helper improvements

## Notes

- This repository is intentionally kept public-safe.
- Private memory, heartbeat, and runtime state files are not included in the public set.
- The public repo contains only non-sensitive scaffolding and shared rules.

## Install and Use

```bash
git clone https://github.com/ztl970/openclaw-oss-starter.git
cd openclaw-oss-starter
chmod +x cron/codex_quota_autoswitch.sh generate_public_pack.sh validate_repo.sh
./validate_repo.sh
./cron/codex_quota_autoswitch.sh --help
./generate_public_pack.sh
```

If your environment does not support `--help` for the cron helper, run it
without arguments and review the log at `~/.openclaw/logs/codex-quota-autoswitch.log`.

## Repository Layout

- `cron/`: shell helpers for local automation
- `config/`: sample config templates for local multi-instance setups
- `examples/`: a copyable minimal workflow example
- `references/`: instance and routing references
- `rules-fix-20260323/`: public-safe boundary and shared rule docs
- `CHANGELOG.md`: release history and notable changes
- `releases/`: per-release notes and packaging helpers
- `generate_public_pack.sh`: public release bundling helper
- `validate_repo.sh`: repo readiness check
- `INSTALL.md`: quick install guide

## Why this is useful

This is not a large framework. It is a compact starting point for teams or solo
operators who want a public example of local AI workflow hygiene, clear routing
rules, and lightweight automation helpers.

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for the contribution workflow.

## Releases

See [RELEASES.md](./RELEASES.md) for the release process and note format.
