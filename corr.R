corr <- function(directory, threshold = 0){
  files <- list.files(directory,full.names=TRUE)
  cor_req <- vector(length = 332)
  for (i in 1:332){
    dat <- read.csv(files[i])
    x <- na.omit(dat)
    if (complete(directory,i)["nobs"] > threshold){
      cor_req[i] <- cor(x$sulfate,x$nitrate)
      } 
  }
  cor_req[cor_req != 0]
}