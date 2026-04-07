# GitHub 仓库维护与发布移交资料

## 目标

把 `openclaw-oss-starter` 的 GitHub 仓库维护与发布工作，整理成一份可直接交给专属线程承接的单页说明。

## 适用仓库

- 仓库名：`guoma970/openclaw-oss-starter`
- 本地路径：`/Users/ztl/Documents/New project`
- 默认分支：`main`

## 这条线程应负责什么

- GitHub 仓库展示维护
- README / profile-facing 资料更新
- 公开技能相关的 GitHub 提交判断
- Release note / changelog / tag 准备
- 与 ClawHub、飞书知识库的同步范围判断

## 不应在这里直接拍板的事

- 商业化敏感项目是否公开
- 私有内容是否抽象成公开 skill
- 国内平台账号的最终发布动作

这些仍应先给出建议，再由你拍板。

## GitHub 与 ClawHub 的关系

- GitHub：持续建设主阵地
- ClawHub：相对稳定的 skill 分发位

判断规则：

- 仓库展示、文档、规则、examples 更新：优先 GitHub
- skill 本身有实质提升：再考虑 ClawHub

参考：

- [41-github-clawhub-update-rhythm.md](/Users/ztl/Documents/New%20project/marketing/feishu/knowledge-base/41-github-clawhub-update-rhythm.md)
- [30-public-pipeline-sequence.md](/Users/ztl/Documents/New%20project/marketing/feishu/knowledge-base/30-public-pipeline-sequence.md)

## 标准公开顺序

```text
本地准备
-> GitHub
-> ClawHub
-> 飞书知识库
-> 对外文案 / 群内同步
```

## 本线程必须先看的规则

- [22-public-safe-skill-rules.md](/Users/ztl/Documents/New%20project/marketing/feishu/knowledge-base/22-public-safe-skill-rules.md)
- [23-prepublish-checklist.md](/Users/ztl/Documents/New%20project/marketing/feishu/knowledge-base/23-prepublish-checklist.md)
- [26-skill-tiering-rules.md](/Users/ztl/Documents/New%20project/marketing/feishu/knowledge-base/26-skill-tiering-rules.md)
- [27-publishing-decision-template.md](/Users/ztl/Documents/New%20project/marketing/feishu/knowledge-base/27-publishing-decision-template.md)
- [33-minimum-public-sync-actions.md](/Users/ztl/Documents/New%20project/marketing/feishu/knowledge-base/33-minimum-public-sync-actions.md)
- [43-feishu-knowledge-base-sync-trigger-rules.md](/Users/ztl/Documents/New%20project/marketing/feishu/knowledge-base/43-feishu-knowledge-base-sync-trigger-rules.md)

## 当前公开面状态

- GitHub 个人 `Bio` 已统一
- GitHub profile repo 已建立：`guoma970/guoma970`
- 主仓库 description 已统一
- ClawHub `Bio` 已统一
- 主仓库首页、banner、application pack 已整理

## 当前工作区边界

截至这份资料整理时，工作区里已经有一批**别的线程正在处理**的修改。  
GitHub 维护线程不要把它们顺手混进提交。

### 当前已存在的未收口改动

- `config/README.md`
- `config/local-multi-instance.example.env`
- `cron/codex_quota_autoswitch.sh`
- `marketing/application/project-description.md`
- `marketing/feishu/2026-03-27-launch.md`
- `marketing/feishu/2026-03-27-media-final.md`
- `marketing/feishu/knowledge-base/01-project-overview.md`
- `marketing/feishu/knowledge-base/02-publishing-copy.md`
- `marketing/feishu/knowledge-base/11-short-intro-pack.md`
- `marketing/feishu/knowledge-base/run_media_sync.sh`
- `assets/avatars/avatar-1024.jpg`
- `assets/avatars/avatar-512.jpg`
- `config/openclaw-feishu-group-routing.yaml`
- `marketing/feishu/knowledge-base/30-unified-ops-group-rules.md`
- `marketing/feishu/knowledge-base/31-ops-group-applicability-matrix.md`
- `marketing/feishu/knowledge-base/32-standard-group-message-templates.md`
- `marketing/media/`
- `scripts/`

### 处理原则

- 不因“看见改动”就全部提交
- 先判断是否属于本轮发布主题
- 先区分：
  - 可进 GitHub
  - 仅知识库沉淀
  - 仅本地保留

## 最近已经完成的提交

- `5d751f3` Add OpenAI application fillout guide
- `a5f912f` Add ultra-short application answers
- `2673d0c` Add Codex application pack
- `9d1af7f` Tighten main group reporting rules
- `7e01af8` Finalize main handover package
- `f2a46d3` Limit avatar assets to final exports

## 头像与资料资产规则

公开仓库只保留最终交付版本：

- `assets/avatars/avatar-1024.jpg`
- `assets/avatars/avatar-512.jpg`

本地中间素材不应混入公开提交：

- `assets/avatars/avatar-square-2080.jpg`
- `assets/avatars/source-avatar.jpg`

参考：

- [assets/avatars/README.md](/Users/ztl/Documents/New%20project/assets/avatars/README.md)

## 本线程的推荐工作方式

### 1. 先看状态

- 检查当前 `git status`
- 不要默认把所有改动当成一批

### 2. 先做分类

按三类分：

- GitHub 公开提交
- 飞书知识库沉淀
- 本地保留 / 敏感内容

### 3. 再做公开链路判断

- 只更 GitHub
- GitHub + 飞书知识库
- GitHub + ClawHub
- GitHub + ClawHub + 飞书知识库
- 仅本地保留

### 4. 最后再提交

- 只 stage 本轮目标文件
- 不混提其他线程正在处理的文件

## 推荐回报模板

```text
状态: done
动作: 已完成本轮 GitHub 维护判断
同步范围判断: 仅 GitHub / GitHub + 飞书知识库 / ...
证据: 提交号 / 文件清单 / 链接
下一步: ...
```

## 给专属线程的起手消息

```text
请按 GitHub 仓库维护与发布移交资料承接 openclaw-oss-starter 的 GitHub 维护工作。
要求：
1. 默认按本仓库与当前工作区处理。
2. 先检查本轮改动是否属于同一发布主题。
3. 先区分 GitHub / 知识库 / 本地三类。
4. 不混提其他线程正在处理的文件。
5. 最后按“状态 / 动作 / 同步范围判断 / 证据 / 下一步”回报。
```

## 一句话规则

这条线程不是“看到改动就发 GitHub”，而是“先分类、再判断、最后只提交本轮该提的公开内容”。
