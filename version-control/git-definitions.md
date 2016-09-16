# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

- "*Version control* allows us to view the entire history of revisions to one or more files, and *merge* revisions made by different people"... Version control is useful because it allows developers to experiment with code samples without worrying about destroying an original code source. It also is critical for pair programming. For example if the latest version of a project has errors, you can compare it to a previous version to see what is causing these errors. Or, you can ask for a pull request from another programmer to check an updated version before implementing it into the final project.

* What is a branch and why would you use one?

- a branch is a version of a .git repository. Branches are used to make temporary versions of a project, which can eventually be merged to the master branch. This allows you to edit a project without worrying about creating errors in the original code, and provides a history of project versions which you can revert to. Also, it allows you to work with multiple partners on the same project without causing confusion by merging branches written by different people to a single master branch (using online tools such as GitHub).

* What is a commit? What makes a good commit message?

- a commit is essentially a save point in git. After staging files or folders for a commit, you can issue the 'git commit -m "(message)"' command in terminal to save changes made to a branch. Commits have: 1. a unique ID 2. a message 3. an author and 4. a timestamp. Good commit messages explain specifically what changes were made. I.e. if you create a text file containing a list of elephant names, your commit file should read "Create text file containing list of elephant names" instead of just "Create text file". This eases collaboration and helps you remember what changes were made and when.

* What is a merge conflict?

- "A merge conflict usually occurs when your current branch and the branch you want to merge into the current branch have diverged. That is, you have commits in your current branch which are not in the other branch, and vice versa" - http://imagej.net/Git_Conflicts ... What I take from this is that merge conflicts typically occur when two different branches, originating from a single parent branch with similar commit history, edit the same line or multiple similar lines from the parent branch in different ways. As a result, .git is unable to merge both branches to the master without a user resolving this conflict.


