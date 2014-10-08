Site Developer: Development
---------------------------

Now do some development work to be contributed to RhymesSite. Try adding a new
rhyme to the rhymes module.

Make this realistic. Nobody writes a perfect first draft the first time they
make edits. All quality work is written, saved, reworked, and saved again many
times. Do this here too.

1. To keep things simple, our local master branch should always match the
   authoritative upstream drupalladder/master branch. We will do local
   development in "topic branches". Create a new branch for your development.

      # Branch off the tip of drupalladder/master.
      git checkout master
      git checkout -b add-new-rhyme

1. Add your own new rhyme to the rhymes module. (Find one or make one up. You
   decide.)

        # Modules included in Rhymes Distro live here.
        cd docroot/sites/all/modules/rhymesdistro/

        # We're adding a new rhyme to the rhymes module. Read the README to get
        # a quick overview of how this simple module works.
        cd rhymes
        vim README.md

        # Add your new rhyme here.
        cd rhymesfiles
        # Use your favorite text editor to add a new rhyme to the collection.
        vim my-rhyme.txt

        # To make this a realistic example, make some edits. Commit. Edit.
        # Commit again. Do this at least five times.

1. Push your changes to save your work on GitHub.

        # If you forgot the names of your remotes or where they push to, review
        # them like this.
        git remote
        git remote -v

        # Push to your fork to backup your work.
        git push myremote
