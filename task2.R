setwd("C:\\Users\\Evgeniy\\Desktop\\study\\R\\lab-1")
load("data\\lab1_e2.Rdata")

get_id <- function(data)  {
  merged_table <- do.call(rbind, data)
  temp <- aggregate(merged_table$temp, by=list(merged_table$id), FUN=function(x) c(mn = mean(x), n = length(x)))
  temp <- temp[which(temp$x[,2]==7),]
  return (data.frame(id = temp$Group.1, mean_temp = temp$x[,1]))
}

res <- get_id(all_data)
print(res)
