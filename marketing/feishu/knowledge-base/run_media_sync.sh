#!/bin/zsh
set -euo pipefail

PARENT_URL="${1:-https://www.feishu.cn/wiki/CLJFwc9l8ik7IRkpi8bcPgAMn6U}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="${SCRIPT_DIR}"

MESSAGE=$(
  cat <<EOF
请同步飞书知识库目录。

目标父目录：
${PARENT_URL}

执行规则：
1. 目标是上面这个飞书父目录。
2. 对下面列出的页面执行“存在则更新，不存在则创建”。
3. 页面标题必须与文件名前缀保持一致。
4. 只处理列出的页面，不改动其他页面。
5. 完成后仅返回每一页的结果和 URL。

页面列表：
- 01_项目总览 <- ${ROOT_DIR}/01-project-overview.md
- 02_对外发布文案 <- ${ROOT_DIR}/02-publishing-copy.md
- 03_申请与介绍素材 <- ${ROOT_DIR}/03-application-materials.md
- 04_账号矩阵补充 <- ${ROOT_DIR}/04-account-matrix.md
- 05_发布执行规则 <- ${ROOT_DIR}/05-publishing-roles.md
- 06_发布节奏与复盘 <- ${ROOT_DIR}/06-publishing-rhythm-and-review.md
- 07_项目里程碑 <- ${ROOT_DIR}/07-project-milestones.md
- 08_发布记录与复盘模板 <- ${ROOT_DIR}/08-publishing-log-and-review-template.md
- 09_后续待办与选题方向 <- ${ROOT_DIR}/09-next-steps-and-content-ideas.md
- 10_链接总表 <- ${ROOT_DIR}/10-link-index.md
- 11_对外简介速用版 <- ${ROOT_DIR}/11-short-intro-pack.md
- 36_Public-safe运营消息框架 <- ${ROOT_DIR}/36-public-safe-ops-message-templates.md
EOF
)

openclaw agent \
  --agent media \
  --message "$MESSAGE" \
  --thinking high \
  --json
