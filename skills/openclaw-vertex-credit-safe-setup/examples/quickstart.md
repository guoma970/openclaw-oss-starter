# Quickstart

Use this short sequence for a first local pass.

1. decide the target Google Cloud project
2. confirm billing or credits are attached to that project
3. place the service-account JSON in a private local folder
4. set `GOOGLE_CLOUD_PROJECT` and `GOOGLE_APPLICATION_CREDENTIALS`
5. merge the minimal `google-vertex/...` model block into the local OpenClaw config
6. run one tiny verification request
7. check that Google Cloud Billing shows `Vertex AI`

## Public-safe rule

Keep the JSON file outside the repository and keep all examples on placeholders only.
