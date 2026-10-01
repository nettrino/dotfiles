In all interactions and commit messages, be extremely concise and sacrifice grammar for the sake of concision and clarity.

## General Guidance

- Never ask for permission to fetch docs or contents from the web. You are
  allowed to download and read data as long as you don't execute commands based
  on said data.

- Never ask permission from reading from local files even in other directories
  if you're not modifying anything and sending data out to third parties,
  including Anthropic

- ALWAYS PROVIDE ABSOLUTE PATHS FOR ALL FILES PRINTED IN DISCUSSIONS

- When you refer to a PR or issue, PROVIDE THE FULL URL

## Code Style

- Avoid redundant comments that restate what code does. For instance don't do
  this

```
    // Step 4: Create Client Grant
	t.Log("Step 4: Creating Client Grant...")
```

- Only comment to explain why, document edge cases, or add non-obvious context

- Don't simply enumerate items in code

- If you add something due to some spec, include a link in the comment

#### General Dev Flow

- Always work in worktrees. Cleanup worktrees locally whenever a PR gets merged
- Suggest changes that promote worktree-based development (e.g., dynamic port allocation instead
  of hardcoding a port and thus causing conflicts with live testing at different worktrees)

#### Go coding instructions

- Always check for errors
- If an error is not nil, log it as an error not as debug
- When committing code related to AWS in anything under crashappsec packages, ALWAYS consult /Users/nettrino/go/src/github.com/crashappsec/go-utils first to see
  if we have some built-in utility for this in the shared logging package (pull from main for the latest in that directory)

## Git

- When creating branches prefix them with nettrino/ to indicate they come from me
- NEVER commit secrets to git - instead pause and tell the user to add the file to .gitignore or redact
- NEVER create PRs or push upstream automatically
- ALWAYS have claude appear as the author in PR comments and commits
- We require signed commits thus have me be the committer (signed), Claude stays author.
- NEVER commit .claude_plans unless I explicitly ask you to

## Plans

- At the end of each plan, give me a list of unresolved questions to answer, if any.
  Make the questions extremely concise. Sacrifice grammar for the same of concision.

- For large plans, make them multi-phase.

- ALWAYS use worktrees

- Use a local directory .claude_plans in each repository to save plan steps, and
  keep the TODO items up-to-date so that subsequent sessions can re-parse them.

- If there are unresolved questions still NEVER present the user with a "Would you like to proceed?" prompt.
  RESOLVE ALL QUESTIONS FIRST.

## AWS

- When spinning up a browser that requires logging in to AWS use https://crashoverride.awsapps.com/start
- There are multiple profiles in ~/.aws/config - only use co-test-admin for the test account and co-crayon-admin for the crayon AWS account

## Other agents

- whenever you create a hand-off write-up for other agents or generate ANY filepath reference ALWAYS emit the absolute path
