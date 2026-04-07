# Main Chat Command Templates

Use these templates when you want to start Codex work from the Feishu `main`
chat window.

## Working model

- `main` is the chat entry and orchestration hub
- `media` is the local execution instance
- `小果` is the Feishu bot name used by `media`

Default project context:

- local repository path: `/Users/ztl/Documents/New project`
- GitHub repository: `guoma970/openclaw-oss-starter`
- if no other repo is named, `main` should use this one

## Knowledge-base sync

```text
请从 main 派发一次 OpenClaw 开源项目知识库同步，交给 media 执行。
要求：
1. 更新 11_OpenClaw开源项目 目录下的标准页面。
2. 已存在则更新，不存在则创建。
3. 最后返回父目录和页面链接。
```

## Publishing check

```text
请从 main 派发一次项目发布检查，交给 media 执行。
要求：
1. 默认按 openclaw-oss-starter 项目处理，检查 GitHub README、ClawHub 版本、飞书知识库页面是否需要同步。
2. 如果需要同步，先整理差异，再执行更新。
3. 最后返回执行结果和后续建议。
```

## New skill publish flow

```text
请从 main 派发一次新 skill 发布流程，交给 media 执行。
要求：
1. 检查 skill 是否已具备 public-safe 结构。
2. 如满足条件，同步 GitHub、ClawHub、飞书知识库。
3. 输出发布结果、链接和需要人工确认的事项。
```

For the full checklist and sequence, see:

- [MAIN_NEW_SKILL_FLOW.md](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/MAIN_NEW_SKILL_FLOW.md)

## Marketing update

```text
请从 main 派发一次项目营销更新，交给 media 执行。
要求：
1. 生成最新对外发布文案。
2. 更新知识库中的对外发布文案页。
3. 给出适合 Feishu、X、小红书的短版摘要。
```

## Code task with public sync

```text
请从 main 处理一次代码任务。
要求：
1. 默认在 /Users/ztl/Documents/New project 对应的 openclaw-oss-starter 仓库内完成代码或文档修改。
2. 如果修改影响 GitHub 展示、ClawHub 描述或飞书知识库，再派发给 media 做同步。
3. 最后返回代码变更和公开同步结果。
```
