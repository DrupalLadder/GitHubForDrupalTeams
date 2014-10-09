Project Maintainer: Git subtree push
------------------------------------

Push changes for an individual module out of your site repo into the module's
stand-alone project repo. 

1. Fork rhymes module from [here](https://github.com/drupalladder/rhymes). Now you
   have a rhymes module repo you can push to.

        cd path/to/RhymesSite
        git subtree pull --squash --prefix=projects/rhymes https://github.com/username/rhymes master

1. Add a new rhyme.

        # Go into the rhymes project. Note: There's a symlink in the modules
        # directory. You can also get here by doing this:
        #   cd docroot/sites/all/modules/rhymesdistro/rhymes/rhymes
        cd projects/rhymes/rhymes

        # Now add a new rhyme as a text file and commit it.
        vim <my-new-rhyme>.txt
        git add <my-new-rhyme>.txt
        git commit -m 'Added <my-new-rhyme>.txt'

1. Push your changes.

       # Git subtree commands must be executed from the top level of your repo.
       cd ../../..
       git subtree push --prefix=projects/rhymes https://github.com/username/rhymes master


### Tips

  - Whenever you create a new custom module, put it in RhymesSite/projects, then
    symlink into sites/all/modules. This makes it really easy to turn a custom
    project into a contrib project with a simple push like this: `git subtree push --prefix=projects/mymodule https://github.com/username/mymodule master`
  - When subtree push fails try pulling (see
    [git-subtree-pull](site-developer/git-subtree-pull.html)), then try pushing
    again.
  - If pushes or pulls are failing becasue of nasty conflicts, try this: 
    1. Make a local clone of the external repo you're trying to push to (e.g.
       rhymes)
    1. Don't push directly into the branch you want your changes merged into.
       Instead, create a new branch with your subtree push
       (e.g. `cd path/to/RhymesSite; git subtree push --prefix=project/rhymes /path/to/rhymes _merge-me`).
    1. Now resolve the conflicts (e.g. `git checkout master; git merge _merge-me;`).
    1. Once conflicts are resolved, go back to your local copy of RhymesSite and
       try pulling again. This should work. Now try pushing again.
  - Don't nest contrib projects inside contrib projects. (For example: If you
    maintain the rhymesdistro install profile _and_ you maintain the rhymes
    module, do _not_ store rhymes module inside
    docroot/profiles/rhymesdistro/modules.
    Otherwise all your subtree pushes to rhymesdistro will include all of your
    rhymes module commits.)
