# OpenClaw Vertex Credit-Safe Setup

Public-safe OpenClaw skill for connecting a fresh local setup to Google Vertex
AI with service-account JSON auth, one tiny verification request, and explicit
billing checks.

Published on ClawHub as `openclaw-vertex-credit-safe-setup@1.0.0`.

## Why this skill exists

Many users can access Google Cloud credits, but still miss the practical setup
step that makes those credits useful inside OpenClaw.

Typical cases include:

- Google for Startups Cloud Program credits
- Google Cloud / Vertex AI new-customer credits
- other Google Cloud promotional credit windows tied to the correct billing path

The problem is not only "having credits." The real problem is making sure
OpenClaw is configured so Gemini usage goes through the `google-vertex/...`
route instead of an unintended direct Gemini API path.

This skill exists to solve that gap:

- configure OpenClaw to use Vertex AI on purpose
- keep auth tied to the intended Google Cloud project
- run one tiny verification request before wider rollout
- help the user confirm that billing lands under `Vertex AI`

The goal is not to claim "Gemini is always free." The goal is to help users use
available Google Cloud credits first, avoid wrong-path setup, and minimize
out-of-pocket cost while credits are still active.

For current program details, always check the official Google pages:

- Google for Startups Cloud Program: https://cloud.google.com/startup
- Vertex AI: https://cloud.google.com/vertex-ai

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

In practice, it is also the bridge between:

- Google credits that the user already has
- OpenClaw model routing
- Gemini usage inside OpenClaw under the intended Vertex billing path

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
- GitHub and ClawHub-ready setup documentation for broader registry use

## Suggested quickstart

1. read [SKILL.md](./SKILL.md) for the full workflow
2. fill the placeholders in
   [references/minimal-vertex-reference-config.md](./references/minimal-vertex-reference-config.md)
3. merge the minimal model block into your local OpenClaw config
4. run one tiny verification request
5. check the `Vertex AI` billing line item before broader rollout

## What success looks like

The intended end state is simple:

- the user can call Gemini models inside OpenClaw
- the configured route is `google-vertex/...`
- billing lands on the intended Google Cloud project
- eligible Google Cloud credits are used first when available

That is why this skill focuses on billing correctness and not only on whether a
request succeeds.

## More links

- [examples/README.md](./examples/README.md)
- [CUSTOMIZATION.md](./CUSTOMIZATION.md)
- [releases/1.0.0.md](./releases/1.0.0.md)
