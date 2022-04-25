webSDF <- function(query, origin = "PubChem", saveFile = FALSE){
  if(origin == "PubChem"){
    w1 <- "https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/name"
    w2 <- "sdf"

    link <- paste(w1, query, w2, sep = "/")
    sdfExport <- readLines(link)
  }
  sdfAdjusted <- sdfAdjust(sdfExport, origin = "txt",
                                 saveNewFile = saveFile,
                                 newFileName = paste(query, ".sdf", sep = ""))
  return(sdfAdjusted)
}
