# Public-safe validation rules

## Required posture

A public repository must be safe to browse, fork, clone, and discuss publicly.

It should only contain:

- demo data
- mock examples
- dry-run workflows
- public documentation
- reusable templates

## Blocked content

Do not commit:

- real API keys, tokens, passwords, OAuth secrets, or webhook secrets
- real Feishu/Lark wiki, doc, node, tenant, chat, or open-user identifiers
- private local paths such as real `/Users/<name>/...` paths
- private memory files or workspace-only instructions
- customer data, consultant data, or real business payloads
- project-specific internal execution logic
- private repository names or private product code names

## Allowed placeholders

Use placeholders instead of real values:

```text
<FEISHU_PARENT_NODE_TOKEN>
<FEISHU_PAGE_NODE_TOKEN_01>
<FEISHU_WIKI_SPACE_ID>
/Users/<your-user>/<private-path>
ghp_EXAMPLE_PLACEHOLDER
oc_example
```

## Required docs

Each public repository should have:

- `README.md` — clear public-safe positioning on the first screen
- `SECURITY.md` — what must never be committed
- `CONTRIBUTING.md` — contributor rules for avoiding private state
- `PUBLIC_SAFE_CHECKLIST.md` — manual checklist and scan patterns

## Acceptance criteria

A repository passes public-safe review only when:

- `bash validate_repo.sh` passes locally
- GitHub Actions passes on `main`
- a temporary bad PR fails CI
- the bad PR receives an automatic risk comment
- no bad file is merged into `main`
