# Main Dispatch Command

## Can main execute this work?

Yes. `main` can serve as the orchestration入口, including work that starts
from the Feishu `main` chat window:

- `main` decides and dispatches
- `media` executes the Feishu knowledge-base sync
- `media` is the local instance / directory name
- `小果` is the Feishu bot name used by that instance

This is the recommended model when you want all work to start from the main
hub, while still keeping role boundaries clear.

## Feishu main chat usage

You can treat the Feishu `main` chat as the command window.

Recommended pattern:

1. Send the task to `main` in Feishu
2. Let `main` classify the task
3. Let `main` dispatch execution to `media`
4. Let `media` use the Feishu bot `小果` for knowledge-base updates when needed
5. Return a short completion report back to `main`

Example chat instructions:

- 请从 main 派发一次 OpenClaw 开源项目知识库同步，交给 media 执行。
- 请从 main 派发一次发布流，检查 GitHub、ClawHub、飞书知识库是否需要同步。
- 请从 main 派发一次项目更新整理，把对外文案和知识库页面一起更新。

## Command

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_main_dispatch.sh
```

## Optional target override

```bash
bash /Users/ztl/.openclaw/workspace-main/openclaw-oss-starter/marketing/feishu/knowledge-base/run_main_dispatch.sh "https://www.feishu.cn/wiki/your-parent-url"
```

## Recommendation

- Direct maintenance: use `run_media_sync.sh`
- Main-hub orchestration: use `run_main_dispatch.sh`
- Feishu-triggered orchestration: send the task to the `main` chat window first
