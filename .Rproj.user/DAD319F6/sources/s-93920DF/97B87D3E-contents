# getSignature()

# Converts a vector of words into a set of unique entries
# which are the the sorted, lower-case letters that make up each word.
# Only returns the entries which are made up of more than 4 letters.

# words <- c("silo", "Lois", "oils", "soil", "risen", "siren")
# signatures <- c("ilos", "ilos", "ilos", "ilos", "einrs", "einrs")

#word_df <- data.frame(words, signatures, stringsAsFactors = FALSE)

# 2. HOW DO WE GROUP BY SIGNATURE? (THIS KINDA WORKS)
# tapply(word_df$words, word_df$signatures, print)

# 3. HOW DO WE EXTRACT ONE SET OF ANAGRAMS?
# subset(word_df$words, word_df$signatures == "ilos")



addSignatures <- function ( 
  words_df
  ) {
  signatures <- character (nrow(words_df))
  signatures <- unlist(lapply(words_df$words, createSignature))
  words_df$signatures <- signatures
  
  return(words_df)
}
