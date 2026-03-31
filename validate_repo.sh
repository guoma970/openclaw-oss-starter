#!/usr/bin/env bash
set -euo pipefail

required=(
  "README.md"
  "INSTALL.md"
  "LICENSE"
  "SECURITY.md"
  "CHANGELOG.md"
  "RELEASES.md"
  "cron/codex_quota_autoswitch.sh"
  "generate_public_pack.sh"
  "examples/pack_and_validate.sh"
  "config/local-multi-instance.example.env"
  "examples/workflow.md"
  "releases/0.1.3.md"
  "releases/0.1.4.md"
  "releases/0.1.5.md"
  "releases/0.1.6.md"
  "releases/0.1.7.md"
  "releases/0.1.8.md"
  "skills/family-homework-pomodoro/SKILL.md"
  "skills/family-homework-pomodoro/README.md"
  "skills/family-homework-pomodoro/agents/openai.yaml"
  "skills/openclaw-vertex-credit-safe-setup/SKILL.md"
  "skills/openclaw-vertex-credit-safe-setup/README.md"
  "skills/openclaw-vertex-credit-safe-setup/CUSTOMIZATION.md"
  "skills/openclaw-vertex-credit-safe-setup/agents/openai.yaml"
  "skills/openclaw-vertex-credit-safe-setup/examples/README.md"
  "skills/openclaw-vertex-credit-safe-setup/releases/1.0.0.md"
)

missing=0

for path in "${required[@]}"; do
  if [[ -e "$path" ]]; then
    printf 'OK  %s\n' "$path"
  else
    printf 'MISS %s\n' "$path"
    missing=1
  fi
done

if [[ -d examples ]]; then
  printf 'OK  examples/\n'
else
  printf 'MISS examples/\n'
  missing=1
fi

if [[ $missing -eq 0 ]]; then
  printf 'Repository validation passed.\n'
else
  printf 'Repository validation failed.\n' >&2
fi

exit "$missing"
