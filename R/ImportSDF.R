ImportSDF <- function(files){
  x <- 1
  for(val in files) {
    importedData <- new("SDFset")
    importedData[[x]] <- ChemmineR::read.SDFset(val)
    x <- x + 1
  }
  return(importedData)
  print("Data imported")
}
