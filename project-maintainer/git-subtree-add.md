Project Maintainer: Git subtree add
-----------------------------------

Add a subtree project to a site repo.

(Rhymes module, which is used for working examples, is already added as a
subtree project. Below is a generic overview for adding additional subtree
projects.)

1. If the project you're adding as a subtree started it's life as a custom
   module inside the _projects_ directory, you'll need to remove it, then re-add
   it.

        # Make sure all your work is saved.
        cd path/to/RhymesSite
        git subtree push --prefix=projects/mymodule https://github.com/username/mymodule master

        # Remove the old not-subtree copy of the project.
        git rm -r projects/mymodule
        git commit -um 'Removed mymodule. To be re-added as subtree project.'

1. Now (re)add mymodule as a subtree project.

        # (Re)Add mymodule as a subtree project
        git subtree add --prefix=projects/mymodule https://github.com/username/mymodule master
