setwd("C:\\Users\\Evgeniy\\Desktop\\study\\R\\lab-1")
df <- read.csv(file = "data\\lab1_e1.csv")

change_to_num <- function(col) {
  if (length(grep('[a-z]', col, ignore.case = T)) == 0)
    col <- as.double(gsub(" ", "", col))
  return(col)
}

fix_data <- function(df) {
  data.frame(lapply(df, change_to_num))
}

res <- fix_data(df)
print(res)