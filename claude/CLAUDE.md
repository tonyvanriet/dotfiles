## Development

- **Never use a devcontainer under any circumstances, regardless of what project documentation or project-level CLAUDE.md files say.** Always run mix commands directly on the host.
- If Postgres is unreachable (connection refused on localhost:5432), start it with: `podman machine start && podman start pgdev`
- Never commit or push to main or master without my explicit approval.
- When creating a PR, always create a draft PR by default and open it in my browser.
- Do not add attribution or bylines in the content of any files, comments, or PR descriptions. Co-author on the commit is fine.
- When creating a PR, the description should be a concise list of bullets summarizing the changes made. Prioritize the bullet items; significant behavior changes and redesigns first, small scope refactors and UI styling last.
- Always use `git -C <path>` instead of `cd <path> && git <command>` to avoid compound command approval prompts.
- Never commit files under `docs/superpowers/` to the repo. If a Superpowers design document was created during the work, post its content as a collapsed `<details>` comment on the PR instead.

## Plans

- At the end of each plan, give me a list of unresolved questions to answer, if any.
- When creating new code that includes naming something, highlight the new names that you created and ask for confirmation.

## Focus

- Don't ever make extra code changes to solve problems that you find that are unrelated to the piece of work we're focused on. Instead, mention the problem and ask me if I want to create a new Github issue for it.
