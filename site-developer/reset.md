Site Developer: Reset
---------------------

For the sake of providing a consistent stable example exercise, we will pretend
the most up-to-date release of RhymesSite is version 7.x-1.0-beta2. Git makes it
easy to go back in time, rewinding your project's history as if anything later
than 7.x-1.0-beta2 hasn't happened yet. GitHub let's you do this in your hosted
fork of the RhymesSite project too.

1. To see where we're starting, check what version we're on or near right now.

        # This indicates the tagged release you're on or near.
        git describe --tag

1. Rewind your project history to version 7.x-1.0-beta2. (This is like undoing
   everything all the way back to 7.x-1.0-beta2.)

        # Confirm you're on the master branch. If you're not, check it out.
        git branch
        git checkout master

        # Undo git history in our local copy back to version 1.0-beta2.
        git reset --hard 7.x-1.0-beta2

        # Force push to your fork to rewind history just like you did locally.
        # Note: It's bad manors to rewrite published history. If
        # somebody else is following your work on GitHub and you change things
        # they already pulled in, this is likely to create merge conflict
        # headaches for people working with your project. Don't do this willy
        # nilly. Only force push if you are certain (like you are now) you're not
        # going to trip anyone up.
        git push -f myremote
