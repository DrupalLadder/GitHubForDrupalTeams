Site Developer: Forking
-----------------------

Create a personal "fork" of the site repo on GitHub. Do some work and save it
there.

1. Log into GitHub. Go to https://github.com/drupalladder/_rhymessite. Then
   creat your own copy by clicking "Fork".

1. You already have a copy of _rhymesite locally. You do not need a new copy.
   Just add a new remote that points to your fork.

        # Add a new remote.
        cd path/to/_rhymessite
        git remote add <my-user-name> https://github.com/<my-user-name>/_rhymessite.git

1. Working with multiple remotes can get confusing when remote names like
   "origin" mean different things in different copies of the same code base. To
   avoid confusion, give everything a more specific more meaningful name.

        # Review your remotes. "origin" points to DrupalLadder's copy of
        # _rhymesite.
        git remote -v

        # Rename origin.
        git remote rename origin drupalladder

        # If you're following along with your own developer site on Acquia
        # Cloud, add a remote for that repo too.
        git remote add acquia <subscription>@<something>.git

1. Update your fork to match your local copy. (Remember, we are pretending you
   forked and started doing development back when 7.x-1.0 had just been
   published.)

        # Confirm HEAD points at 7.x-1.0.
        git describe --tag

        # Force push to your fork to rewind history there, like you did locally.
        # Note: It's bad Git etiquette to rewrite published history. If
        # somebody else is following your work on GitHub and you change things
        # they already pulled in, that's a headache for people working with your
        # project. Only force push if you are certain (like you are now)
        # you're not going to trip anyone up.
        git push -f <my-user-name>

1. Now, let's add something new and exciting to the rhymes module. Add a new rhyme.

        # Create a new branch. You're branching off the master branch at
        # 7.x-1.0.
        git checkout -b my-new-rhyme

        # Modules included in Rhymes Distro live here.
        cd docroot/sites/all/modules/rhymesdistro/

        # This is the module we want to modify.
        cd rhymes
        # Look around. Read the README to understand what this little module
        # does and how it works.
        ls

        # Add your new rhyme here.
        cd rhymes
        # Use your favorite text editor to add a new rhyme to the collection.
        vim my-rhyme.txt

        # To make this a realistic example, be a little indecisive
        # Make a few different commits (e.g. tinker with formatting,
        # underline the title, save, undo, double underline re-save).

1. Push your changes to save your work

        # If you forgot the names of your remotes or where they push to, review
        # them like this.
        git remote
        git remote -v

        # Push to your fork to backup your work.
        git push <my-user-name>
