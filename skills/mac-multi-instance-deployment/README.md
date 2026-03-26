# Mac 多实例部署

A compact, public-safe OpenClaw skill for generic Mac-based multi-instance
deployment, boundary setup, and pack hygiene.

Published on ClawHub as `mac-multi-instance-deployment@1.0.3`.

## Quickstart

1. Copy `config/local-multi-instance.example.env` to a private location.
2. Replace the placeholder workspace roots with your own Mac paths.
3. Keep the instance map generic: `main`, `workbench`, `publish`, `archive`, `private`.
4. Review `references/instances.md`.
5. Run `./validate_repo.sh` and `./generate_public_pack.sh --dry-run`.

## Included files

```text
skills/
  mac-multi-instance-deployment/
    SKILL.md
    README.md
    CUSTOMIZATION.md
    examples/
      README.md
      setup-example.md
      routing-example.md
      validation-example.md
    agents/
      openai.yaml
```

`SKILL.md` is the main entrypoint. `README.md` is the compact overview.
`CUSTOMIZATION.md` captures safe adaptation notes, and `agents/openai.yaml`
provides UI metadata.

## Safety boundaries

Keep this skill public-safe:

- no real names
- no household-specific roles
- no private IDs or account data
- no sensitive schedules or secrets
- no private runtime state in public packs

## Example pack

See [examples/README.md](./examples/README.md) for the shortest path and the
full example flow.

## Release notes

For the current release note, see [releases/1.0.3.md](./releases/1.0.3.md).
For the next lightweight plan, see [releases/1.0.4.md](./releases/1.0.4.md).
For the version history, see [CHANGELOG.md](./CHANGELOG.md).

## Support and customization

This skill is intended to stay generic and reusable.

If you later want a custom version, adapt:

- instance labels
- workspace roots
- pack inclusion rules
- boundary wording

For public use, keep the skill non-identifying. For custom work, keep the
shared template clean and move private details into a separate copy.

For safe adaptation notes, see [CUSTOMIZATION.md](./CUSTOMIZATION.md).
