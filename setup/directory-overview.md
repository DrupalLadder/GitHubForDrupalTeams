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

Internals:

    RhymesSite/docroot/
      profiles/rhymesdisto            # Install profile
      sites/all/modules/rhymesdisto/  # Modules included by rhymesdistro
      sites/all/modules/custom/       # Custom, site-specific modules for www.rhymessite.com
      sites/all/modules/contrib/      # Site-specific contrib modules (see build.make)

Projects (modules, themes, etc.) and assets maintained by members of our site
developer team are included in docroot as symlinks:

    RhymesSite/docroot/
      sites/default                               -> ../../assets/sites/default
      profiles/rhymesdisto                        -> ../../projects/rhymesdistro 
      sites/all/modules/rhymesdisto/rhymes        -> ../../../../projects/rhymes
      sites/all/modules/custom/com_rhymessite_www -> ../../../../projects/com_rhymessite_www

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
