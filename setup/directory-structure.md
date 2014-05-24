Setup: Directory structure
--------------------------

Here's a quick overview of the _rhymessite directory structure. It's organized
this way to minimize friction for local development and future maintenance.
For more details on this approach, see [Release Master: Directory structure](../release-master/directory-structure.html).


Overview of from the toplevel of the _rhymessite repo:

    _rhymessite/
      assets/                  # Site-specific config files
      docroot/                 # Drupal code base
      projects/                # Custom and contrib projects we maintain
      build.make               # Site's build file
      buildmanager.config.yml  # Build Manager config

Here's a closer look at subdirectories...

Assets mirrors the directory structure of a Drupal code base. Any individual
files with site-specific customizations that are NOT part of a separate project
go here. This includes things like: settings.php, .htaccess, robots.txt, etc.

    _rhymessite/
      assets/                       
        sites/
          default/
            default.settings.php
            example.settings.local.php
            settings.php

Projects we maintain and site-specific assets are included in the code base as symlinks.

    docroot/
      profiles/rhymesdistro                -> ../../projects/rhymesdistro
      sites/default                        -> ../../assets/sites/default
      sites/all/modules/rhymesdisto        -> ../../../../projects/rhymesdistro 
      sites/all/modules/rhymesdisto/rhymes -> ../../../../projects/rhymes

Projects we maintain--custom modules and contrib modules--live in the projects
directory.

    projects/
      rhymes/
      rhymesdistro/
