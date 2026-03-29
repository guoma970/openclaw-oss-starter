# 42_Main 的 GitHub / ClawHub 判断指令

## 目标

让 `main` 先判断：

- 这次只更新 GitHub
- 还是要连 ClawHub 一起更新

## 标准指令

```text
请从 main 判断这次更新的公开同步范围。
要求：
1. 先判断这次变化是仓库层优化，还是 skill 本身有实质提升。
2. 如果只是 README、展示、规则、知识库或文档更新，则只同步 GitHub。
3. 如果 skill 的 SKILL.md、README、metadata、examples 或版本质量有明显提升，再判断是否需要同步 ClawHub。
4. 最后按“状态 / 动作 / 证据 / 下一步”给出结论。
```

## 更短的群内口令

```text
请从 main 判断这次是只更 GitHub，还是要连 ClawHub 一起更。
```

## 期望输出

回报里至少要包含：

- 结论：`仅 GitHub` / `GitHub + ClawHub`
- 理由：为什么
- 动作：接下来谁执行
- 下一步：是否还要同步飞书知识库或对外文案
