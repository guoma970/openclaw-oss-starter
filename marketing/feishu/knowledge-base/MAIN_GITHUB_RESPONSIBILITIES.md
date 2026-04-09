# Main GitHub Responsibilities

Use this page as the default rule for GitHub-facing project work.

## Core principle

All GitHub project work should enter through `main` first.

Default assumption:

- local repository path: `/Users/ztl/.openclaw/workspace-main/openclaw-oss-starter`
- GitHub repository: `guoma970/openclaw-oss-starter`

If the user does not name another repository, `main` should use this project
context by default instead of blocking for missing repo identity.

`main` is responsible for:

- receiving the request
- identifying whether it is a code task, publishing task, or combined task
- deciding what must change locally in the repository
- deciding what must be dispatched to `media`
- returning the final summary

## What stays under main

`main` should directly handle:

- repository structure changes
- new skill creation
- README or docs edits
- script updates
- validation runs
- git staging, commits, and push decisions

## What main dispatches to media

After local repository work is clear, `main` should dispatch to `media` for:

- GitHub-facing presentation sync
- ClawHub publishing or release sync
- Feishu knowledge-base sync
- outward-facing publishing copy refresh

## Standard GitHub task flow

1. `main` receives the GitHub project task
2. `main` checks whether local repo changes are needed
3. `main` updates the repository if needed
4. `main` validates the result
5. `main` decides whether public sync is also needed
6. `main` dispatches sync work to `media`
7. `main` returns the combined result

## Short operating rule

If a task affects the repository, start with `main`.

If a task affects public presentation after repository work is done, let `main`
dispatch that part to `media`.

For the default repository context, see:

- [MAIN_PROJECT_CONTEXT.md](/Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/MAIN_PROJECT_CONTEXT.md)
