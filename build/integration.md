Integration, QA, Release
========================

 - Integration branches for projects with +1 dependencies
   - prefix, with related issue number (d.o, github, jira, etc.)
   - suffix, something short and understandable 
 - Integration v. QA
   - Integration = parent dev branch
   - QA is done with tagged releases & test builds
 - QA
   - start with copy of production db, then dry-run release to determine success
     or failure
   - should be clear to QAer what passes/fails based on tests or update
     update instructions in UPDATE.txt
   - automate db updates with hook_update_N where possible
 - Release
   - Rebuild to produce same code base that passed QA.
   - Build should be composed of versioned releases for all external projects.
   - All patches managed by Drush make.
   - Includes a repeatable, tested release process (already run through QA)

