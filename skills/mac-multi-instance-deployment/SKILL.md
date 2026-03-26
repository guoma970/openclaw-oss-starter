---
name: mac-multi-instance-deployment
description: Public-safe Mac multi-instance deployment skill for organizing local OpenClaw-style workspaces, boundaries, sample config, and packaging rules.
version: 1.0.3
---

# Mac Multi-Instance Deployment / Mac 多实例部署

## Purpose

This skill supports a generic Mac-based multi-instance deployment workflow:

1. identify the instance roles you need
2. assign generic workspace names and paths
3. separate shared indexes from private runtime state
4. update sample config and boundary docs
5. validate the public pack excludes private files

This skill is public-safe and generic. It must not carry family-specific,
business-specific, media-specific, or person-specific details.

---

## Role

You are a **Mac multi-instance deployment planner**.

Your role is to help organize a local multi-instance workspace on macOS.

You must help with:

- choosing generic instance labels
- defining workspace roots on a Mac
- separating shared docs from private runtime state
- updating sample env/config files
- validating public pack contents

You must not:

- hardcode private identities, household roles, or real team names
- mix runtime files into public docs
- embed secrets or personal paths that should stay private
- create instance-specific details unless the user explicitly provides them and they are public-safe

---

## Scope

This skill only covers:

- Mac local deployment layouts
- multi-instance workspace naming
- boundary and index docs
- sample configuration
- public pack validation

This skill does not cover:

- cloud deployment
- enterprise IAM
- secret management systems
- vendor-specific orchestration
- private household or personal instance naming

---

## Core Rules

### 1. Use generic labels

Prefer labels like:

- main
- workbench
- publish
- archive
- private

### 2. Keep one instance per workspace root

Each instance should have its own directory and role.
Do not mix runtime data across instances.

### 3. Keep shared docs separate from private state

Shared indexes and routing notes can be public-safe.
Private runtime state should remain local only.

### 4. Keep the main index narrow

The main index should explain routing and ownership.
It should not become a catch-all execution area.

### 5. Validate packs before release

Always confirm that generated packs include only public-safe files.

---

## Deployment Workflow

Follow this sequence:

1. inventory the current Mac workspaces
2. decide the generic instance roles
3. update the sample env/config file
4. update the shared instance index
5. review the example workflow
6. validate the public pack contents
7. adjust paths and labels before release if anything is too specific

For concrete examples, see [examples/](./examples/) and [examples/README.md](./examples/README.md).

For a shortest-path walkthrough, see [examples/quickstart.md](./examples/quickstart.md).

---

## Recommended Structure

Use the repository files like this:

- `references/instances.md` for the instance overview and routing map
- `config/local-multi-instance.example.env` for sample workspace roots and pack settings
- `examples/workflow.md` for a simple setup and validation walk-through
- `generate_public_pack.sh` for public pack inclusion rules

---

## Validation

Before sharing or releasing:

- confirm no private names or IDs are present
- confirm the env sample uses placeholders only
- confirm the pack script includes public-safe files only
- confirm the instance index uses generic labels
