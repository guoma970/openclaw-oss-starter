# Xiaoguo Sync Command

## Purpose

Use the knowledge-base maintenance path to sync the OpenClaw project pages into
the Feishu directory.

`media` is the local instance / directory name.

`小果` is the Feishu bot name used by that same instance.

## Command

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_xiaoguo_sync.sh
```

## Optional target override

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_xiaoguo_sync.sh "https://www.feishu.cn/wiki/your-parent-url"
```

## Notes

- This path is intended for knowledge-base maintenance work under `media`.
- It uses the same source files as the media sync path.
- The current environment routes through the `media` agent session.
- In Feishu, the visible bot name is `小果`.
