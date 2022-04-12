webSDF <- function(query, origin){
  if(origin == "PubChem"){
    w1 <- "https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/name"
    w2 <- "sdf"
    
    link <- paste(w1, query, w2, sep = "/")
    sdfExport <- read.SDFstr(readLines(link))
  }
  return(sdfExport)
}

#optimised only for one search per execution