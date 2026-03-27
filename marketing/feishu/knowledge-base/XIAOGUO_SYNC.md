# Xiaoguo Sync Command

## Purpose

Use the knowledge-base maintenance path to sync the OpenClaw project pages into
the Feishu directory.

`xiaoguo` is not treated as a separate executor here. It is the knowledge-base
maintenance role name of the same `media` executor.

## Command

```bash
bash /Users/ztl/Documents/New\ project/marketing/feishu/knowledge-base/run_xiaoguo_sync.sh
```

## Optional target override

```bash
bash /Users/ztl/Documents/New\ project/marketing/feishu/knowledge-base/run_xiaoguo_sync.sh "https://www.feishu.cn/wiki/your-parent-url"
```

## Notes

- This path is intended for knowledge-base maintenance work under `media`.
- It uses the same source files as the media sync path.
- The current environment routes through the `media` agent session.
- The instruction style is tailored for the `xiaoguo` maintenance role name.
