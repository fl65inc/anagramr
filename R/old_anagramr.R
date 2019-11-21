# old_anagramr()

old_anagramr <- function () {

words_df <- read.csv("dict.txt", col.names = c("words"),header = FALSE,stringsAsFactors = FALSE, encoding = "UTF-8")

signatures <- character(nrow(words_df))
signatures <- lapply(words_df$words, function(x) {paste0(sort(unlist(strsplit(tolower(x), ""))), collapse = "")})
words_df$signatures <- signatures

return(words_df)

}
