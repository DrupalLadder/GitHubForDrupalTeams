Setup: Download/Install/Register projects listed below
------------------------------------------------------

Example code, fork these on GitHub:

  - [RhymesSite repo (for site developer exercises)](https://github.com/DrupalLadder/RhymeSite)
  - [Rhymes Distro repo (for project maintainers and release masters)](https://github.com/DrupalLadder/rhymesdistro)
  - [Rhymes module repo (for project maintainers and release masters)](https://github.com/DrupalLadder/rhymes)

For basic local development you need:

  - *AMP for local Drupal install
  - [Drush](https://github.com/drush-ops/drush)
  - [Git](http://git-scm.com/)

Site developers collaborating on GitHub and Acquia Cloud need:

  - [GitHub user account](github.com)
  - [Free Acquia Cloud developer site](http://www.acquia.com/free)
  - [Drush aliases](https://docs.acquia.com/cloud/drush-aliases) (optional/recommended)

Project maintainers managing contrib projects inside a site repo need:

  - [Git subtree](https://github.com/git/git/tree/master/contrib/subtree) (Tip: Install on Mac via Homebrew)
  - [Drush Subtree](http://github.com/whitehouse/drushsubtree) (optional, only works with Drush master/7.x branch)

Release masters preparing production builds from versioned external projects need:

  - Drush versions:
    - [5.x patched here](per https://github.com/bryanhirsch/drush/tree/5.x) (patch pending [#836](https://github.com/drush-ops/drush/issues/836))
    - [6.x patched here](https://github.com/bryanhirsch/drush/tree/6.x) (patch pending [#834](https://github.com/drush-ops/drush/issues/834))
    - [7.x/master](https://github.com/drush-ops/drush/tree/master)
  - Some familiarity with [Drush Make](https://github.com/drush-ops/drush/blob/master/docs/make.txt)
  - [Build Manager](https://github.com/whitehouse/buildmanager) (optional/experimental, requires Drush 7.x)
