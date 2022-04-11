#-------------------------------------------------------------------------------
#---Needed packages are imported------------------------------------------------
#-------------------------------------------------------------------------------

#---BioConductor packages-------------------------------------------------------
if(!require("BiocManager")) {
  install.packages("BiocManager")
  library("BiocManager")
}
if(!require("ChemmineR")) {
  BiocManager::install("ChemmineR")
  library("ChemmineR")
}
if(!require("ChemmineOB")) {
  BiocManager::install("ChemmineOB")
  library("ChemmineOB")
}

#---CRAN packages---------------------------------------------------------------
if(!require("webchem")) {
  install.packages("webchem")
  library("webchem")
}
if(!require("tidyverse")) {
  install.packages("tidyverse")
  library("tidyverse")
}

#-------------------------------------------------------------------------------
#---Functions-------------------------------------------------------------------
#-------------------------------------------------------------------------------
TransformChemData <- function(input, input_format, output_format) {
  if input_format = "sdf" or "mol" {
    result <- webchem::cs_convert(input, "mol", output_format)
  }
  if output_format = "sdf" OR "mol" {
    if input_format = "smiles"{
      result <- ChemmineR::smiles2sdf(input)
    }
    if input_format = "InChIKey"{
      result <- ChemmineR::pubchemInchikey2sdf(input)
    }
    if input_format = "InChI"{
      result <- ChemmineR::pubchemInchikey2sdf(
        webchem::cs_convert(input, from = "InChI", to = "InChIKey"))
    }
  }
  return(result)
}
