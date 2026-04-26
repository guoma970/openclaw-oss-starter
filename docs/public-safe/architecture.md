# Public-safe guardrails architecture

The public-safe guardrail has three layers:

1. **Detect** — `validate_repo.sh` scans required files, shell syntax, public-safe positioning, and concrete sensitive patterns.
2. **Block** — `.github/workflows/public-safe-validate.yml` runs on `pull_request` and `push` to `main`; any non-zero validator exit fails CI.
3. **Explain** — failed PR runs post or update a PR comment with matched risk lines and remediation guidance.

## Flow

```text
PR or main push
  -> GitHub Actions checkout
  -> bash validate_repo.sh
  -> PASS: CI success
  -> FAIL: collect MISS / FAIL / file:line matches
       -> PR only: create/update public-safe validation comment
       -> CI failure blocks merge
```

## Comment behavior

The workflow uses a stable marker:

```text
<!-- public-safe-validation-comment -->
```

When the same PR is updated, the bot updates the existing comment instead of creating many duplicate comments.

## What this catches

The reusable validator is tuned for concrete public-safety risks, including:

- real local private paths
- real Feishu/OpenClaw group or user IDs
- real-looking GitHub / Slack / Google / OpenAI token patterns
- real Feishu wiki URL node tokens
- project-specific private/internal execution markers

It intentionally allows policy language such as “do not commit tokens” so docs can explain rules without failing.
