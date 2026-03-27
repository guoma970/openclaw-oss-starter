# Preflight Checklist

## Before xiaoguo runs

- confirm `xiaoguo` has write permission to the target knowledge base
- fill
  [targets.template.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/targets.template.yaml)
- confirm each directory node points to the correct Feishu section
- keep all source pages public-safe
- do not publish if any target field is still a placeholder

## Minimum required fields

- one root target:
  - `wiki_space`
  - or `wiki_node`
- three directory nodes:
  - `project_status`
  - `publishing_assets`
  - `application_assets`

## Expected execution result

- 项目总览 is created or updated under `project_status`
- 对外发布文案 is created or updated under `publishing_assets`
- 申请与介绍素材 is created or updated under `application_assets`
- returned Feishu doc URLs are recorded for later updates
