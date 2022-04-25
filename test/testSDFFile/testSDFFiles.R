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
dfCMP_mw_rcdk <- load.molecules("")