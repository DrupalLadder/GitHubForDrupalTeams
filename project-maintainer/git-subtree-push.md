Project Maintainer: Git subtree push
------------------------------------

Scenario: While doing devleopment on RhymesSite, you make updates to rhymes
module. Here you will push those changes out of your site repo into your module
repo.

1. Fork rhymes module [here](https://github.com/drupalladder/rhymes). Now you
   have a rhymes module repo you can push to.

1. If you are not up to date with the latest development on rhymes, pull.

        cd path/to/RhymesSite
        git subtree pull --squash --prefix=projects/rhymes https://github.com/<username>/rhymes master

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
       git subtree push --prefix=projects/rhymes https://github.com/<username>/rhymes master


