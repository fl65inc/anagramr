# getSignature()

# Converts a vector of words into a set of unique entries
# which are the the sorted, lower-case letters that make up each word.
# Only returns the entries which are made up of more than 4 letters.

# words <- c("silo", "Lois", "oils", "soil", "risen", "siren")
# signatures <- c("ilos", "ilos", "ilos", "ilos", "einrs", "einrs")

addSignatures <- function ( 
  words_df
  ) {

  for (i in 1:nrow(words_df)) { # for every row
    word <- words_df[i, 'words']
    signature <- createSignature(word)
    words_df[i, "signature"] <- signature
    }
  
  return(words_df)
}
