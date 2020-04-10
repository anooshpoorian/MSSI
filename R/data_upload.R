data_upload_dataframe <- function(df, name){
  system("git init")
  repo <- repository(".git/")
  system("git remote rm origin")
  system("git remote add origin https://github.com/anooshpoorian/SUSDeveloper.git")
  #pull(repo)
  write_vc(df, file = name, t = repo, stage = TRUE)
  commit(repo, "datalist updated")
  system("git push -u origin master")
}

data_upload <- function(obj, name){
  system("git init")
  system("git remote rm origin")
  system("git remote add origin https://github.com/anooshpoorian/SUSDeveloper.git")
  filename <- paste(name, ".rds")
  saveRDS(obj, filename)
  addmsg <- paste("git add ", filename)
  system(addmsg)
  system("git commit -m \"data added\"")
  system("git push -u origin master")
}
