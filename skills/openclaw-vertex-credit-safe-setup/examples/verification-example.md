# Verification Example

Example of the smallest acceptable handoff after one tiny request.

## Example summary

- provider: `google-vertex`
- model: `google-vertex/gemini-2.5-flash`
- target project: `<gcp-project-id>`
- auth method: `service-account JSON`
- result: `request succeeded`

## Required next check

Do not stop at request success alone.

Tell the user to verify:

- the billing line item is `Vertex AI`
- the intended project was charged
- credits or trial balance were applied as expected
