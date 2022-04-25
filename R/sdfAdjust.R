sdfAdjust <- function(sdfFile, origin = "file", directory = getwd(),
                      saveNewFile = FALSE,
                      newFileName = paste(getwd(), "/", sdfFile,
                                          "_Adjusted.sdf", sep = "")) {
  #--- If directory not specified it reads from active working directory
  #--- By default saveNewFile is FALSE
  #--- By default newFileName is <sdFileName>_Treated.sdf
  #--- It is possible to import function return into a ChemmineR SDFset
  #--- Importing to rcdk it is possible through saving and importing file

  if (origin == "file") {
    sdfText <- readLines(paste(directory, sdfFile, sep = "/"), n = -1)
  } else {
    sdfText <- sdfFile
  }


  nPosM_END <- c(1, grep("\\$$$$", sdfText))
  nCharStr <- "QWERTYUIOPASDFGHJKLZXCVBNM0123456789"
  nNewMol <- numeric(0)

  for (M_END in 2:length(nPosM_END)) {
    nMolSeq <- sdfText[(nPosM_END[M_END - 1]+1):nPosM_END[M_END]]

    nPosCLB <- grep("V", nMolSeq)                                #Count Line Block
    nCLB <- c("", nMolSeq[nPosCLB[1]])

    nWordHB <- Chem::hasCharacter(nMolSeq, nCharStr)
    nPosWordHB <- nWordHB[1]
    if (nPosWordHB != 1) {
      nHB <- nMolSeq[(nPosWordHB - 1):nPosWordHB]
    } else {
      nHB <- c("", nMolSeq[nPosWordHB])
    }

    nNewMol <- c(nNewMol, nHB, nCLB, nMolSeq[(nPosCLB[1] + 1):length(nMolSeq)])
  }

  if (saveNewFile == TRUE) {
    write(nNewMol, file = paste(directory, newFileName, sep = "/"))
  }

  return(nNewMol)
}
