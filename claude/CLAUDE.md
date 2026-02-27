## Development

- Don't use a devcontainer, even if the project documentation provides instructions on using the devcontainer. Run mix commands directly on my host.
- If you're going to run a `mix` command on a project, always run `mix deps.get` beforehand.
- If Postgres is unreachable (connection refused on localhost:5432), start it with: `podman machine start && podman start pgdev`
- Never commit or push to main or master without my explicit approval.
- When creating a PR, always create a draft PR by default and open it in my browser.
- Do not add attribution or bylines in the content of any files, comments, or PR descriptions. Co-author on the commit is fine.
- When creating a PR, the description should be a summary of the changes made. If you create a "Test Plan", put it in a subsequent PR comment.

## Plans

- At the end of each plan, give me a list of unresolved questions to answer, if any.
- When creating new code that includes naming something, highlight the new names that you created and ask for confirmation.

## Focus

- Don't ever make extra code changes to solve problems that you find that are unrelated to the piece of work we're focused on. Instead, mention the problem and ask me if I want to create a new Github issue for it.
