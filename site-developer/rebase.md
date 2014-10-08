Site Developer: Rebase
----------------------

When we started these exercises, we pretended to start at an earlier point in
time when 7.x-1.0-beta2 was the most recent release available for RhymesSite.
Now let's fast forward in time to the present day. We've been hard at work on
our development branch, refactoring and perfecting a new rhyme to add to the
code base. Now you want to get your dev branch up to date with the latest work
committed to the main project's master branch. You will do this by "rebasing". 

Before we dive into the steps, here's a quick explaination of what rebasing is
and how we're going to use git's `rebase` command here:

`git rebase` enables you to rewrite your commit history. The most
common uses for this are:

- To get a development branch up to date with the main project's latest changes.
- To tidy up a confusing git log would otherwise be difficult for other
  developers to understand, peer review, or debug.

The example below demostrates the first use case above: Getting a development
branch up to date with the main project's latest changes.

If you want your work to actually get merged into the main project, you should
rebase your development branch to the tip of main project's master branch before
submitting your pull request. This is helpful for a few reasons:

- You are responsible for staying current with the main project. If there are
  merge conflicts or bugs because your branch has gotten out of date, it's your
  responsibility (not the code reviewer's or project maintainer's) to get your
  work up to date. Rebasing replays your work commit-by-commit onto the tip of
  the branch you are rebasing "onto". If there are merge conflicts, git will
  stop, prompt you to resolve them, then continue after the conflict is
  resolved.
- Pull request that are out of date with the branch they're submitted to can be
  deceptively complex and confusing to review and test.
- Some people are used to updating their dev branch by merging in work committed to
  the upstream master branch. The end result may appear the same. But this can
  create big headaches if development goes on for a while, includes many merges,
  or large merges. It can also make debugging and refactoring a lot more
  complicated (e.g. using git bisect) because of the way this organizes the commit
  history.

Here's how you do it!...

1. Make sure your master branch is up to date with the main project.

      # Check out the master branch locally.
      git checkout master

      # Update it. First, pull in external changes.
      git fetch drupalladder

      # Merge in any updates.
      git merge drupalladder/master

      # Confirm your local version of master is in sync (has no differences)
      # with drupalladder/master. If this is the case, you will see NO
      # differences here.
      git diff drupalladder/master

1. Now rebase your development branch to the tip of drupalladder/master.

      git checkout my-new-rhyme

      # We're about to rewrite history. It's bad manors on GitHub to rewrite
      # history for published work. The safest way to do this is to create a new
      # branch.
      git checkout my-new-rhyme-rebase1

      # Now rebase your work (my-new-rhyme-rebase1) to the tip of master.
      git rebase master

      # Push your work up to github.
      git push myremote

1. If you have not already, go take a look at GitHub's network graph to get a
   clearer sense of what's going on with your commit history.

   Go here:
   https://github.com/<username>/RhymesSite/network.

   Read the network graph like this:

   Branch off master at some point earlier in the project's history:

                *--*---*--*--> my-new-rhyme
               /
        ---*--*--------------> drupalladder/master
              |
              7.x-1.0-beta2

   
   Other stuff gets merged before my-new-rhyme:

                *--*---*--*--> my-new-rhyme
               /
        ---*--*------*-----*-----*-----*--*---*-*--> drupalladder/master
              |                  |      
              7.x-1.0-beta2   7.x-1.0-beta3   


   Rebase my-new-rhyme to the tip of drupalladder/master:

                                            rewrite history as
                                            if this work had been
                                            done here
                                                  *--*---*--*--> my-new-rhyme-rebase1
                                                 /
                *--*---*--*--> my-new-rhyme     /
               /                               /
        ---*--*---*--*--*--*-----*-----*--*---*----> drupalladder/master
              |                  |      
              7.x-1.0-beta2   7.x-1.0-beta3   ...7.x-1.N
