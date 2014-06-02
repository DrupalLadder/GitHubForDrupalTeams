Site Developer: Rebase -i
-------------------------

If you followed the instructions in under [fork](site-developer/fork.html), your
commit history should have some extraneous commits. Asking someone else to peer
review the drafty stuff can be a confusing waste of time. Do an interactive
rebase to tidy up your commit history and resubmit your pull request one last
time.

1. Identify how far back in history you want to rewrite history. Get the commit
   ID that precedes your first commit:
        
        git log --oneline

1. Kick off an interactive rebase session like this:

        git rebase -i <commit-id>

        # Your text editor (e.g. vim, nano, etc.) should pop open and present a
        # list of commits formatted like this:

        pick ee926aa Remove dependency on Standard profile.
        pick d4c60f9 Updated About page content.
        pick 6e94d5f Added features module.

1. Here's a cheatsheet to help you tidy things up. Make any of these changes to
   the list, save, quit, then follow the prompts (if there are any).

  - Reorder list to reorder commits in commit history.
  - Delete a line to remove the commit from your commit history.
  - Lines prefixed **p** or **pick** use the commit as-is
  - Lines prefixed **r** or **reword** use the commit, but prompt you to edit
    the corresponding commit message
  - Lines prefixed **e** or **edit** use commit, but stop for amending (you can
    use tricks like reset --mixed to break a single commit into two here)
  - Lines prefixed **s** or **squash** use the commit, but meld it into the
    previous commit (you'll have an opportunity to edit the two commit messages
    when they get merged into one before it gets saved)
  - Lines prefixed **f** or **fixup** like "squash", but discard this commit's log message
