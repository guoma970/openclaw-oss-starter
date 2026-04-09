# Media Sync Command

## Purpose

Run one command to let `media` sync the OpenClaw project knowledge-base pages
to the Feishu parent directory.

## Default target

The script defaults to:

- `11_OpenClaw开源项目`
- https://www.feishu.cn/wiki/CLJFwc9l8ik7IRkpi8bcPgAMn6U

## Command

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_media_sync.sh
```

## Optional target override

If the parent directory changes, pass a different parent URL:

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_media_sync.sh "https://www.feishu.cn/wiki/your-parent-url"
```

## Expected behavior

- existing pages are updated
- missing pages are created
- only the listed project pages are touched
- `media` returns page URLs after sync
