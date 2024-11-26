# Some Important Notes

In order to maintain working efficiency, make sure to do these steps:
- Before doing something: do `git pull origin main` to keep ur local repository updated.
- After finsh working:
  1. `git add .` : add all modified and new files to the staging area. You can do `git add <filename1> <filename2>` if you want to add some files only. 
  2. `git commit -m "short description"` : to create history, update local repository. The description should be clear and short enough to describe what's new. 
  3. `git push origin main` : to update remote repository (github). 

Some useful command for inspection:
- `git log --all --graph` : display log (history)
- `git status` : to check the status of local repository. It will show which files are modified, created, delated, if any.