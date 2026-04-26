#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT_DIR"

required=(
  "README.md"
  "INSTALL.md"
  "LICENSE"
  "SECURITY.md"
  "CONTRIBUTING.md"
  "PUBLIC_SAFE_CHECKLIST.md"
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
  "releases/0.1.9.md"
  "skills/family-homework-pomodoro/SKILL.md"
  "skills/family-homework-pomodoro/README.md"
  "skills/family-homework-pomodoro/agents/openai.yaml"
  "skills/openclaw-vertex-credit-safe-setup/SKILL.md"
  "skills/openclaw-vertex-credit-safe-setup/README.md"
  "skills/openclaw-vertex-credit-safe-setup/CUSTOMIZATION.md"
  "skills/openclaw-vertex-credit-safe-setup/agents/openai.yaml"
  "skills/openclaw-vertex-credit-safe-setup/examples/README.md"
  "skills/openclaw-vertex-credit-safe-setup/releases/1.0.0.md"
  "skills/openclaw-vertex-credit-safe-setup/releases/1.0.1.md"
  "skills/openclaw-vertex-credit-safe-setup/releases/1.0.2.md"
)

status=0

printf '== Required files ==\n'
for path in "${required[@]}"; do
  if [[ -e "$path" ]]; then
    printf 'OK  %s\n' "$path"
  else
    printf 'MISS %s\n' "$path" >&2
    status=1
  fi
done

if [[ -d examples ]]; then
  printf 'OK  examples/\n'
else
  printf 'MISS examples/\n' >&2
  status=1
fi

printf '\n== Script syntax ==\n'
script_status=0
if command -v zsh >/dev/null 2>&1; then
  zsh -n cron/codex_quota_autoswitch.sh || script_status=1
else
  printf 'WARN zsh not found; skipped cron/codex_quota_autoswitch.sh syntax check\n'
fi
bash -n generate_public_pack.sh || script_status=1
bash -n examples/pack_and_validate.sh || script_status=1
if [[ $script_status -eq 0 ]]; then
  printf 'OK  shell syntax\n'
else
  printf 'FAIL shell syntax\n' >&2
  status=1
fi

printf '\n== Public-safe sensitive scan ==\n'
scan_targets=(
  "README.md"
  "SECURITY.md"
  "CONTRIBUTING.md"
  "PUBLIC_SAFE_CHECKLIST.md"
  "marketing"
  "config"
  "cron"
  "scripts"
  "examples"
  "skills"
  ".github"
)

existing_targets=()
for target in "${scan_targets[@]}"; do
  [[ -e "$target" ]] && existing_targets+=("$target")
done

# Concrete-value patterns. Keep this stricter than generic policy words so
# public-safe docs may still say "do not commit tokens" without failing.
sensitive_pattern='/Users/(ztl|business|guoma970)|/Users/[A-Za-z0-9._-]+/Documents/New project|oc_[0-9a-f]{8,}|ou_[0-9a-f]{8,}|chat:oc_|CLJFwc9l8ik7IRkpi8bcPgAMn6U|Sytfw4XsSiE4xRkPmJCcxFxrnqg|PI6UdL9rUoKt5nxBFiHcGNscn5d|7617444927789616317|ghp_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,}|xox[baprs]-[A-Za-z0-9-]{10,}|AIza[0-9A-Za-z_-]{20,}|sk-[A-Za-z0-9]{20,}|https://www\.feishu\.cn/wiki/[A-Za-z0-9]{12,}|kotovela-hub|Kotovela Hub|real-run|real_run'

if grep -RInE --exclude=PUBLIC_SAFE_CHECKLIST.md "$sensitive_pattern" "${existing_targets[@]}" 2>/dev/null; then
  printf 'FAIL public-safe sensitive scan\n' >&2
  status=1
else
  printf 'OK  no concrete sensitive patterns found\n'
fi

printf '\n== Public-safe positioning check ==\n'
position_status=0
grep -qi 'public-safe' README.md || position_status=1
grep -qi 'public-safe' SECURITY.md || position_status=1
grep -qi 'public-safe' CONTRIBUTING.md || grep -qi 'public repository' CONTRIBUTING.md || position_status=1
grep -qi 'private paths\|internal group IDs\|live workspace payloads' CONTRIBUTING.md || position_status=1
if [[ $position_status -eq 0 ]]; then
  printf 'OK  README/SECURITY/CONTRIBUTING mention public-safe boundaries\n'
else
  printf 'FAIL README/SECURITY/CONTRIBUTING public-safe boundary check\n' >&2
  status=1
fi

printf '\n== Result ==\n'
if [[ $status -eq 0 ]]; then
  printf 'Repository validation passed.\n'
else
  printf 'Repository validation failed.\n' >&2
fi

exit "$status"
