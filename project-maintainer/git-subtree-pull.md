Project Maintainer: Git subtree pull
------------------------------------

Pull changes from an external, stand-alone, module repo into RhymesSite. (Note:
You cannot pull changes from an external repo into a site repo unless you have
added the subtree project to the parent site repository per instructions
[here](project-maintainer/git-subtree-add.md).)

This is especially useful when the module you're pulling from is either a
contrib project or a project being used in many different code bases. In these
cases, active development is going on inside _and_ outside the site repository.

1. Make some new additions to Rhymes module's stand-alone project repo outside
   of the RhymesSite repo. (Go ahead and make changes directly to the master
   branch. Presumably, in real life, you're not interested in pulling changes
   from Rhymes into RhymesSite until after the changes have been peer reviewed
   on drupal.org and committed to the master or 7.x-1.x branch of the
   project.)

        cd path/to/rhymes
        
        # Now make some changes. Add new rhymes or module functionality.

1. Push your changes up to GitHub.

        git push https://github.com/username/rhymes master

1. Now pull the new work from the stand-alone Rhymes repo into the RhymesSite
   repo.

        cd path/to/RhymesSite

        # Create a dev branch for updating Rhymes.
        git checkout -b update-rhymes

        # --message: Subtree commits are a little cryptic. Use the --message
        # flag to add a more  meaningful description of what's going on here.
        #
        # --squash: If you do not use the --squash flag, you'll end up with a
        # full copy of the Rhymes history inside your RhymesSite repo. If you've
        # never seen what this looks like in the GitHub network graph, it's
        # worth doing just to get a clearer view of what's going on here. But in
        # general, it's pretty confusing for site developers who are not project
        # maintainers. Best to use --squash when you pull changes from external
        # projects like Rhymes into site repos like RhymesSite.
        git subtree pull --prefix=projects/rhymes https://github.com/username/rhymes master --message="Pulling in changes from external Rhymes project repo." --squash

1. Push `update-rhymes` to your fork of RhymesSite. If your changes are worth
   contributing, submit your updates as a pull request to DrupalLadder/RhymesSite.
