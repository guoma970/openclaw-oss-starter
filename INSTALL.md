# Install

This repository is intentionally small, so installation is just a clone and a
few local checks.

## Requirements

- `bash`
- `git`
- `tar`

## Steps

```bash
git clone https://github.com/ztl970/openclaw-oss-starter.git
cd openclaw-oss-starter
chmod +x cron/codex_quota_autoswitch.sh generate_public_pack.sh validate_repo.sh
./validate_repo.sh
./generate_public_pack.sh
```

## Optional

If you want to inspect the quota helper:

```bash
./cron/codex_quota_autoswitch.sh --help
```

If you want a packaged public bundle, copy the output from `dist/`.
