# RgetAnagrams.R

RgetAnagrams <- function(filename = NULL) {
  library(data.table)
  # Create a vector of all the words
  words <- fread(filename, 
                 col.names = c("word"),
                 header = FALSE,
                 stringsAsFactors = FALSE, 
                 encoding = "UTF-8")
  words <- words$word
  
  # Loop through the words, for each word,
  # generate a key and save word and key in key_list
  word_keys <- list()
  for ( i in 1:length(words) ) {
    word <- words[i]
    key <- sapply(word, function(x){paste0(sort(unlist(strsplit(tolower(x), ""))), collapse = "")})
    if ( key %in% names(word_keys) ) {
      word_keys[[key]] <- c(word_keys[[key]], word)
    } else {
      word_keys[[key]] <- word
    }
  }
  return(word_keys)
}
