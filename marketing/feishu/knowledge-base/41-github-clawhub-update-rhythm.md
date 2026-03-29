# 41_GitHub 与 ClawHub 更新节奏规则

## 核心原则

- GitHub 负责持续建设
- ClawHub 负责相对稳定的公开版本分发

不要把两者当成同一种更新位。

## GitHub 的默认节奏

GitHub 可以更频繁更新，适合承接：

- README 优化
- 首页视觉和展示更新
- examples 增补
- 文档和规则补充
- 知识库源文件整理
- 发布流程说明更新
- 新 skill 草稿和抽象版本

只要变更对公开仓库有价值、且不包含私密信息，就可以先进入 GitHub。

## ClawHub 的默认节奏

ClawHub 应更克制，只在 skill 本身出现明确提升时更新，例如：

- `SKILL.md` 明显更完整
- `README.md` 对使用方式说明更清楚
- `agents/openai.yaml` 元数据更准确
- examples 明显补齐
- skill 边界、用途、结构更成熟

## 不推荐的做法

- 每改一句 README 就 bump 一次 ClawHub 版本
- 把所有 GitHub 小改动都同步成 skill release
- 为了“保持活跃”而频繁发布没有实质变化的版本

## 推荐判断顺序

1. 这次变化是否影响 skill 本身
2. 这次变化是否只是文档、展示或流程层优化
3. 如果只是仓库层优化，更新 GitHub 即可
4. 如果 skill 本身确有提升，再决定是否更新 ClawHub

## 一句话规则

- 日常变化先更 GitHub
- skill 有实质提升再更 ClawHub
