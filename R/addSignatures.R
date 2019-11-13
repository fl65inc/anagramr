# getSignature()


# words <- c("silo", "Lois", "oils", "soil", "risen", "siren")
# signatures <- c("ilos", "ilos", "ilos", "ilos", "einrs", "einrs")

library(data.table)

addSignatures <- function (
  words
  ) {

  signatures <- as.matrix(lapply(words, createSignature))
  
  #words_df$signatures <- signatures
  #setDT(words_df)
  #words_df[, signatures := vapply(words, createSignature, c("a"))]
  
  return(signatures)
}
