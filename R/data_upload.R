data_upload <- function(df, name){
  system("git init"),
  repo <- repository(".git/")
  system("git remote rm origin")
  system("git remote add origin https://github.com/anooshpoorian/SUSDeveloper.git")
  pull(repo)
  write_vc(df, file = name, t = repo, stage = TRUE)
  commit(repo, "datalist updated")
  system("git push -u origin master")
}
