# openclaw-oss-starter

Public-safe OpenClaw skill templates for local AI coordination workflows.

This repository focuses on structured task intake, confirmation logic,
reminder orchestration, and parent-approved execution flows.

## What this project solves

- public-safe local AI workflow templates
- OpenClaw-style multi-role coordination
- reusable skills for family, task, and reminder workflows

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

Published on ClawHub as `family-homework-pomodoro@1.0.1`.

Directory:

- `skills/family-homework-pomodoro/`
- `skills/family-homework-pomodoro/SKILL.md` main skill entrypoint
- `skills/family-homework-pomodoro/agents/openai.yaml` UI metadata
- `skills/family-homework-pomodoro/README.md` human-readable overview

Read more:

- [README](./skills/family-homework-pomodoro/README.md)
- [SKILL.md](./skills/family-homework-pomodoro/SKILL.md)

### daily-task-checkin / 日常任务打卡助手

A reusable skill template for a simple daily task check-in loop:

- receive a task list from the parent or operator
- record the task list without adding assumptions
- confirm the intended start time before reminders
- send short reminder messages during the day
- check completion status at night
- ask whether a reward or follow-up note is allowed

Directory:

- `skills/daily-task-checkin/`
- `skills/daily-task-checkin/SKILL.md` main skill entrypoint
- `skills/daily-task-checkin/agents/openai.yaml` UI metadata
- `skills/daily-task-checkin/README.md` human-readable overview

Read more:

- [README](./skills/daily-task-checkin/README.md)
- [SKILL.md](./skills/daily-task-checkin/SKILL.md)

## Published to ClawHub

- `family-homework-pomodoro@1.0.1`
- This skill is public-safe and reusable as a generic family workflow template
- `daily-task-checkin@1.0.2`
- Both skills are public-safe and reusable as generic workflow templates

## Roadmap

- add examples for more reminder workflows
- improve customization docs
- support broader coordination workflows
- keep adding public-safe skill templates

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

Published on ClawHub:

- [family-homework-pomodoro](https://clawhub.ai)
- [daily-task-checkin](https://clawhub.ai)
