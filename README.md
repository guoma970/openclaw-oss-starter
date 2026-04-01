# openclaw-oss-starter

![OpenClaw banner](./assets/github/profile-banner-1280.png)

Public-safe OpenClaw skill templates for local AI coordination workflows.

This repository focuses on structured task intake, confirmation logic,
reminder orchestration, Mac multi-instance deployment, parent-approved
execution flows, and public-safe Feishu coordination templates.

> A public-safe OpenClaw skill collection across reusable skill publishing and
> workflow operations.

## Quick Links

- [Skills](#included-skills)
- [Install](./INSTALL.md)
- [Examples](./examples/)
- [Mac deployment](./skills/mac-multi-instance-deployment/README.md)
- [Feishu knowledge base pack](./marketing/feishu/knowledge-base/README.md)
- [Public-safe ops framework](./marketing/feishu/knowledge-base/36-public-safe-ops-message-templates.md)
- [ClawHub release notes](./RELEASES.md)

## Project Pitch

This repository maintains a small, public-safe skill collection for local AI
coordination. It combines reusable workflow templates, clear boundary docs, a
Feishu knowledge-base starter pack, and ClawHub-published skills so the public
repo can serve both as a reference implementation and as a practical starting
point for new workflows.

## Snapshot

| Area | What you get |
|---|---|
| Skills | Public-safe OpenClaw skills for homework, tasks, practice sessions, and Mac deployment |
| Publishing | GitHub-first repo flow with ClawHub-ready skill packaging |
| Operations | Feishu knowledge-base starter pages, public-safe coordination templates, and publishing checklists |
| Goal | Reusable local AI workflow patterns without exposing private runtime state |

## Application Summary

This repository is a public-safe OpenClaw skill collection for local AI
coordination workflows.

At a glance:

- `family-homework-pomodoro`: parent-confirmed homework coordination
- `daily-task-checkin`: simple task intake and reminder coordination
- `practice-session-checkin`: structured practice and follow-up coordination
- `mac-multi-instance-deployment`: generic Mac deployment and boundary setup
- public-safe Feishu coordination and structured ops message templates

Together, they show a reusable pattern for public-safe workflow templates that
can be published, installed, and adapted without exposing private runtime state.

## What this project solves

- public-safe local AI workflow templates
- OpenClaw-style multi-role coordination
- generic Mac multi-instance deployment layouts
- public-safe Feishu coordination and message structure patterns
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
- `marketing/feishu/knowledge-base/README.md`: a public-safe Feishu knowledge-base starter pack
- `marketing/feishu/knowledge-base/36-public-safe-ops-message-templates.md`: lightweight structured coordination framework
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
- credit-safe Google Vertex AI setup
- public-safe Feishu knowledge-base and structured coordination templates
- confirmation-based task flows
- completion tracking and follow-up

## Included Skills

| Skill | Summary | ClawHub | Path |
|---|---|---|---|
| `family-homework-pomodoro` | Parent-confirmed homework intake, Pomodoro execution, nightly completion checks, and reward approval | `1.0.1` | [`skills/family-homework-pomodoro/`](./skills/family-homework-pomodoro/) |
| `daily-task-checkin` | Lightweight task intake, reminders, completion confirmation, and follow-up coordination | `1.0.2` | [`skills/daily-task-checkin/`](./skills/daily-task-checkin/) |
| `practice-session-checkin` | Structured practice intake, start confirmation, reminder flow, and follow-up tracking | `1.0.1` | [`skills/practice-session-checkin/`](./skills/practice-session-checkin/) |
| `mac-multi-instance-deployment` | Generic Mac workspace setup, boundary docs, quickstart examples, and deployment validation | `1.0.4` | [`skills/mac-multi-instance-deployment/`](./skills/mac-multi-instance-deployment/) |
| `openclaw-vertex-credit-safe-setup` | Google Vertex AI setup with service-account JSON, tiny verification, and billing checks | `1.0.0` | [`skills/openclaw-vertex-credit-safe-setup/`](./skills/openclaw-vertex-credit-safe-setup/) |

### Featured Entry Point

[`daily-task-checkin`](./skills/daily-task-checkin/README.md) is the broadest
starting point in this collection. It is the easiest skill to adapt when you
want a public-safe workflow for reminders, check-ins, and lightweight local
coordination.

### Deployment Companion

[`mac-multi-instance-deployment`](./skills/mac-multi-instance-deployment/README.md)
is the deployment-focused companion template. It gives this repository a
practical setup layer, not just a documentation layer.

### Cloud Setup Companion

[`openclaw-vertex-credit-safe-setup`](./skills/openclaw-vertex-credit-safe-setup/README.md)
is the cloud-setup companion template. It keeps first-time Vertex AI setup on a
public-safe path with local-only credentials, one small verification request,
and explicit billing checks so users with Google Cloud credits can configure
OpenClaw to use Gemini through Vertex AI more safely.

## Project Positioning

This repository is intended as a public-safe skill collection for local AI
coordination workflows.

It focuses on reusable patterns such as:

- task intake
- confirmation before execution
- reminder orchestration
- completion checks
- Mac multi-instance deployment
- credit-safe Google Vertex AI setup
- public-safe Feishu coordination docs and structured message templates
- approval-based follow-up
- privacy-safe workflow design

## Publishing Status

Selected skills in this repository are also published to the OpenClaw
community registry through ClawHub.

Current public release highlights:

- `daily-task-checkin` is the featured skill because it is the most
  general-purpose reminder template and the easiest starting point for new users
- `mac-multi-instance-deployment` is the deployment-focused companion template
- GitHub remains the source of truth for repo structure, docs, and release flow
- ClawHub is used for public skill distribution

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
- it demonstrates a reusable pattern for family, task, deployment, and coordination workflows
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
- openclaw-vertex-credit-safe-setup
