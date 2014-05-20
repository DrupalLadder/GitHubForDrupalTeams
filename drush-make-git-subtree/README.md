Drush Make & Git Subtree
========================

>> Prerequisites:
>> - Basic familiarity with Drush Make
>> - Git and Git Subtree installed

**This chapter introduces a workflow for managing the _rhymessite code base with
Drush Make and Git Subtree.**


- goal: explain what's going on under the hood with Build Manager automation
- if you have a basic understanding of what Drush Make and Git Subtree do,
  you should be able to follow along. if not, you may want to get that basic
h bmb --simulate
Select a config file to use:
 [0]  :  Cancel                  
 [1]  :  buildmanager.config.yml 
 [2]  :  buildmanager.local.yml
2
Loading configuration from: buildmanager.local.yml                                                [ok]
Using build file: build.make                                                                      [ok]
Preparing to add/update git subtrees.                                                             [ok]
Preparing to symlink rhymesdistro to path: docroot/profiles/rhymesdistro                          [ok]
Preparing to pull subtree: rhymesdistro                                                           [ok]
Preparing to merge rhymesdistro subtree to id: 6d7731c057 (tag 7.x-1.0-alpha1)                    [ok]
Preparing to symlink rhymes to path: docroot/sites/all/modules/rhymesdistro/rhymes                [ok]
Preparing to pull subtree: rhymes                                                                 [ok]
Preparing to merge rhymes subtree to id: 14a6bf0862 (tag 7.x-1.0)                                 [ok]
Executing: git subtree pull --prefix=projects/rhymesdistro  --squash  --message='rhymesdistro subtree rom home/bryanhirsch/projects/rhymesdistro' ~/projects/rhymesdistro master
Executing: git subtree merge --squash --prefix=projects/rhymesdistro  --message='rhymesdistro subtree rom home/bryanhirsch/projects/rhymesdistro' 6d7731c0574474364dbf60d353d019833f7c234e
Executing: git subtree pull --prefix=projects/rhymes  --squash  --message='rhymes subtree from home/bryanhirsch/projects/rhymes' ~/projects/rhymes master
Executing: git subtree merge --squash --prefix=projects/rhymes  --message='rhymes subtree from home/bryanhirsch/projects/rhymes' 14a6bf08622d40597bbc41118c6b56acaded4e2c
Executing: rm -rf docroot
Executing: /Applications/drush/drush.php make build.make docroot 
Executing: rm -rf docroot/profiles/rhymesdistro; cd docroot/profiles/; ln -s ../../projects/rhymesdistro rhymesdistro;
Executing: rm -rf docroot/sites/all/modules/rhymesdistro/rhymes; cd docroot/sites/all/modules/; ln -s ../../../../../projects/rhymes rhymes;
Executing: git checkout docroot/sites/default
Executing: rm docroot/.gitignore
Executing: git add --all; git commit -am 'Rebuild with drush buildmanager.' --no-verify; background somewhere else first
