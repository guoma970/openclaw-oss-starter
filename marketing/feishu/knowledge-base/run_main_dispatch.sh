#!/bin/zsh
set -euo pipefail

PARENT_URL="${1:-https://www.feishu.cn/wiki/<FEISHU_PARENT_NODE_TOKEN>}"

MESSAGE=$(
  cat <<EOF
请从 main 总入口发起一次知识库同步调度。

目标父目录：
${PARENT_URL}

调度原则：
1. main 负责总入口判断与任务分发。
2. 实际飞书知识库同步工作分配给 media。
3. media 对目标父目录执行“存在则更新，不存在则创建”的知识库页面同步。
4. 只同步 OpenClaw 开源项目目录下的标准页面。
5. 返回最终结果：是否成功、父目录 URL、每页 URL，或明确失败步骤。
EOF
)

openclaw agent \
  --agent main \
  --message "$MESSAGE" \
  --thinking high \
  --json
