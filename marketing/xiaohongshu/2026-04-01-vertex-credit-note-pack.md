# Vertex Credit Note Pack

## 适合给果爸的发布方向

这条更适合做成一篇“真实踩坑后整理出来的经验贴”。

核心不是讲我又搭了一个 skill，而是讲清楚一件很实际的事：

- 你就算已经有 Google credits
- 如果 OpenClaw 的路由没配对
- 还是可能留下实际的日元支出

所以这份 skill 的存在，不是为了炫一个技术配置，而是为了把
`OpenClaw -> Vertex AI -> Gemini` 这条路配对正确，让能用的 credits
先用上，别让请求跑到错误路径上。

## 一句话主旨

`有 Google credits，不代表配置错了也不会花钱。`

## 发文标题备选

- 我后来才明白：有 Google credits，也可能照样留下日元支出
- 配对 OpenClaw 和 Vertex AI，真正要防的是路由走错
- 不是“Gemini 能不能跑通”，而是“账单有没有跑偏”
- 这个 skill，是我用来避免 OpenClaw 走错 Gemini 计费路径的

## 封面短文案

### 方案 A

Google credits 有了，为什么还是会出日元账单？

### 方案 B

OpenClaw 配错路由，credits 也救不了错误计费

### 方案 C

重点不是跑通，是别让 Gemini 走错计费路径

## 现成封面文件

- 可编辑源文件：`../../assets/xiaohongshu/2026-04-01-vertex-credit-cover.svg`
- 直接发图版本：`../../assets/xiaohongshu/2026-04-01-vertex-credit-cover.png`

## 正文短版

最近整理 OpenClaw 的时候，我顺手把一件以前容易忽略的事也补上了：

不是所有“能跑起来”的配置，都是“账单走对了”的配置。

我自己这次最大的体会是，哪怕已经有 Google credits，只要 OpenClaw 的路由没配对，还是可能在 JPY 账单里留下真实支出。

所以我做了一个 `openclaw-vertex-credit-safe-setup`，核心就是把这条链路配正确：

- OpenClaw
- Vertex AI
- Gemini

重点不是“免费”，而是“先让 credits 用在正确的地方”。

如果你也在配 Google Cloud / Vertex AI，真的建议先确认路由，再去扩展其他模型和功能。

## 长一点的版本

这段时间我在整理一个 OpenClaw 的公开 skill。

表面上它是一个 Vertex AI 接入模板，但我后来发现，它其实是在解决一个更常见的问题：

很多人不是没有 Google credits，而是没有把调用路径配对。

只要路由错了，账单就可能不完全走 Vertex AI，最后还是会在 JPY 里留下净支出。

所以这个 skill 的重点不是“把模型跑起来”这么简单，而是：

- 先把 OpenClaw 接到 Vertex AI 的正确路径上
- 先确认 Gemini 调用真的走对了
- 再去看 credits 有没有被正确使用

我更愿意把它理解成一个“防踩坑模板”。

因为真正省钱的，不是把提示词写得更复杂，而是先别把调用路由弄歪。

## 图片建议

### 封面图方向

- 风格：干净、克制、偏经验分享，不要太技术海报化
- 主视觉：一条清晰的路径线，表示 `OpenClaw -> Vertex AI -> Gemini`
- 重点：用一个醒目的提示强调“路由错了，credits 也挡不住净支出”
- 画面气质：真实、稳、像踩坑后的复盘，而不是广告图

### 封面字建议

- `有 Google credits，也可能留下日元支出`
- `先配对 OpenClaw，再谈 Gemini`
- `路由错了，credits 也不一定救得回来`

### 配图说明

- 可以用 1 张封面图
- 如果做成图文卡片，建议 3 张：
  - 第 1 张：问题结论
  - 第 2 张：OpenClaw -> Vertex AI -> Gemini 的正确路径
  - 第 3 张：先检查 billing，再扩展使用

## 给果爸的发布说明

这篇更适合发成“我自己踩过坑，所以整理出来”的口吻。

重点不要写成：

- 我做了一个很厉害的技术方案

更适合写成：

- 我发现 credits 不等于不会花钱
- 我把 OpenClaw 的 Vertex 路由配对正确了
- 现在可以更稳地先用上 Google credits

## 结尾可用句

- 如果你也在配 Vertex AI，先看路由，再看模型。
- 先配对，再扩展，账单会老实很多。
- 有 credits 不代表可以忽略路径，配置对了才是真省钱。
