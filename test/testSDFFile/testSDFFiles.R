#--- Testing the treatment of SDF and Mol files in order to import the correctly
#--- in rcdk and ChemmineR and be able to make the properly conversions with
#--- OpenBabel software.

#--- The file CMP_original.sdf is a not properly written SDF file which contain 
#--- 24 molecules. The function sdfAdjust modifies the sdf/mol file in order to 
#--- make it readable to OpenBabel GUI, rcdk package and ChemmineR package.

#--- The function importSDF treats the file and imports it in a rcdk and a
#--- ChemmineR S4 objects in order to make the needed conversions.

#-------------------------------------------------------------------------------
#--- Loading and installing required packages
if (!require("devtools")) {
  install.packages("devtools")
  library(devtools)
}

install_github("gindeanikita/Chem", force = TRUE)
library(Chem)

library(rJava)
library(rcdklibs)
library(rcdk)

library(ChemmineOB)
library(ChemmineR)

#-------------------------------------------------------------------------------
#--- Importing a misswritten sdf File
dfCMP_mw_rcdk <- load.molecules("CMP_misswritten.sdf")

dfCMP_mw_CheR <- read.SDFset("CMP_misswritten.sdf")
dfCMP_mw_CheR_fps <- data.frame(Molecule = rep(1:24))

for (i in 1:length(dfCMP_mw_CheR)) {
  dfCMP_mw_CheR_fps$fps[i] <- fingerprintOB(dfCMP_mw_CheR[[i]], "FP2")
}

#---Note: it is not possible to load a misswritten SDF file with rcdk, or it is 
#---      loaded unproperly. In the case of ChemmineR package, SDF is loaded 
#---      into a Formal class SDFset object but it is not possible to operate 
#---      properly with it (e.g. fingerprintOB() function do not generate the 
#---      fongerprints for the SDFsets)

#-------------------------------------------------------------------------------
#--- Correcting the file and importing it afterwards
sdfAdjust(sdfFile = "CMP_misswritten.sdf", directory = getwd(), 
           saveNewFile = TRUE, newFileName = "CMP_corrected.sdf")
