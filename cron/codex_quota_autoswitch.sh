#!/bin/zsh
set -euo pipefail

# Auto-switch configured non-coding execution agents when OpenAI Codex quota is low.
show_help() {
  cat <<'EOF'
Usage: codex_quota_autoswitch.sh [threshold]

Switch configured non-coding agents when Codex quota falls below the given
percentage threshold.

Configuration:
  OPENCLAW_CODEX_THRESHOLD       Default threshold when no argument is provided
  OPENCLAW_QUOTA_SWITCH_TARGET   Model target to switch to
  OPENCLAW_QUOTA_SWITCH_AGENTS   Space-separated agent ids to update

Arguments:
  threshold   Optional integer percent threshold. Defaults to
              OPENCLAW_CODEX_THRESHOLD or 20
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  show_help
  exit 0
fi

# Default threshold: OPENCLAW_CODEX_THRESHOLD or 20 (%)
DEFAULT_THRESHOLD="${OPENCLAW_CODEX_THRESHOLD:-20}"
THRESHOLD="${1:-$DEFAULT_THRESHOLD}"
LOG_FILE="${HOME}/.openclaw/logs/codex-quota-autoswitch.log"
TS="$(date '+%Y-%m-%d %H:%M:%S')"
TARGET="${OPENCLAW_QUOTA_SWITCH_TARGET:-minimax-portal/MiniMax-M2.5}"
AGENTS_RAW="${OPENCLAW_QUOTA_SWITCH_AGENTS:-family media business}"

agent_ids=(${=AGENTS_RAW})
agent_summary="${(j:/:)agent_ids}"

mkdir -p "$(dirname "$LOG_FILE")"

status_output="$(openclaw models status 2>/dev/null || true)"
percent="$(printf "%s\n" "$status_output" | sed -nE 's/.*openai-codex usage:.* ([0-9]+)% left.*/\1/p' | head -n1)"

if [[ -z "${percent}" ]]; then
  echo "[$TS] WARN: cannot parse codex quota percentage from models status" >> "$LOG_FILE"
  exit 0
fi

if (( ${#agent_ids[@]} == 0 )); then
  echo "[$TS] WARN: no quota switch agents configured" >> "$LOG_FILE"
  exit 0
fi

if (( percent < THRESHOLD )); then
  for agent_id in "${agent_ids[@]}"; do
    openclaw models --agent "$agent_id" set "$TARGET" >/dev/null 2>&1 || true
  done
  echo "[$TS] ACTION: quota=${percent}% < ${THRESHOLD}%, switched ${agent_summary} -> ${TARGET}" >> "$LOG_FILE"
else
  echo "[$TS] OK: quota=${percent}% >= ${THRESHOLD}%, no switch" >> "$LOG_FILE"
fi
