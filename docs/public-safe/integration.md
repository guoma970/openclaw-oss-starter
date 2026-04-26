# Integrating public-safe guardrails into a new repository

Use this guide to add reusable public-safe checks to a public repository.

## 1. Copy the standard assets

Copy these files from this repository:

```text
PUBLIC_SAFE_CHECKLIST.md
validate_repo.sh
.github/workflows/public-safe-validate.yml
```

Optional template location:

```text
.github/workflow-templates/public-safe-validate.yml
```

## 2. Adjust repository-specific required files

Open `validate_repo.sh` and update the `required=(...)` list for the target repository.

Keep these checks unless there is a strong reason to remove them:

- shell syntax checks for public scripts
- concrete sensitive pattern scan
- README / SECURITY / CONTRIBUTING public-safe positioning check

## 3. Ensure core docs exist

The target repository should include:

```text
README.md
SECURITY.md
CONTRIBUTING.md
PUBLIC_SAFE_CHECKLIST.md
```

The first screen of `README.md` should make the public-safe boundary obvious.

## 4. Run locally

```bash
bash validate_repo.sh
```

Expected success marker:

```text
Repository validation passed.
```

## 5. Push and verify GitHub Actions

Push the workflow to `main`, then verify:

- main push run succeeds
- pull request run executes automatically
- a failing PR receives a public-safe validation comment

## 6. Negative test

Create a temporary branch and PR with a clearly fake sensitive value, for example:

```text
ghp_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
/Users/ztl/example
oc_1234567890abcdef
```

The PR should:

- fail `Public Safe Validate`
- receive a PR comment listing the risky lines
- stay unmerged

After verification, close the PR and delete the temporary branch.
