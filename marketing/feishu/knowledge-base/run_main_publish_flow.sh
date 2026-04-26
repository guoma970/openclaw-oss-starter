#!/bin/zsh
set -euo pipefail

PARENT_URL="${1:-https://www.feishu.cn/wiki/<FEISHU_PARENT_NODE_TOKEN>}"

MESSAGE=$(
  cat <<EOF
请从 main 总入口发起一次项目发布流调度。

目标知识库父目录：
${PARENT_URL}

调度原则：
1. main 负责统一判断哪些输出需要更新。
2. 如涉及公开发布与知识库同步，统一分配给 media 执行。
3. media 是本地实例名，飞书中使用的小果是该实例的机器人名。
4. 本次检查至少覆盖：
   - GitHub 项目首页与关键信息是否需要同步
   - ClawHub 技能版本或说明是否需要同步
   - 飞书知识库 OpenClaw 开源项目目录是否需要同步
   - 对外发布文案是否需要更新
5. 最后返回：
   - 已执行事项
   - 未执行但建议处理的事项
   - 相关链接或结果摘要
EOF
)

openclaw agent \
  --agent main \
  --message "$MESSAGE" \
  --thinking high \
  --json
