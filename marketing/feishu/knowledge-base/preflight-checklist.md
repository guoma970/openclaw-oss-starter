# Preflight Checklist

## Before media runs

- confirm `media` has write permission to the target knowledge base
- confirm `channels.feishu.accounts.media.tools.doc = true`
- confirm the Feishu bot `小果` is the one bound to this execution path
- use
  [targets.yaml](/Users/<your-user>/<private-path>)
- confirm each directory node points to the correct Feishu section or approved root node
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
