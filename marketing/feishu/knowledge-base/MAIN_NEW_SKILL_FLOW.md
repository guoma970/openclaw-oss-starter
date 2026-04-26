# Main New Skill Flow

Use this page as the standard process when a new skill is added and may need
public release.

## Goal

Let `main` control the full lifecycle of a new skill:

- local creation
- structure check
- repository update
- public release sync
- knowledge-base update

Default repository context:

- local repository path: `/Users/<your-user>/<private-path>`
- GitHub repository: `guoma970/openclaw-oss-starter`

## Standard flow

1. `main` receives the request for a new skill
2. `main` creates or updates the skill locally
3. `main` checks whether the skill is public-safe
4. `main` confirms the required files exist
5. `main` updates repository docs and summaries if needed
6. `main` validates the repository
7. `main` decides whether the skill should be published
8. `main` dispatches public sync to `media`
9. `media` handles GitHub-facing sync, ClawHub sync, and Feishu knowledge-base sync as needed
10. `main` returns the final release summary

## Minimum structure check

For a publishable skill, `main` should verify:

- `SKILL.md`
- `README.md`
- `agents/openai.yaml`
- any required examples or release notes

## Public sync checklist

When public sync is needed, `main` should ask `media` to check:

- GitHub homepage or skill listing updates
- ClawHub publish or version bump
- Feishu knowledge-base page updates
- outward-facing publishing copy

## Feishu main chat template

```text
请从 main 派发一次新 skill 上线流程，交给 media 执行公开同步部分。
要求：
1. 先在本地完成 skill 结构检查与仓库更新。
2. 如满足 public-safe 条件，再同步 GitHub、ClawHub、飞书知识库。
3. 最后返回版本、链接和后续建议。
```
