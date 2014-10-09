Project Maintainer
==================

### _User story_: As a project maintainer I want to work on my projects inside site repositories, then push changes out of my site repo up to drupal.org (or GitHub, or wherever), and to pull work from drupal.org (or GitHub or wherever) into my site repo.

### Caveat One: Who this chapter is for

This chapter is for you any of the following things are true:

  - You or site developers on your team prefer working in a single repo (using
    Drush Make to tie all the pieces together is either confusing or burdensome)
  - You use (or want to use) git-subtree to manage contrib projects inside your
    site repo
  - You want an alternative to using Git submodules or Git's subtree merge
    strategy

### Caveat Two: Who this chapter is _not_ for

Some people like working in lots of individual project repos, then tying it all
together with Drush Make. If you and your team members know and love this
old-school Aegir-y Drush Make workflow, this chapter is not for you. You
probably don't need the git-subtree solutions described here.

### Caveat Three: What you will and won't find here

In this chapter you will find examples of git-subtree workflows for low-friction
Drupal project maintenance. But it is not a comprehensive crash course in
git-subtree. It assumes you know the basics and have some practical experience
with git-subtree outside of this lesson.
