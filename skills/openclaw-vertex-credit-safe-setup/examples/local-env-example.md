# Local Env Example

Use a private shell profile or a local-only env file.

```bash
export GOOGLE_CLOUD_PROJECT="<gcp-project-id>"
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/openclaw/private/google/<service-account>.json"
```

## Notes

- replace both placeholders locally
- do not commit the JSON file
- do not paste JSON contents into repo files
- keep the path generic in any shared documentation
