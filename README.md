# openclaw-oss-starter

Public-safe OpenClaw skill templates for local AI coordination workflows.

This repository focuses on structured task intake, confirmation logic,
reminder orchestration, Mac multi-instance deployment, and parent-approved
execution flows.

## Project Pitch

This repository maintains a small, public-safe skill collection for local AI
coordination. It combines reusable workflow templates, clear boundary docs,
and ClawHub-published skills so the public repo can serve both as a reference
implementation and as a practical starting point for new workflows.

## Application Summary

This repository is a public-safe OpenClaw skill collection for local AI
coordination workflows.

At a glance:

- `family-homework-pomodoro`: parent-confirmed homework coordination
- `daily-task-checkin`: simple task intake and reminder coordination
- `practice-session-checkin`: structured practice and follow-up coordination
- `mac-multi-instance-deployment`: generic Mac deployment and boundary setup

Together, they show a reusable pattern for public-safe workflow templates that
can be published, installed, and adapted without exposing private runtime state.

## What this project solves

- public-safe local AI workflow templates
- OpenClaw-style multi-role coordination
- generic Mac multi-instance deployment layouts
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
- `references/instances.md`: a quick index of the generic Mac multi-instance layout
- `skills/mac-multi-instance-deployment/`: the generic Mac multi-instance deployment skill
- `examples/`: a copyable minimal workflow example
- `examples/pack_and_validate.sh`: a runnable example that validates and builds a public pack
- `INSTALL.md`: a short install and usage guide
- `skills/`: public-safe skill examples

## Public-safe Skill Collection

This repository maintains a growing collection of public-safe OpenClaw skill
templates for local coordination workflows.

These skills are designed to be:

- reusable
- privacy-safe
- easy to adapt
- suitable for local AI workflow experiments and OpenClaw-style automation

Current focus areas include:

- structured homework execution
- daily task check-ins
- practice session reminders
- Mac multi-instance deployment
- confirmation-based task flows
- completion tracking and follow-up

## Included Skills

### 1. family-homework-pomodoro / 家庭作业番茄执行助手

A parent-confirmed homework workflow skill for same-day homework intake,
Pomodoro-based execution, nightly completion checks, and reward approval.

- Path: `skills/family-homework-pomodoro/`
- Published on ClawHub: `family-homework-pomodoro@1.0.1`
- Use cases:
  - family homework coordination
  - parent-approved homework reminders
  - simple child study execution loops

### 2. daily-task-checkin / 日常任务打卡助手

A reusable daily task coordination skill for task intake, reminder flow,
completion confirmation, and lightweight follow-up.

Featured as the broadest entry point in this collection.

- Path: `skills/daily-task-checkin/`
- Published on ClawHub: `daily-task-checkin@1.0.2`
- Use cases:
  - daily to-do reminders
  - family task tracking
  - lightweight personal workflow check-ins

### 3. practice-session-checkin / 专项练习打卡助手

A structured practice coordination skill for task intake, start confirmation,
reminder flow, completion checks, and unfinished-task follow-up.

- Path: `skills/practice-session-checkin/`
- Published on ClawHub: `practice-session-checkin@1.0.1`
- Use cases:
  - dance or sports practice reminders
  - music practice check-ins
  - speaking, reading, or other structured home practice sessions

### 4. mac-multi-instance-deployment / Mac 多实例部署

A generic Mac deployment skill for setting up, naming, and validating multiple
local OpenClaw-style workspaces.

- Path: `skills/mac-multi-instance-deployment/`
- Published on ClawHub: `mac-multi-instance-deployment@1.0.4`
- Use cases:
  - generic Mac multi-instance workspace planning
  - public-safe boundary and index docs
  - sample config and packaging validation
  - example-driven deployment walk-throughs

## Project Positioning

This repository is intended as a public-safe skill collection for local AI
coordination workflows.

It focuses on reusable patterns such as:

- task intake
- confirmation before execution
- reminder orchestration
- completion checks
- Mac multi-instance deployment
- approval-based follow-up
- privacy-safe workflow design

## Publishing Status

Selected skills in this repository are also published to the OpenClaw
community registry through ClawHub.

The current featured skill is `daily-task-checkin`, because it is the most
general-purpose reminder template and the easiest starting point for new
users.

The generic Mac multi-instance deployment skill is also published and serves
as the repository's deployment-focused companion template with concrete
example flows.

This repository will continue expanding with additional public-safe skill
templates and documentation improvements.

## Roadmap

- add more public-safe skill examples
- improve documentation and customization guides
- expand reusable coordination workflows
- strengthen ClawHub publishing coverage

## Public release and support

The public repository is the reference version: it is free to clone, inspect,
and adapt for your own workflows.

Why it matters:

- it shows how to publish public-safe skills without exposing private runtime state
- it demonstrates a reusable pattern for family, task, and deployment coordination workflows
- it gives a concrete path from local OpenClaw templates to ClawHub publication

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

- family-homework-pomodoro
- daily-task-checkin
- practice-session-checkin
- mac-multi-instance-deployment
