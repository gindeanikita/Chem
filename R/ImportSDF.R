ImportSDF <- function(files){
  x <- 1
  for(val in files) {
    data[x,] <- ChemmineR::read.SDFset(val)
    x <- x + 1
  }
  return(data)
  print("Data imported")
}
