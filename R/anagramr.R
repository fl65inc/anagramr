# anagramr.R

anagramr <- function () {
words_df <- read.csv("dict.txt", col.names = c("words"),header = FALSE,stringsAsFactors = FALSE, encoding = "UTF-8")
    
words <- words_df$words

signatures <- character(nrow(words_df))
signatures <- strsplit(tolower(gsub("[[:punct:]]", "", words)), "")

#sorted_signatures <- lapply(signatures, function(x) {paste0(sort(unlist(x)), collapse = "")} )
sorted_signatures <- lapply(signatures, function(x) {paste0(x[order(x)], collapse = "")} )

words_df$signatures <- sorted_signatures

return(words_df)
}