Site Developer: Rebase
----------------------

A new version of _rhymesite has been tagged and released including a bunch of
new work that was not in the code base when you created your branch. It's your
responsibility to bring your work up to date and resolve any merge confilcts
before your pull request gets merged.

1. Before you make any changes, look at GitHub's network graph. Identify your
   branch on the graph, and see what it looks like in relation to Drupal Ladder's
   master branch. See: https://github.com/<username>/RhymesSite/network.

   Leave this open in a tab for reference at the end of this exercise.

1. Update master branch.

        # Your copy of master should still be pointed at 7.x-1.0.
        git checkout master
        git describe --tag

        # Update master to be in sync with the latest work.
        git fetch drupalladder
        git merge drupalladder/master

        # Now there should be no difference between the local master branch and
        # Drupal Ladder's master branch
        git diff drupalladder/master

1. Rebase your work to the tip of the master branch.
        
        git checkout my-new-rhyme
        git rebase master

        # If there are merge conflicts, resolve them and commit here.

1. Resubmit your pull request. Note: In the previous step you rewrote your
   branch's commit history, as if your work had been added to the tip of the
   current master branch. If you try to push to your fork, your push will be
   rejected because it's commit history doesn't match your local history
   anymore. You have two options now. (A) Cautious and careful: Rename your
   branch, push it up to GitHub as a new branch, create a brand new pull
   request. (B) Fast and sometimes handy: Force push to existing branch, rewrite
   history in the pull request you already created.

        # Try to push, it will fail becasue your history is out of sync now.
        git push <my-user-name> my-new-rhyme

        # Cautious: Rename the branch.
        git branch -m my-new-rhyme-rebased
        git push <my-user-name> my-new-rhyme-rebased

        # Now create a new pull request from <my-user-name/my-new-rhyme-rebased
        # to drupalladder/master.

        # Try the fast and loose approach too. First re-create your rebased
        # branch with the original branch name.
        git checkout -b my-new-rhyme

        # Now force push. This will update your original pull request.
        git push -f <my-user-name> my-new-rhyme

1. If you have not already, go take a look at your pull requests. Then, in a new
   tab, revisit your network graph and compare it to the network graph you
   loaded at the beginning of the exercise.
   https://github.com/<username>/RhymesSite/network.

   Read the network graph like this:

   Branch off 7.x-1.0 at some point earlier in the project's history:

                *--*---*--*--> my-new-rhyme
               /
        ---*--*--------------> drupalladder/master
              |
              7.x-1.0

   
   Other stuff gets merged before my-new-rhyme:

                *--*---*--*--> my-new-rhyme
               /
        ---*--*---*--*--*--*-----*-----*--*---*-*--> drupalladder/master
              |         |              |
              7.x-1.0   7.x-1.1        7.x-1.N


   Rebase my-new-rhyme to the tip of drupalladder/master:

                *--*---*--*--> my-new-rhyme
               /                               
            detach                          rewrite history as
            this                            if this work had been
            from 7.x-1.0                    done here
                                                  *--*---*--*--> my-new-rhyme
                                                 /
        ---*--*---*--*--*--*-----*-----*--*---*-*--> drupalladder/master
              |         |              |
              7.x-1.0   7.x-1.1        7.x-1.N
