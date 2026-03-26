#!/usr/bin/env bash
set -euo pipefail

show_help() {
  cat <<'EOF'
Usage: generate_public_pack.sh [--list|--dry-run|--help]

Build a tar.gz archive that includes the public-safe repo files and a manifest.

Environment:
  OPENCLAW_PUBLIC_PACK_NAME    Archive name prefix (default: openclaw-oss-starter-public-pack)
  OPENCLAW_PUBLIC_PACK_OUTPUT  Output directory (default: dist)

Options:
  -h, --help     Show this help text.
  --list         Print the files that would be packed and exit.
  --dry-run      Print the target archive and files without creating anything.
EOF
}

mode="${1:-}"

if [[ "$mode" == "-h" || "$mode" == "--help" ]]; then
  show_help
  exit 0
fi

pack_name="${OPENCLAW_PUBLIC_PACK_NAME:-openclaw-oss-starter-public-pack}"
output_dir="${OPENCLAW_PUBLIC_PACK_OUTPUT:-dist}"
stamp="$(date +%Y%m%d-%H%M%S)"
archive="${output_dir}/${pack_name}-${stamp}.tar.gz"
manifest="${output_dir}/${pack_name}-${stamp}.manifest.txt"

mkdir -p "$output_dir"

files=(
  "README.md"
  "INSTALL.md"
  "LICENSE"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CHANGELOG.md"
  "RELEASES.md"
  "validate_repo.sh"
  "generate_public_pack.sh"
  "cron/codex_quota_autoswitch.sh"
  "examples"
  "config"
  "references"
  "rules-fix-20260323/main_index.md"
  "rules-fix-20260323/family_boundary.md"
  "rules-fix-20260323/business_MEMORY_PUBLIC.md"
  "rules-fix-20260323/family_MEMORY_PUBLIC.md"
  "rules-fix-20260323/media_MEMORY_PUBLIC.md"
  "releases/0.1.0.md"
  "releases/0.1.1.md"
  "releases/0.1.2.md"
  "releases/0.1.3.md"
)

if [[ "$mode" == "--list" ]]; then
  printf '%s\n' "${files[@]}"
  exit 0
fi

if [[ "$mode" == "--dry-run" ]]; then
  printf 'Would create archive: %s\n' "${output_dir}/${pack_name}-${stamp}.tar.gz"
  printf 'Would write manifest: %s\n' "${output_dir}/${pack_name}-${stamp}.manifest.txt"
  printf 'Would include:\n'
  printf '  %s\n' "${files[@]}"
  exit 0
fi

tar -czf "$archive" "${files[@]}"
{
  printf 'archive=%s\n' "$archive"
  printf 'files=\n'
  printf '%s\n' "${files[@]}"
} > "$manifest"

printf 'Created public pack: %s\n' "$archive"
printf 'Manifest: %s\n' "$manifest"
