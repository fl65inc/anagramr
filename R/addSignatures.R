# getSignature()

# Converts a vector of words into a set of unique entries
# which are the the sorted, lower-case letters that make up each word.
# Only returns the entries which are made up of more than 4 letters.

# words <- c("silo", "Lois", "oils", "soil", "risen", "siren")
# signatures <- c("ilos", "ilos", "ilos", "ilos", "einrs", "einrs")

addSignatures <- function ( 
  words_df
  ) {

  signatures <- sapply(words_df$words, createSignature)
  words_df$signatures <- signatures
  
  return(words_df)
}
