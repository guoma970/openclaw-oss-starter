# OpenClaw Vertex Credit-Safe Setup

Public-safe OpenClaw skill for connecting a fresh local setup to Google Vertex
AI with service-account JSON auth, one tiny verification request, and explicit
billing checks.

This skill is GitHub-first for now. It is not yet published on ClawHub.

## What it does

Use this skill when you want a safer first pass for Vertex AI setup:

1. confirm the target Google Cloud project
2. keep auth on a dedicated local JSON path
3. use `google-vertex/...` model routes only
4. run one tiny verification request
5. check Google Cloud Billing before wider rollout

## Why it exists

This skill is meant to reduce a few common setup mistakes:

- using Gemini API direct access when the goal was Vertex AI
- reusing unclear old auth state
- spreading Google model changes across many agents before a tiny test
- treating “request succeeded” as proof that billing is correct

## Minimal local inputs

Keep these local-only:

- target `GOOGLE_CLOUD_PROJECT`
- local `GOOGLE_APPLICATION_CREDENTIALS` path
- billing confirmation for the target project

For the shortest public-safe starter template, see
[references/minimal-vertex-reference-config.md](./references/minimal-vertex-reference-config.md).

For the compact execution checklist, see
[references/vertex-first-setup-checklist.md](./references/vertex-first-setup-checklist.md).

## File structure

```text
skills/
  openclaw-vertex-credit-safe-setup/
    SKILL.md
    README.md
    CUSTOMIZATION.md
    PUBLISHING.md
    CHANGELOG.md
    agents/
      openai.yaml
    examples/
      README.md
      quickstart.md
      local-env-example.md
      verification-example.md
    references/
      minimal-vertex-reference-config.md
      vertex-first-setup-checklist.md
    releases/
      1.0.0.md
```

## Safety boundaries

Keep this skill public-safe:

- no real project IDs
- no service-account JSON contents
- no API keys or app secrets
- no chat IDs or routing IDs
- no machine-specific private paths beyond placeholders

## Where to use it

- fresh OpenClaw setup guidance
- Google Vertex AI trial or credit-safe onboarding
- public-safe deployment examples
- GitHub-first setup documentation before broader registry release

## Suggested quickstart

1. read [SKILL.md](./SKILL.md) for the full workflow
2. fill the placeholders in
   [references/minimal-vertex-reference-config.md](./references/minimal-vertex-reference-config.md)
3. merge the minimal model block into your local OpenClaw config
4. run one tiny verification request
5. check the `Vertex AI` billing line item before broader rollout

## More links

- [examples/README.md](./examples/README.md)
- [CUSTOMIZATION.md](./CUSTOMIZATION.md)
- [releases/1.0.0.md](./releases/1.0.0.md)
