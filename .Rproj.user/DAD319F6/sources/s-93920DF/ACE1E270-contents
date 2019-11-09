# getAnagrams()

# gets the set of words that match a word's signature
#
# Takes in a datafram with 2 columns, "words" and "signatures" and a separate
# word that we want all the anagrams for.
#
# Returns all of the words in the dictionary which are an anagram for our input 
# word.


getAnagrams <- function(
  
  word = NULL
  
) {

  words_df <- loadData("dict.txt")
  words_df <- addSignatures(words_df)
  
  signature <- paste0( 
    sort(unlist( strsplit( tolower(word), ""))), 
    collapse = "")

  anagrams <- subset(words_df$words, words_df$signatures == signature)
  
  return(anagrams)
}
