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
- `examples/pack_and_validate.sh`: a runnable example that validates and builds a public pack
- `INSTALL.md`: a short install and usage guide
- `skills/`: public-safe skill examples

## Included public-safe skills

This repository contains public-safe skill examples that can be adapted for
local AI workflow orchestration and OpenClaw-style multi-role systems.

### family-homework-pomodoro / 家庭作业番茄执行助手

A reusable skill template for a minimal family homework workflow:

- receive same-day homework from parent
- record homework without adding assumptions
- confirm homework start time with parent
- guide execution with a Pomodoro rhythm
- check completion status at night
- require explicit parent approval before any reward notice

Published on ClawHub as `family-homework-pomodoro@1.0.0`.

Directory:

- `skills/family-homework-pomodoro/`
- `skills/family-homework-pomodoro/SKILL.md` main skill entrypoint
- `skills/family-homework-pomodoro/agents/openai.yaml` UI metadata
- `skills/family-homework-pomodoro/README.md` human-readable overview

Read more:

- [README](./skills/family-homework-pomodoro/README.md)
- [SKILL.md](./skills/family-homework-pomodoro/SKILL.md)

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
./generate_public_pack.sh --list
./generate_public_pack.sh --dry-run
./generate_public_pack.sh --output-dir ./dist/public
chmod +x examples/pack_and_validate.sh
bash ./examples/pack_and_validate.sh
```

If your environment does not support `--help` for the cron helper, run it
without arguments and review the log at `~/.openclaw/logs/codex-quota-autoswitch.log`.
For the combined example workflow, `bash ./examples/pack_and_validate.sh` is the
most reliable invocation.

## Repository Layout

- `cron/`: shell helpers for local automation
- `config/`: sample config templates for local multi-instance setups
- `examples/`: a copyable minimal workflow example
- `examples/pack_and_validate.sh`: example script that validates and builds a public pack
- `references/`: instance and routing references
- `rules-fix-20260323/`: public-safe boundary and shared rule docs
- `CHANGELOG.md`: release history and notable changes
- `releases/`: per-release notes and packaging helpers
- `generate_public_pack.sh`: public release bundling helper
- `validate_repo.sh`: repo readiness check
- `INSTALL.md`: quick install guide
- `skills/family-homework-pomodoro/`: public-safe homework skill example

## Why this is useful

This is not a large framework. It is a compact starting point for teams or solo
operators who want a public example of local AI workflow hygiene, clear routing
rules, and lightweight automation helpers.

## Public release and support

The public repository is the reference version: it is free to clone, inspect,
and adapt for your own workflows.

If you want a tailored implementation, the most natural paid paths are:

- repository review and public-safe hardening
- custom packaging for a team or community skill library
- workflow setup for a private OpenClaw-style environment
- documentation cleanup for a public release

Support and customization requests can be handled through GitHub Issues, and
GitHub Sponsors can be used if you later enable sponsorship on the account.
This keeps the public repo useful on its own while leaving a clear path for
paid services, consulting, or sponsored maintenance.

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for the contribution workflow.

## Releases

See [RELEASES.md](./RELEASES.md) for the release process and note format.
