library(git2rdata)
library(git2r)

display_dataset_list <- function(){
  
  system("git init")
  system("git remote rm origin")
  system("git remote add origin https://github.com/anooshpoorian/SUSDeveloper.git")
  system("git pull -u origin master")
  read.table(file = 'datasets.tsv', sep = '\t', header = TRUE)
}