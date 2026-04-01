---
name: openclaw-vertex-credit-safe-setup
description: Use Google Cloud credits with OpenClaw more safely by routing Gemini through Vertex AI, verifying one tiny request, and checking billing before accidental Gemini API spend shows up.
version: 1.0.1
---

# OpenClaw Vertex Credit-Safe Setup

Use this skill when a user wants to turn Google Cloud credits into a correct OpenClaw -> Vertex AI -> Gemini setup and wants to minimize billing mistakes.

## Goal

Set up Vertex AI in a way that:

- uses a Google Cloud project
- uses Vertex AI, not Gemini API direct access
- prefers service-account JSON for first-time setup
- keeps model routing on `google-vertex/...`
- validates with one tiny request before wider use
- explicitly checks billing / credits after the test

## Use this skill when

- the machine is a fresh or mostly fresh OpenClaw setup
- the user wants to use Google free credits or trial credits safely
- the user is unsure whether to use ADC, API keys, or service accounts
- the user wants a repeatable first-time setup process
- the user wants to avoid accidental extra spend from the wrong provider path

## Do not use this skill when

- the task is only to switch between already working local models
- the task is only to clean logs or backups
- the user only wants Gemini API direct access and does not care about Vertex AI billing rules

## Required inputs

- target Google Cloud project ID
- confirmation that billing / credits are attached to that project
- a local path where a service-account JSON file may be stored
- permission to inspect current OpenClaw config files

## Workflow

1. Audit the current machine state.
2. Confirm the target Google Cloud project and billing intent.
3. Prefer a new service-account JSON path for first setup.
4. Configure OpenClaw to use only `google-vertex/...` models for this setup.
5. Run one minimal test request.
6. Tell the user exactly what to check in Google Cloud Billing.
7. Only after billing looks correct should broader rollout happen.

## Audit checklist

Inspect and summarize:

- whether `gcloud` is installed
- whether old `google`, `gemini`, or `google-vertex` model/provider entries already exist
- whether old Gemini API keys are present
- whether ambiguous ADC / OAuth state exists
- whether the current OpenClaw config already lists `google-vertex/...` models

If old Google paths exist, list them before changing anything.

## Preferred first-time auth path

For first-time setup, prefer:

- Google Cloud project
- Vertex AI API enabled
- dedicated service account
- dedicated service-account JSON file

Do not default to:

- Gemini API key
- mixed `google/...` and `google-vertex/...` models
- unclear old ADC state
- “it worked once on this machine” assumptions

If ADC is used later, say so explicitly. For first-time setup, JSON is the preferred path because it is easier to reason about and easier to verify against a specific project.

## Model routing rules

When configuring models, keep them on the Vertex provider path only:

- `google-vertex/gemini-3.1-pro-preview`
- `google-vertex/gemini-3-pro-preview`
- `google-vertex/gemini-2.5-pro`
- `google-vertex/gemini-2.5-flash`

Do not silently substitute:

- `google/...`
- Gemini API direct routes
- partner models when the user specifically wants to stay within likely credit-covered Google-native usage

## Cost-safety guardrails

- Use one tiny verification request only.
- Do not enable multiple Google models everywhere before that test is checked.
- Do not claim “credit-safe” unless both of these are true:
  - the Vertex request succeeded
  - the user has been told to verify the billing line item
- If the user wants to preserve free credits, bias toward Google-native Vertex Gemini models and avoid partner-model assumptions.

## Minimal verification

After configuration, run one minimal request and report:

- actual provider
- actual model
- whether the call succeeded
- which project the setup is intended to use
- which auth path is active

## Starter template rule

If the user wants a quick starter config, prefer the smallest public-safe reference first.

- give them the local-only env placeholders
- give them the minimal `google-vertex/...` model fragment
- avoid inventing a larger config dump unless the machine state requires it
- keep any real JSON path or secret material outside the repository

Then tell the user to verify in Google Cloud Billing:

- service line item is `Vertex AI`
- charge belongs to the intended project
- credit / trial balance is applied as expected

## Required report format

Return:

- current machine state
- current Google path in use
- target project
- auth method
- JSON path
- configured `google-vertex/...` models
- minimal test result
- billing checks to perform next

## Guardrails

- Do not present Gemini API direct setup as equivalent to Vertex AI setup.
- Do not say setup is complete before the minimal test.
- Do not say billing is correct unless the user checks the billing console.
- Do not reuse ambiguous old auth state without stating it.
- Do not broaden rollout across many agents until the tiny test is confirmed.

## Reference

For a compact execution and handoff checklist, read [references/vertex-first-setup-checklist.md](references/vertex-first-setup-checklist.md).

For the shortest public-safe starter config, read [references/minimal-vertex-reference-config.md](references/minimal-vertex-reference-config.md).
