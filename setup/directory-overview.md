Setup: Directory structure
--------------------------

RhymesSite directories are organized this way to minimize friction across diverse
project types, workflows, and developer stories. This is all you need to know to work inside a single site
repo. (More details about fancy stuff [here](../release-master/directory-structure.html).)

Overview of toplevel directories:

    RhymesSite/
      assets/                  # Site-specific config files
      docroot/                 # Drupal code base
      projects/                # Custom and contrib projects we maintain
      build.make               # Site build file
      rebuild.sh               # Rebuilds docroot
      reinstall.sh             # Reinstalls site via Drush


Projects (modules, themes, etc.) and assets maintained by members of our site developer team are added to docroot as symlinks:

    RhymesSite/docroot/
      profiles/rhymesdistro                -> ../../projects/rhymesdistro
      sites/default                        -> ../../assets/sites/default
      sites/all/modules/rhymesdisto        -> ../../../../projects/rhymesdistro 
      sites/all/modules/rhymesdisto/rhymes -> ../../../../projects/rhymes


Files with site-specific customizations that are NOT part of a separate project go in the assets directory. Directory structure here mirrors docroot:

    RhymesSite/assets/                       
        sites/
          default/
            default.settings.php
            example.settings.local.php
            settings.php

Projects we maintain--custom modules and contrib modules--live in the projects directory:

    RhymesSite/projects/
      rhymes/
      rhymesdistro/
