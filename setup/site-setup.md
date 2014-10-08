Setup: Site setup
-----------------

Clone an Acquia Cloud site repo and get it set up for local development like this:

1. Clone [RhymesSite](https://github.com/drupalladder/RhymesSite):

        git clone https://github.com/drupalladder/RhymesSite

1. Set up settings.local.php for local development.

        cd path/to/RhymesSite
        cd docroot/sites/default
        cp example.settings.local.php settings.local.php

        # If you have not created a mysql database for RhymesSite, do that now.
        # Enter your local database credentials in settings.local.php.
        vim settings.local.php

1. Now install using the "Rhymes Distro" install profile by going to
   /install.php in your browser, or install from the command line (using Drush)
   by running the (re)install script:

        ./reinstall.sh
