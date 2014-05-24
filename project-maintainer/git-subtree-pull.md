Project Maintainer: Git subtree pull
------------------------------------

Scenario: You are the maintainer of the Rhymes module. You did some work on it
for some other project and pushed those changes up to your repo on GitHub or
drupal.org. Now you're doing devleopment on _rhymessite. You want to pull in the
latest changes to Rhymes module. 

Try this: 

        cd path/to/_rhymessite
        git subtree pull --squash --prefix=project/rhymes https://github.com/drupalladder/rhymes master
