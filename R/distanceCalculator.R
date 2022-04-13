# Inicialmente se realiza para transformar de formato inchi a calcular distancia

distanceCalculator <- function(chName, chStr, calcMethod) {
  dfQuery <- data.frame(name = chName,
                        query = chStr)
  
  dfQuery$SMILES <- webchem::cs_convert(dfQuery$query, from = "inchi",
                                        to = "smiles")
  
  dfQuery$Mol <- rcdk::parse.smiles(dfQuery$SMILES)
  dfQuery$fingerprints <- sapply(dfQuery$Mol, 
                                 function(x) get.fingerprint(x, type = "maccs"))
  dfQuery$fingerprints_bin <- sapply(dfQuery$fingerprints, as.character)
  
  dfDistance <- data.frame(str1 = numeric(0),
                           str2 = numeric(0),
                           score = numeric(0))
  
  for(i in 1:(length(dfQuery$name)-1)){
    for(j in (i+1):length(dfQuery$name)){
      score <- fingerprint::distance(dfQuery$fingerprints[[i]], 
                                     dfQuery$fingerprints[[j]],
                                     method = calcMethod)
      dfDistance <- rbind(dfDistance, list(str1 = dfQuery$name[i],
                                           str2 = dfQuery$name[j],
                                           score = score))
    }
  }
  
  dfDistance$value <- ""
  dfDistance$value[dfDistance$score >= .55] <- "*"
  dfDistance$value[dfDistance$score >= .65] <- "**"
  dfDistance$value[dfDistance$score >= .75] <- "***"
  dfDistance$value[dfDistance$score >= .85] <- "****"
  
  return(list(dfQuery, dfDistance))
}