# Main Project Context

Use this page as the default project context for GitHub-facing work routed
through `main`.

## Default project

- local repository path: `/Users/ztl/.openclaw/workspace-main/openclaw-oss-starter`
- GitHub repository: `guoma970/openclaw-oss-starter`
- default branch: `main`

## Public sync targets

- GitHub repository: `guoma970/openclaw-oss-starter`
- ClawHub skills published from this repository
- Feishu knowledge-base parent:
  `https://www.feishu.cn/wiki/CLJFwc9l8ik7IRkpi8bcPgAMn6U`
- default public-sync executor: `media`
- Feishu bot name used for that executor: `小果`

## Operating rule

Unless the user explicitly names another repository, `main` should assume that
GitHub project work refers to this repository and this workspace.

Unless the user explicitly names another executor, Feishu knowledge-base sync,
public-facing copy sync, and release-facing sync should route to `media`.

## When main should still ask

`main` should still request clarification only if:

- the user explicitly mentions a different repo
- the task references a different owner or GitHub URL
- the task mentions a different local workspace
- the task is ambiguous in a way that would risk changing the wrong project
