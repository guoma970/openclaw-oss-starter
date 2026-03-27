# Publish Runbook

## Purpose

This runbook turns the knowledge-base pages into a structured input package for
automatic execution.

## Execution owner

- `xiaoguo` handles Feishu knowledge-base publishing and ongoing page updates.

## Required target fields

Before execution, fill one of:

- `wiki_space`
- `wiki_node`

in [publish-manifest.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/publish-manifest.yaml).

## Publish order

1. 项目总览
2. 对外发布文案
3. 申请与介绍素材

## Expected result

- three created or updated Feishu pages
- one returned doc URL per page
- one short execution summary
