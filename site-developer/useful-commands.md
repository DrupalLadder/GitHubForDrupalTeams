Site Developer: Useful commands
-------------------------------

Here are some useful git commands to help compose commits worth reading:

- Composing commits:
  - `git add --patch`
  - `git add path/to/directory`
  - `git add path/to/file`
- Revising commit history:
  - `git commit --amend`
  - `git reset --hard`
  - `git reset --mixed`
  - `git reset --soft`
  - `git cherry-pick [commit-id]`
  - `git revert [commit-id]`
  - `git checkout -- path/to/file`
  - `git checkout -- path/to/directory`
- Reviewing commit history:
  - `git show [commit-id]`
  - `git show [commit-id] --stat`
  - `git log -p`
  - `git log --stat`
  - `git log --oneline`
  - `git log -3`
  - `git log -- path/to/directory`
  - `git log -- path/to/file`
