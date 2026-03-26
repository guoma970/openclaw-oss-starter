# Mac Multi-Instance Layout

Generic, public-safe instance map for a Mac-based OpenClaw workspace.

## Instance Map

| Instance | Role | Keep Here |
|---|---|---|
| `main` | routing and shared indexes | boundary notes, shared references |
| `workbench` | active work and experiments | drafts, tests, temporary edits |
| `publish` | release output | public-safe packs, validated bundles |
| `archive` | read-only history | snapshots, reference material |
| `private` | local-only state | secrets, runtime data, credentials |

## Rules

- one instance per workspace root
- public docs stay in shared locations
- runtime state stays local
- private files never enter public packs

## Template Use

- keep `main` narrow
- send active edits to `workbench`
- export only validated files from `publish`
- use `archive` for historical snapshots
- keep secrets and credentials in `private`
