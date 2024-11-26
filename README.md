# Some Important Notes

In order to maintain working efficiency, make sure to do these steps:
- Before doing something: do `git pull origin main` to keep ur local repository updated.
- After finsh working:
  1. `git add .` : add all modified and new files to the staging area. You can do `git add <filename1> <filename2>` if you want to add some files only. 
  <img src="https://media.discordapp.net/attachments/1292696584446021653/1310855205285269604/image.png?ex=6746bc8b&is=67456b0b&hm=c080dbea9363285bb384812bc7d112f6c53e26c210d2a21364b1d1d8c46c9493&=&format=webp&quality=lossless&width=1092&height=106" width=100%>
  2. `git commit -m "short description"` : to create history, update local repository. The description should be clear and short enough to describe what's new. 
  <img src="https://media.discordapp.net/attachments/1292696584446021653/1310855496390938694/image.png?ex=6746bcd0&is=67456b50&hm=bc4ff1bfe238c1ba5d4d8cb19900cf7304a768042f904ba5fbc857ff560c97b7&=&format=webp&quality=lossless&width=1545&height=157" width=100%>
  3. `git push origin main` : to update remote repository (github). 
  <img src="https://media.discordapp.net/attachments/1292696584446021653/1310855865917771816/image.png?ex=6746bd28&is=67456ba8&hm=ca0a08249acd367f7a341d1bed9e7a86f1555e64fa86ee61b4a21e2d5ead561c&=&format=webp&quality=lossless&width=1476&height=463" width=100%>

Some useful command for inspection:
- `git log --all --graph` : display log (history). Type `Q` to quit/exit.
<img src="https://media.discordapp.net/attachments/1292696584446021653/1310854486624964699/image.png?ex=6746bbe0&is=67456a60&hm=bcec16d880ee7bcf9a13141679e3e96745b104fa551d3f71ee1a35c9b4a0f29c&=&format=webp&quality=lossless&width=1920&height=889" alt="git log --all --graph" width=100%>
- `git status` : to check the status of local repository. It will show which files are modified, created, delated, if any.
  <img src="https://media.discordapp.net/attachments/1292696584446021653/1310854049935134750/image.png?ex=6746bb77&is=674569f7&hm=a8c43d1c06488c3301d4c9f163390ab7c9825b2b5aac616f13461bedc3cb7f20&=&format=webp&quality=lossless&width=1510&height=388" alt="git status" width=100%>