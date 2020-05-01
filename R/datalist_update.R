

upload_cancensus_list <- function(){
  library(cancensus)
  library(git2r)
  library(git2rdata)
  system("git init")
  repo <- repository(".git/")
  system("git remote rm origin")
  system("git remote add origin https://github.com/anooshpoorian/SUSDeveloper.git")
  system("git pull origin")
  data <- cancensus::list_census_datasets()
  pull(repo)
  write_vc(data, file = "datasets", root = repo, stage = TRUE)
  commit(repo, "datalist updated")
  system("git push -u origin master")
}

update_datalist <- function(name, description){
  library(git2r)
  library(git2rdata)
  system("git init")
  repo <- repository(".git/")
  system("git remote rm origin")
  system("git remote add origin https://github.com/anooshpoorian/SUSDeveloper.git")
  system("git pull origin")
  olddata <- read_vc(file = "datasets", root = repo)
  newdf<-rbind(olddata, data.frame(dataset=name, description=description))
  write_vc(newdf, file = "datasets", root = repo, stage = TRUE)
  commit(repo, "datalist updated")
  system("git push -u origin master")
}

