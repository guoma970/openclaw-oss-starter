# Releases

This repository uses a simple release process:

1. update `CHANGELOG.md`
2. bump or record the version in the release note
3. tag the commit, if you want a GitHub release
4. publish the release on GitHub

## Suggested release structure

- `releases/0.1.0.md`: release note for the published version
- `releases/0.1.1.md`: follow-up notes for the next patch

## Release note template

```md
# v0.1.0

## Highlights

- item 1
- item 2

## Changes

- file or doc updates

## Notes

- any warnings or migration notes
```

## Tagging example

```bash
git tag v0.1.0
git push origin v0.1.0
```

