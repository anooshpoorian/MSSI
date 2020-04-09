library(cancensus)
library(git2rdata)
library(git2r)


data_to_upload <- function(){
  system("git init")
  repo <- repository(".git/")
  data <- cancensus::list_census_datasets()
  pull(repo)
  write_vc(data, file = "datasets", root = repo, stage = TRUE)
  commit(repo, "data added")
  system("git remote rm origin")
  system("git remote add origin https://github.com/anooshpoorian/SUSDeveloper.git")
  system("git push -u origin master")
}

