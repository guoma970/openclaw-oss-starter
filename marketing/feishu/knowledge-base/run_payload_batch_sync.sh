#!/bin/zsh
set -euo pipefail

PAYLOAD_PATH="${1:-$(cd "$(dirname "$0")" && pwd)/payload-GH-20260417-02-R2.yaml}"
MODE="${BATCH_SYNC_MODE:-dry-run}"

if [[ ! -f "$PAYLOAD_PATH" ]]; then
  echo "payload not found: $PAYLOAD_PATH" >&2
  exit 1
fi

python3 - "$PAYLOAD_PATH" "$MODE" <<'PY'
import json, sys
from pathlib import Path

payload_path = Path(sys.argv[1])
mode = sys.argv[2]
text = payload_path.read_text(encoding='utf-8')


def parse_scalar(v):
    v = v.strip()
    if v in ('true', 'false'):
        return v == 'true'
    if len(v) >= 2 and ((v[0] == '"' and v[-1] == '"') or (v[0] == "'" and v[-1] == "'")):
        return v[1:-1]
    return v

root = {}
items = []
current_item = None
section = None
current_list_key = None

for raw in text.splitlines():
    if not raw.strip() or raw.lstrip().startswith('#'):
        continue
    indent = len(raw) - len(raw.lstrip(' '))
    line = raw.strip()

    if indent == 0 and line.endswith(':'):
        key = line[:-1]
        if key == 'items':
            section = 'items'
        else:
            section = key
            if key not in root:
                root[key] = {}
        current_list_key = None
        continue

    if section == 'items':
        if indent == 2 and line.startswith('- '):
            current_item = {}
            items.append(current_item)
            line = line[2:]
            if line:
                k, v = line.split(':', 1)
                current_item[k.strip()] = parse_scalar(v)
            continue
        if current_item is None:
            continue
        if indent == 4 and line.endswith(':'):
            key = line[:-1]
            current_item[key] = {}
            current_list_key = key
            continue
        if indent == 4 and ': ' in line:
            k, v = line.split(':', 1)
            current_item[k.strip()] = parse_scalar(v)
            current_list_key = None
            continue
        if indent == 6 and current_list_key and ': ' in line:
            k, v = line.split(':', 1)
            current_item[current_list_key][k.strip()] = parse_scalar(v)
            continue
    else:
        if section is None:
            continue
        target = root[section]
        if isinstance(target, dict):
            if indent == 2 and line.endswith(':'):
                key = line[:-1]
                target[key] = []
                current_list_key = key
                continue
            if indent == 2 and ': ' in line:
                k, v = line.split(':', 1)
                target[k.strip()] = parse_scalar(v)
                current_list_key = None
                continue
            if indent == 4 and line.startswith('- ') and current_list_key:
                target[current_list_key].append(parse_scalar(line[2:]))
                continue

plan = {
    'task_id': root.get('task_id'),
    'mode': mode,
    'payload_path': str(payload_path),
    'executor': root.get('kb_target', {}).get('executor'),
    'wiki_space': root.get('kb_target', {}).get('wiki_space'),
    'parent_wiki_node': root.get('kb_target', {}).get('parent_wiki_node'),
    'permission_blocker': root.get('permission_state', {}).get('blocker', True),
    'blocker_reason': root.get('permission_state', {}).get('blocker_reason'),
    'operations': [],
}

for item in items:
    routing = item.get('routing', {}) or {}
    plan['operations'].append({
        'key': item.get('key'),
        'source_file': item.get('source_file'),
        'title': item.get('feishu_page_name'),
        'page_type': item.get('page_type'),
        'sync_covered_by_default_script': item.get('sync_covered_by_default_script'),
        'permission_blocker': item.get('permission_blocker'),
        'mode': routing.get('mode'),
        'target_node_token': routing.get('existing_node_token') or routing.get('parent_node_token'),
        'target_obj_token': routing.get('existing_obj_token'),
    })

if mode != 'dry-run' and plan['permission_blocker']:
    print(json.dumps({
        'status': 'blocked',
        'reason': plan['blocker_reason'],
        'plan': plan,
    }, ensure_ascii=False, indent=2))
    sys.exit(2)

print(json.dumps({
    'status': 'dry-run' if mode == 'dry-run' else 'ready',
    'plan': plan,
}, ensure_ascii=False, indent=2))
PY
