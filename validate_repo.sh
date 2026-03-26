#!/usr/bin/env bash
set -euo pipefail

required=(
  "README.md"
  "LICENSE"
  "SECURITY.md"
  "CHANGELOG.md"
  "RELEASES.md"
  "cron/codex_quota_autoswitch.sh"
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
