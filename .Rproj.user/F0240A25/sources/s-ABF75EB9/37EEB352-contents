ImportSDF <- function(origin, files){
  if(origin == "list"){
    x <- 1
    for(val in files){
      importedData <- new("SDFset")
      importedData[[x]] <- ChemmineR::read.SDFset(val)
      x <- x + 1
    }
  }

  if(origin == "directory"){
    x <- 1
    SDFMolFiles <- list.files(pattern = c(".sdf", ".mol"), all.files = FALSE)
    for(val in SDFMolFiles){
      importedData <- new("SDFset")
      importedData[[x]] <- ChemmineR::read.SDFset(val)
      x <- x + 1
    }
  }
  print("Data imported")
  return(importedData)
}
