# getSignature()


# words <- c("silo", "Lois", "oils", "soil", "risen", "siren")
# signatures <- c("ilos", "ilos", "ilos", "ilos", "einrs", "einrs")

library(data.table)

addSignatures <- function (
  words
  ) {
  words <- words_df$words
  signatures <- vector(mode = "list", length(words)) # empty vector
  signatures <- sapply(words, createSignature)
  words_df$signatures <- signatures
  
  return(signatures)
}
