#!/bin/zsh
set -euo pipefail

PARENT_URL="${1:-https://www.feishu.cn/wiki/<FEISHU_PARENT_NODE_TOKEN>}"

MESSAGE=$(
  cat <<EOF
请从 main 总入口执行一次周期性项目同步检查。

目标知识库父目录：
${PARENT_URL}

检查要求：
1. 检查 GitHub 项目首页、技能说明、对外简介是否需要同步。
2. 检查 ClawHub 版本、说明和发布状态是否需要同步。
3. 检查飞书知识库 OpenClaw 开源项目目录下的页面是否需要同步。
4. 检查对外发布文案是否需要更新。
5. 如需要执行公开同步动作，统一分配给 media。
6. 如无需执行更新，也返回清晰结论和下次建议检查点。
EOF
)

openclaw agent \
  --agent main \
  --message "$MESSAGE" \
  --thinking high \
  --json
