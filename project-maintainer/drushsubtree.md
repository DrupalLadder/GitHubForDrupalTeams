Project Maintainer: Drush Subtree
------------------------------------

Simplify working with git-subtree by using Drush Subtree to help manage subtree
projects in site repos.

1. Download [Drush Subtree](https://github.com/WhiteHouse/drushsubtree) and
   [Build Manager](https://github.com/WhiteHouse/buildmanager). Install these
   Drush extensions by placing them in you .drush folder.

1. Drush Subtree uses a Build Manager config file to keep track of which
   subtree projects should be pushed and pulled from where.
   [RhymesSite](https://github.com/DrupalLadder/RhymesSite) has a
   [buildmanager.config.yml](https://github.com/DrupalLadder/RhymesSite/blob/master/buildmanager.config.yml)
   file included in the toplevel of the repo. But since you don't actually have
   push access to the repos in that config file, go ahead and create another
   one.

        cd path/to/_rhymesite

        # Create a new config file named buildmanager.anything.yml.
        vim buildmanager.my-username.yml

        # Copy and paste the contents below into your yml config file, but
        # replace the URLs pointing to DrupalLadder's repos with URLs for your
        # own personal repos, which you have push access to.
        subtrees:
          rhymesdistro:
            path: docroot/profiles/rhymesdistro
            uri: 'https://github.com/DrupalLadder/rhymesdistro.git'
            branch: master
            message: 'rhymesdistro subtree from https://github.com/DrupalLadder/rhymesdistro.git'
          rhymes:
            path: docroot/sites/all/modules/rhymesdistro/rhymes
            uri: 'https://github.com/DrupalLadder/rhymes.git'
            branch: master
            message: 'rhymes subtree from https://github.com/DrupalLadder/rhymes.git'

        # Add your config to .gitignore so you don't accidentally commit it and
        # submit it to the RhymesSite project with a pull request.
        echo 'buildmanager.my-username.yml' >> .gitignore

1. Now you're ready to test drive Drush Subtree.

        # Push changes to rhymes like this.
        # If Drush Subtree detects more than one config file in
        # the repo, it will prompt you to select which one to use.
        drush subtree-push rhymes

        # Or push by following the interactive prompt.
        drush subtree-push

        # Pull the same way.
        drush subtree-pull rhymes

        # Drush subtree provides a wrapper around all core git-subtree commands
        # and some additional faux commands and utilities helpful for working
        # with subtrees. To see a full list of available commands do this.
        drush --filter=drushsubtree


