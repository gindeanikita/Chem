hasCharacter <- function(input, nCharStr) {
  
  inputUCase <- toupper(input)
  varReturn <- numeric(0)
  
  for (pos in 1:nchar(nCharStr)) {
    varReturn <- c(varReturn, grep(substr(nCharStr, pos, pos), inputUCase))
  }
  
  varReturn <- sort(varReturn, decreasing = FALSE)
  varReturn <- unique(varReturn)
  
  return(varReturn)
}