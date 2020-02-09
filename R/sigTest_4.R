# 4th implementation of signature generation in R, using stringi::stri_sort

library(stringi)

sigTest_4 <- function () {
  word_df <- read.csv("dict.txt", 
                      col.names = c("word"),
                      header = FALSE,
                      stringsAsFactors = FALSE, 
                      encoding = "UTF-8")
  
  
  # previous attempt.  Slow.
  word_df$signature <- lapply(word_df$word,
                              function(x)
                              {paste0(stri_sort(unlist(strsplit(tolower(x), ""))), collapse = "")})
}
