# Media Sync Command

## Purpose

Run one command to let `media` sync the OpenClaw project knowledge-base pages
to the Feishu parent directory.

## Default target

The script defaults to:

- `11_OpenClaw开源项目`
- https://www.feishu.cn/wiki/<FEISHU_PARENT_NODE_TOKEN>

## Command

```bash
bash /Users/<your-user>/<private-path>
```

## Optional target override

If the parent directory changes, pass a different parent URL:

```bash
bash /Users/<your-user>/<private-path> "https://www.feishu.cn/wiki/your-parent-url"
```

## Expected behavior

- existing pages are updated
- missing pages are created
- only the listed project pages are touched
- `media` returns page URLs after sync
