# Main Periodic Sync

Use this flow when you want `main` to periodically check whether the project
needs sync work across GitHub, ClawHub, and the Feishu knowledge base.

## Goal

Have one recurring check that:

- starts from `main`
- reviews current project state
- decides whether public docs or publishing assets need refresh
- dispatches execution to `media` when sync is needed

## Command

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_main_periodic_check.sh
```

## Suggested schedule

- daily for active launch periods
- weekly for maintenance periods

## What it checks

- GitHub-facing README and project summary alignment
- ClawHub version and description consistency
- Feishu knowledge-base page freshness
- publishing copy freshness
