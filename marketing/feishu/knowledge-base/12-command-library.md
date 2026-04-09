# 通用指令库

## 目的

这一页用于沉淀已经稳定、可反复复用的 `main` 入口指令。

原则：

- 优先保留可长期复用的指令
- 优先保留与 GitHub、ClawHub、飞书知识库相关的核心工作流
- 保持 public-safe，不写入私密账号信息或敏感运行态细节

## 核心入口规则

- GitHub 项目相关工作，统一先从 `main` 入口对接
- 默认项目上下文：
  - 本地仓库：`/Users/ztl/.openclaw/workspace-main/openclaw-oss-starter`
  - GitHub 仓库：`guoma970/openclaw-oss-starter`
- `main` 负责判断、分流、回报
- `media` 负责公开同步执行
- 飞书里的 `小果` 是 `media` 这个实例对应的机器人名字

## 常用指令模板

### 1. GitHub 项目任务

```text
请从 main 对接这次 GitHub 项目工作。
要求：
1. 默认按 openclaw-oss-starter 项目处理。
2. 先判断是代码任务、发布任务还是混合任务。
3. 如需修改仓库，先在本地完成。
4. 如需公开同步，再派给 media 执行。
5. 最后返回结果和相关链接。
```

### 2. 知识库同步

```text
请从 main 派发一次 OpenClaw 开源项目知识库同步，交给 media 执行。
要求：
1. 更新 11_OpenClaw开源项目 目录下的标准页面。
2. 已存在则更新，不存在则创建。
3. 最后返回父目录和页面链接。
```

### 3. 发布检查

```text
请从 main 派发一次项目发布检查，交给 media 执行。
要求：
1. 默认按 openclaw-oss-starter 项目处理。
2. 检查 GitHub README、ClawHub 版本、飞书知识库页面是否需要同步。
3. 如需同步，先整理差异，再执行更新。
4. 返回执行结果和后续建议。
```

### 4. 新 skill 上线

```text
请从 main 派发一次新 skill 上线流程，交给 media 执行公开同步部分。
要求：
1. 先在本地完成 skill 结构检查与仓库更新。
2. 如满足 public-safe 条件，再同步 GitHub、ClawHub、飞书知识库。
3. 最后返回版本、链接和后续建议。
```

### 5. 项目营销更新

```text
请从 main 派发一次项目营销更新，交给 media 执行。
要求：
1. 生成最新对外发布文案。
2. 更新知识库中的对外发布文案页。
3. 给出适合 Feishu、X、小红书的短版摘要。
```

## 沉淀建议

- 每周把新出现且重复使用的指令追加到这一页
- 优先保留“稳定指令”，不保留一次性临时话术
- 若一条指令已对应固定流程，附上相关链接页

## 相关页面

- `Main Project Context`
- `Main GitHub Responsibilities`
- `Main New Skill Flow`
- `Main Routing Rules`
