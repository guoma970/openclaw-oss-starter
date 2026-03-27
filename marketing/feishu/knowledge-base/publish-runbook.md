# Publish Runbook

## Purpose

This runbook turns the knowledge-base pages into a structured input package for
automatic execution.

## Execution owner

- `media` handles Feishu knowledge-base publishing and ongoing page updates.
- `xiaoguo` is treated as the knowledge-base maintenance role name of `media`.

## Required target fields

Before execution, fill:

- the root target and directory targets in
  [targets.template.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/targets.template.yaml)
- and confirm the routing file in
  [directory-rules.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/directory-rules.yaml)
matches those directory keys.

## Routing rule

Publishing must follow
[directory-rules.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/directory-rules.yaml).

`media` should not guess where a page goes. Each page key must map to one
configured directory target before publishing.

## One-file target input

Use
[targets.template.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/targets.template.yaml)
as the single place to fill Feishu targets before execution.

## Publish order

1. 项目总览
2. 对外发布文案
3. 申请与介绍素材

## Expected result

- three created or updated Feishu pages
- one returned doc URL per page
- one short execution summary
