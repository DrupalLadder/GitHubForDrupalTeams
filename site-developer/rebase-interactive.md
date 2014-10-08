Site Developer: Rebase -i
-------------------------

Before you submit your final pull request to DrupalLadder to get your work
incorporated into the main project, use the interactive rebase command--`git
rebase -i`--to tidy up your commit history. This will make it easy for someone
else to peer review (and debug one day if necesary).

If you followed the instructions in under [Reset](site-developer/reset.html), your
commit history should have a number of commits including drafty edits that are
not meaningful for reviewers or debuggers to read through or try to understand.
(If you didn't do this, please do it now so you are able to follow along with
the exercise below.)

1. Once again, you have the option to rewrite history in an existing branch or
   create a new branch. We'll create a new branch so we can be fearless about
   trying out `rebase -i` and just blow our branch away and start over if we wnt
   to.

        # Checkout the branch with the history we want to rewrite.
        git checkout my-new-rhyme-rebase1

        # Make a fresh new copy of this branch (this is the one we'll work with).
        git checkout -b my-new-rhyme-rebase2

1. Identify how far back you want to rewrite history. Get the commit ID before
   the first commit you want to alter.
        
        git log --oneline

1. Kick off an interactive rebase session like this:

        git rebase -i <commit-id>

        # Your text editor (e.g. vim, nano, etc.) should pop open and present a
        # list of commits formatted like this:

        pick ee926aa Updated lorem ipsum dolor emet
        pick d4c60f9 Changed ipsum dolor emet lorem
        pick 6e94d5f Added dolor emet lorem ipsum
        pick 6ua897s Fixed ipsum dolor emet lorem

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
    - Lines prefixed **f** or **fixup** like "squash", but discard this commit's
      log message

1. If you get stuck, one of these tricks might help unstuck you.

    - Continue rebasing after stopping to make changes or resolve conflicts: `git rebase --continue`
    - Abort if things are going sideways before you finish: `git rebase --abort`
    - Go back to an earlier snapshot in your repo's history if you completed a rebase, didn't save a copy of the original branch, and you need to recover "lost" commit history: `git reflog; git checkout <hash-or-alias-from-reflog>`

1. When you're happy with the result of your interactive rebase session, push
   your changes up to GitHub and resubmit your final pull request.

1. Take a look at your network graph and see how GitHub visualizes your work.
   This can be a helpful tool for understanding what's going on when you get
   tangled.

    Go here:
    https://github.com/username/RhymesSite/network

    - Hover over the dots (commits) on each branch to see particular commits
    - Look where one branch's history diverges from another's
    - Observe the difference between how a `rebase` (my-new-rhyme and
      my-new-rhyme-rebase1) is depected versus `rebase -i` (my-new-rhyme-rebase1
      and my-new-rhyme-rebase2)


### Tips & Pitfalls

- The point of doing an interactive rebase before you submit a pull request is
  NOT to squash all your work into a single commit; maybe a single commit make
  sense, maybe it doesn't

- Your goals should be to:
  - Communicate your ideas clearly
  - Eliminate distractions
  - If you're changing so many things it's hard to review them all at once,
    break the changes up into intelligible, smaller chunks

- Changes that probably deserve their own commit:
  - Changes that might be useful to backport (via cherry-pick) to a different
    branch or a different major version of the code base
  - Changes that can be reverted or refactored in isolation
  - Major architectural changes where there are discrete chunks of different
    logic or functionality

- Changes that probably belong in different commits:
  - Changes to different Drupal projects (modules, themes, libraries), when you
    are doing active development on a project (not simply downloading packaged
    releases from drupal.org)
