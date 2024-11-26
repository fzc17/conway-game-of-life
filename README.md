# Some Important Notes

In order to maintain working efficiency, make sure to do these steps:
- Before doing something: do `git pull origin main` to keep ur local repository updated.
- After finsh working:
  1. `git add .` : add all modified and new files to the staging area. You can do `git add <filename1> <filename2>` if you want to add some files only.

  2. `git commit -m "short description"` : to create history, update local repository. The description should be clear and short enough to describe what's new. 

  3. `git push origin main` : to update remote repository (github). 

Some useful command for inspection:
- `git log --all --graph` : display log (history). Type `Q` to quit/exit.
<img src="https://media.discordapp.net/attachments/1292696584446021653/1310854486624964699/image.png?ex=6746bbe0&is=67456a60&hm=bcec16d880ee7bcf9a13141679e3e96745b104fa551d3f71ee1a35c9b4a0f29c&=&format=webp&quality=lossless&width=1920&height=889" alt="git log --all --graph" width=100%>
- `git status` : to check the status of local repository. It will show which files are modified, created, delated, if any.
  <img src="https://media.discordapp.net/attachments/1292696584446021653/1310854049935134750/image.png?ex=6746bb77&is=674569f7&hm=a8c43d1c06488c3301d4c9f163390ab7c9825b2b5aac616f13461bedc3cb7f20&=&format=webp&quality=lossless&width=1510&height=388" alt="git status" width=100%>