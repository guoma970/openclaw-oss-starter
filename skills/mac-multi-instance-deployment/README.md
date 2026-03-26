# Mac 多实例部署

A public-safe OpenClaw skill for generic Mac-based multi-instance deployment,
boundary setup, sample config, and packaging hygiene.

Published on ClawHub as `mac-multi-instance-deployment@1.0.3`.

## What it does

This skill supports a simple local deployment loop:

- define generic instance roles
- assign workspace roots on macOS
- keep routing and shared indexes separate from private runtime state
- update sample config and boundary notes
- validate that public packs exclude private files

## Quickstart

1. Copy `config/local-multi-instance.example.env` into a private location.
2. Replace the placeholder workspace roots with your own Mac paths.
3. Keep the instance map generic: `main`, `workbench`, `publish`, `archive`, `private`.
4. Run `./validate_repo.sh` and `./generate_public_pack.sh --dry-run`.
5. Review `references/instances.md` before publishing.

## Why it exists

It is a reusable template for:

- Mac local deployment setups
- OpenClaw-style multi-instance layouts
- public-safe boundary documentation
- sample config and packaging workflows

## Where to use it

- local Mac workspace planning
- multi-instance OpenClaw demos
- public-safe deployment documentation
- release packaging checks

## Safety boundaries

Keep this skill public-safe:

- no real names
- no household-specific roles
- no private IDs or account data
- no sensitive schedules or secrets
- no private runtime state in public packs

## File structure

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

`SKILL.md` is the main skill entrypoint. `README.md` is for human readers,
`CUSTOMIZATION.md` describes safe adaptation patterns, and `agents/openai.yaml`
provides UI metadata.

## Examples

The example pack shows one generic Mac multi-instance flow:

- `quickstart.md` for the shortest possible setup path
- `setup-example.md` for workspace roots and instance labels
- `routing-example.md` for where each instance should route work
- `validation-example.md` for pack checks and public-safe validation

For a quick index, see [examples/README.md](./examples/README.md).
For the shortest path, see [examples/quickstart.md](./examples/quickstart.md).

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
