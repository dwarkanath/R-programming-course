complete <- function(directory, id =1:332){
  files <- list.files(directory,full.names=TRUE)
  req <- data.frame(id)
  nobs <- data.frame()
  for (i in id){
    x <- read.csv(files[i])
    y <- nrow(x)-max(sum(is.na(x[,2])),sum(is.na(x[,3])))
    nobs <- rbind(nobs,y)
  }
  req <- cbind(req,nobs)
  names(req) <- c("id","nobs")
  req
}
  