# Public-safe Checklist

Use this checklist before pushing or publishing any public OpenClaw repository.

## 1. Repository positioning

- [ ] README first screen says the repo is public-safe, demo, mock, template, or dry-run only.
- [ ] README does not imply the repo is production-ready unless it actually is.
- [ ] SECURITY explains what must never be committed.
- [ ] CONTRIBUTING tells contributors not to add private runtime state or live payloads.

## 2. Required public-safe exclusions

The public repo must not contain:

- [ ] API keys, access tokens, personal access tokens, webhook secrets, or OAuth credentials.
- [ ] Feishu/Lark real wiki/doc/node tokens, tenant tokens, chat IDs, open IDs, or internal group IDs.
- [ ] Local private paths such as `/Users/<real-user>/...`.
- [ ] Private memory files, heartbeat state, workspace-only instructions, or internal runbooks.
- [ ] Customer data, consultant data, real business payloads, or project-specific live execution data.
- [ ] Internal/private repository names or internal product execution logic.

## 3. Scan patterns

Run the reusable validator:

```bash
bash validate_repo.sh
```

For manual spot checks, search for these patterns:

```bash
grep -RInE '/Users/[A-Za-z0-9._-]+|oc_[0-9a-f]{8,}|ou_[0-9a-f]{8,}|chat:oc_|doc_token|tenant_token|secret|password|api[_ -]?key|ghp_[A-Za-z0-9]|xox[baprs]-|AIza[0-9A-Za-z_-]{20,}' . --exclude-dir=.git
```

Feishu wiki URL tokens should be placeholders, not real values:

```text
https://www.feishu.cn/wiki/<FEISHU_PAGE_NODE_TOKEN>
```

## 4. Placeholder rules

Allowed placeholders:

- `<FEISHU_PARENT_NODE_TOKEN>`
- `<FEISHU_PAGE_NODE_TOKEN_01>`
- `<FEISHU_WIKI_SPACE_ID>`
- `/Users/<your-user>/<private-path>`
- `your-token-here`
- `example.com`

Not allowed:

- Real Feishu wiki/doc/node IDs.
- Real `/Users/ztl/...` or any other real local user path.
- Real GitHub / Feishu / OpenAI / Google tokens.
- Real internal group IDs.

## 5. Directory-specific checks

For repos with Feishu publishing templates, always inspect:

- `marketing/feishu/knowledge-base/`
- `config/`
- `cron/`
- `.github/`
- `scripts/`

These directories may contain useful public templates, but must stay sanitized.

## 6. Acceptance statement

A public-safe review is complete only when you can say:

> No token / secret / private path / internal group ID / real Feishu token / customer payload was found. README, SECURITY, CONTRIBUTING, scripts, docs, and config match public-safe positioning.
