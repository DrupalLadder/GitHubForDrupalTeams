Site Developer: Site setup
--------------------------

Clone an [Acquia Cloud] site repo and get it set up for local development like
this:

1. Clone Rhyme Site ([_rhymessite](https://github.com/drupalladder/_rhymessite))

1. For the sake of this example, we will start by using an older version of the code
   base. Imagine 7.x-1.0 was just released when we started our work. (Later, as
   part of the [rebase](site-developer/rebase.html) exercise, we'll get up to
   date, when we walk through updating a Git branch when other changes have been
   merged before our own.)

      # Undo git history in our local copy back to version 1.0.
      git reset --hard 7.x-1.0

1. Set up settings.local.php for local development.

      cd path/to/_rhymessite
      cd docroot/sites/default
      cp example.settings.local.php settings.local.php

      # Open settings.local.php and enter your local database credentials.
      vim settings.local.php

1. Now install using the "Rhymes Distro" install profile by going to
   /install.php in your browser (e.g. rhymesite.local/install.php).
