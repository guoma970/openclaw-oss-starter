# Publish Runbook

## Purpose

This runbook turns the knowledge-base pages into a structured input package for
automatic execution.

## Execution owner

- `media` handles Feishu knowledge-base publishing and ongoing page updates.
- `media` is the local instance / directory name.
- `小果` is the Feishu bot name used by that instance.

## Required target fields

Before execution, confirm:

- the root target and directory targets in
  [targets.yaml](/Users/<your-user>/<private-path>)
- and confirm the routing file in
  [directory-rules.yaml](/Users/<your-user>/<private-path>)
matches those directory keys.

## Routing rule

Publishing must follow
[directory-rules.yaml](/Users/<your-user>/<private-path>).

`media` should not guess where a page goes. Each page key must map to one
configured directory target before publishing.

## One-file target input

Use
[targets.yaml](/Users/<your-user>/<private-path>)
as the single place to read the current Feishu targets before execution.

## Publish order

1. 项目总览
2. 对外发布文案
3. 申请与介绍素材

## Expected result

- three created or updated Feishu pages
- one returned doc URL per page
- one short execution summary
