ImportSDF <- function(origin, sdftype, files){
  importedData <- new("SDFset")
  x <- 1

  if(origin == "list"){
    if(sdftype == "set"){
      for(val in files){
        importedData[[x]] <- ChemmineR::read.SDFset(val)
        x <- x + 1
      }
    }
    if(sdftype == "str"){
      for(val in files){
        importedData[[x]] <- ChemmineR::read.SDFstr(val)
        x <- x + 1
      }
    }
    str1 <- "List imported with "
    str2 <- toString(x - 1)
    str3 <- " files."
    print(paste(str1, str2, str3))
  }

  if(origin == "directory"){
    SDFMolFiles <- list.files(pattern = c(".sdf", ".mol"), all.files = FALSE)
    if(sdftype == "set"){
      for(val in SDFMolFiles){
        importedData[[x]] <- ChemmineR::read.SDFset(val)
        x <- x + 1
      }
    }
    if(sdftype == "str"){
      for(val in SDFMolFiles){
        importedData[[x]] <- ChemmineR::read.SDFstr(val)
        x <- x + 1
      }
    }
    str1 <- "Directory imported with "
    str2 <- toString(x - 1)
    str3 <- " files."
    print(paste(str1, str2, str3))
  }

  return(importedData)
}
