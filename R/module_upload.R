module_upload <- function(name){
  commitmsg <- paste("added", name)
  system("git init")
  repo <- repository(".git/")
  system("git remote rm origin")
  system("git remote add origin https://github.com/anooshpoorian/SUSDeveloper.git")
  system("git pull origin")
  addmsg <- paste("git add ", name)
  system(addmsg)
  system("git commit -m \"data added\"")
  system("git push -u origin master")
}