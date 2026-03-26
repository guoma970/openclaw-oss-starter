#!/bin/zsh
set -euo pipefail

# Auto-switch execution agents to MiniMax when OpenAI Codex remaining quota is low.
show_help() {
  cat <<'EOF'
Usage: codex_quota_autoswitch.sh [threshold]

Switch family/media/business agents to MiniMax when Codex quota falls below
the given percentage threshold.

Arguments:
  threshold   Optional integer percent threshold. Default: 20
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  show_help
  exit 0
fi

# Default threshold: 20 (%)
THRESHOLD="${1:-20}"
LOG_FILE="${HOME}/.openclaw/logs/codex-quota-autoswitch.log"
TS="$(date '+%Y-%m-%d %H:%M:%S')"

mkdir -p "$(dirname "$LOG_FILE")"

status_output="$(openclaw models status 2>/dev/null || true)"
percent="$(printf "%s\n" "$status_output" | sed -nE 's/.*openai-codex usage:.* ([0-9]+)% left.*/\1/p' | head -n1)"

if [[ -z "${percent}" ]]; then
  echo "[$TS] WARN: cannot parse codex quota percentage from models status" >> "$LOG_FILE"
  exit 0
fi

if (( percent < THRESHOLD )); then
  target="minimax-portal/MiniMax-M2.5-highspeed"
  for agent_id in family media business; do
    openclaw models --agent "$agent_id" set "$target" >/dev/null 2>&1 || true
  done
  echo "[$TS] ACTION: quota=${percent}% < ${THRESHOLD}%, switched family/media/business -> ${target}" >> "$LOG_FILE"
else
  echo "[$TS] OK: quota=${percent}% >= ${THRESHOLD}%, no switch" >> "$LOG_FILE"
fi
