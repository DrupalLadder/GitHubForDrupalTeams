Project Maintainer: Setup
==================

Pushing changes to the rhymes module from RhymesSite into an external rhymes
repo really only practical if you're a module maintainer or contributor working
on rhymes module. If you do not have push access to
github.com/drupalladder/rhymes.git, we need to do a little setup to simulate the
module maintainer workflow here.

1. Make sure your _rhymesite copy of rhymes is up to date with the tip of dev...

CONTINUE HERE

- fork rhymes
- fork rhymesdistro
- update rhymedistro/drupal-org.make to point to your version of rhymes
- update rhymedistro/build.make to point to your version of rhymesdistro
