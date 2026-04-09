# Main Publish Flow

Use this flow when you want `main` to orchestrate a broader release or sync
cycle from one entry point.

## Scope

`main` can coordinate:

- GitHub-facing repository updates
- ClawHub release checks
- Feishu knowledge-base sync
- marketing copy refresh

## Execution model

1. `main` receives the task
2. `main` identifies which outputs need to change
3. `main` dispatches execution to `media`
4. `media` updates public channels and the Feishu knowledge base
5. `main` returns a short summary

## Command

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_main_publish_flow.sh
```

## Optional target override

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_main_publish_flow.sh "https://www.feishu.cn/wiki/CLJFwc9l8ik7IRkpi8bcPgAMn6U"
```
