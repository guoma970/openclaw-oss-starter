# Main Routing Rules

Use these rules when the Feishu `main` chat window is the entry point for
Codex work.

## Role model

- `main`: task intake, classification, dispatch, final summary
- `media`: local execution instance
- `小果`: Feishu bot name used by `media`
- for this project, default public-sync path is `main -> media / 小果`

## Default repository context

Unless the user explicitly names another repository, `main` should assume:

- local repository path: `/Users/<your-user>/<private-path>`
- GitHub repository: `guoma970/openclaw-oss-starter`
- default branch: `main`

## Routing classes

### 1. Knowledge-base tasks

Send to `media` when the request is about:

- Feishu knowledge-base page creation
- Feishu knowledge-base page updates
- project documentation sync into Feishu
- status pages, publishing pages, or application pages

Typical language:

- 同步知识库
- 更新项目总览
- 新建飞书页面

### 2. Publishing tasks

Send to `media` when the request is about:

- GitHub-facing project updates
- ClawHub publishing or version checks
- outward-facing publishing copy
- release notes and short descriptions

Typical language:

- 发布 skill
- 检查 ClawHub 版本
- 更新 GitHub 首页
- 整理对外文案

### 3. Code tasks

Keep under `main` when the request is about:

- repository code edits
- scripts
- workflow tooling
- validation or repo structure updates

Typical language:

- 改脚本
- 新增 skill
- 修 README
- 跑校验

If a code task also needs public sync, let `main` do the code work first, then
dispatch the sync portion to `media`.

Do not reroute this project's Feishu sync to another instance unless the user
explicitly asks for a different executor.

### 4. Combined tasks

For mixed requests:

1. `main` identifies the code or content delta
2. `main` handles local repository changes as needed
3. `main` dispatches publishing or Feishu sync to `media`
4. `main` returns a combined report

## Return format

Recommended completion format:

1. what changed
2. which executor handled it
3. relevant links
4. next action if any
