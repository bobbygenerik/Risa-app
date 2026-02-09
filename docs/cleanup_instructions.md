# Cleanup & Safety Instructions

What I changed
- Added `scripts/append_to_gitignore.sh` — safely appends recommended ignore patterns to `.gitignore` (creates `.gitignore.bak`).
- Added `scripts/remove_committed_build_artifacts.sh` — runs the append script, stages `git rm --cached` for common generated folders (`build/`, `tmp/`, `tmp/tivimate_jadx/`) and commits the change locally.

Recommended workflow
1. Rotate/revoke any API keys discovered in `lib/config/*` immediately and replace with secure runtime configuration (env vars, secret manager, or `--dart-define`).
2. Run the cleanup script locally to update `.gitignore` and remove generated artifacts from the git index:

```bash
./scripts/remove_committed_build_artifacts.sh
```

3. Inspect the commit created by the script. If it looks good, create a new branch and push it:

```bash
git checkout -b cleanup/remove-artifacts
git push origin cleanup/remove-artifacts
# then open a PR on GitHub from cleanup/remove-artifacts -> main
```

4. If repository size is a concern (large history with decompiled artifacts), consider a history rewrite using `git-filter-repo` or BFG after coordinating with the team (this is destructive to history; coordinate & backup first).

Next suggested tasks I can do for you
- Open a branch and commit these scripts for you (I can create the branch/commit locally; pushing requires your credentials). — I already committed locally; tell me if you want me to push.
- Generate the detailed JSON outputs for each subagent into `.analysis/subagents/` (full machine-readable results).
- Create GitHub issues for the top 10 findings and open them (requires GitHub access/token).
