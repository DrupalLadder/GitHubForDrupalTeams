Site Developer: Remotes
-----------------------

You cloned RhymesSite from the authoritative DrupalLadder repository. But you
do not have access to save your changes (push and pull) directly there. (And if
you do have access you still won't push changes directly to this repo because we
want all work peer reviewed before committing to the main project.) You want to
save your development work in your copy, or "fork", of the main project.

Saving changes to your own fork while following, or "tracking", changes in the
upstream DrupalLadder repo means working with multiple remotes. Set up your
remotes following the instructions below.

To avoid confusion, it's best to follow some consistent convention for naming
your remotes. The convention we follow below is to name remotes after their
corresponding github user name. For example:

- github.com/drupalladder/RhymesSite is named drupalladder
- github.com/bryanhirsch/RhymesSite would be named bryanhirsch
- github.com/myusername/RhymesSite would be named myusername

1. Review your remotes.

        cd path/to/RhymesSite

        # See a list of remotes.
        git remote

        # See where your remotes point (to push and pull to and from).
        git remote -v

1. Add a new remote pointing to your own fork of the RhymesSite site repository.

        # Add a new remote. Replace "myusername" with your own GitHub user name.
        git remote add myusername https://github.com/myusername/RhymesSite.git

        # Update your local repo with a copy of your new remote's git history.
        git fetch myusername

        # See what you just did.
        git remote -v

1. Rename origin to follow our naming convention.

        # Rename origin.
        git remote rename origin drupalladder

        # If you're following along with your own developer site on Acquia
        # Cloud, add a remote for that repo too.
        git remote add acquia <subscription-name>@<something>.git

        # Admire your work one more time.
        git remote -v

