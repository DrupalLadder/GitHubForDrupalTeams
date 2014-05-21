Site Developer: Forking
-----------------------

Create a personal "fork" of the site repo on GitHub, for backing up development work and sharing it with others.

1. Fork [_rhymessite](https://github.com/drupalladder/_rhymessite)

        cd path/to/_rhymessite
        git remote add <my-username> https://github.com/<my-username>/_rhymessite.git

1. Add a rhyme.

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
        git push <my-username>
