# Example Workflow

This example shows a small, public-safe local workflow that fits the repository
layout.

## Scenario

You want to keep a local AI workspace organized with a clear boundary between:

- routing rules
- release notes
- private runtime state
- reusable shell helpers

## Steps

1. Read the routing docs in `references/instances.md`.
2. Review the boundary docs in `rules-fix-20260323/`.
3. Run `./validate_repo.sh` to verify the public-safe file set.
4. Run `./generate_public_pack.sh` to produce a release-ready bundle.
5. If Codex quota is low, use `./cron/codex_quota_autoswitch.sh`.

## Expected result

- public files stay in version control
- private runtime state stays local
- release artifacts are created in `dist/`

