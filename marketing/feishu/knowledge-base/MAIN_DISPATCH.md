# Main Dispatch Command

## Can main execute this work?

Yes. `main` can serve as the orchestration入口:

- `main` decides and dispatches
- `media` executes the Feishu knowledge-base sync
- `xiaoguo` is only the knowledge-base maintenance role name inside `media`

This is the recommended model when you want all work to start from the main
hub, while still keeping role boundaries clear.

## Command

```bash
bash /Users/ztl/Documents/New\ project/marketing/feishu/knowledge-base/run_main_dispatch.sh
```

## Optional target override

```bash
bash /Users/ztl/Documents/New\ project/marketing/feishu/knowledge-base/run_main_dispatch.sh "https://www.feishu.cn/wiki/your-parent-url"
```

## Recommendation

- Direct maintenance: use `run_media_sync.sh`
- Main-hub orchestration: use `run_main_dispatch.sh`
